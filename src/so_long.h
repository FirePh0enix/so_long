/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 15:49:35 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SO_LONG_H
# define SO_LONG_H

# include <mlx.h>
# include <mlx_int.h>
# include <libft.h>
# include <stdbool.h>
# include "math/vec2.h"
# include "gui.h"
# include "edit/edit.h"

// 720x480
// 1440x960
# define WIN_WIDTH 1440
# define WIN_HEIGHT 960

typedef struct s_game			t_game;
typedef struct s_entity			t_entity;
typedef struct s_map			t_map;
typedef struct s_anim			t_anim;
typedef struct s_renderer		t_renderer;
typedef struct s_font			t_font;

t_img		*sprite(t_game *game, char *filename);

// ----------------------------------------------
// EDIT MODE

int			edit_update_hook(t_game *game);
int			edit_mouse_hook(unsigned int button, int x, int y, t_game *game);

// ----------------------------------------------
// GAME

enum
{
	SP_WATER,
	SP_DOOR,
	SP_GROUND_M,
	SP_GROUND_T,
	SP_GROUND_TL,
	SP_GROUND_TR,
	SP_GROUND_L,
	SP_GROUND_R,
	SP_GROUND_B,
	SP_GROUND_BL,
	SP_GROUND_BR,
	SP_GROUND_TLR,
	SP_GROUND_LR,
	SP_GROUND_BLR,
	SP_GROUND_LBT,
	SP_GROUND_BT,
	SP_GROUND_RBT,
	SP_GROUND_ALL,
	SP_BTN_LEFT,
	SP_BTN_MID,
	SP_BTN_RIGHT,
	SP_HL_TL,
	SP_HL_TR,
	SP_HL_BL,
	SP_HL_BR,
	SP_BNR_TL,
	SP_BNR_T,
	SP_BNR_TR,
	SP_BNR_L,
	SP_BNR_M,
	SP_BNR_R,
	SP_BNR_BL,
	SP_BNR_B,
	SP_BNR_BR,
	SP_BNRV_TL,
	SP_BNRV_T,
	SP_BNRV_TR,
	SP_BNRV_L,
	SP_BNRV_M,
	SP_BNRV_R,
	SP_BNRV_BL,
	SP_BNRV_B,
	SP_BNRV_BR,
	SP_BNRCL_TL,
	SP_BNRCL_T,
	SP_BNRCL_TR,
	SP_BNRCL_L,
	SP_BNRCL_M,
	SP_BNRCL_R,
	SP_BNRCL_BL,
	SP_BNRCL_B,
	SP_BNRCL_BR,
	SP_BNRCR_TL,
	SP_BNRCR_T,
	SP_BNRCR_TR,
	SP_BNRCR_L,
	SP_BNRCR_M,
	SP_BNRCR_R,
	SP_BNRCR_BL,
	SP_BNRCR_B,
	SP_BNRCR_BR,
	SP_RBN_LEFT,
	SP_RBN_MID,
	SP_RBN_RIGHT,
	SP_PLUS,
	SP_MAX,
};

typedef struct s_game
{
	void		*mlx;
	void		*win;
	bool		*keys;
	t_img		*canvas;
	t_entity	**entities;
	long		last_update;
	t_renderer	*rdr;
	t_entity	*player;
	t_map		*map;
	char		*filename;

	t_gamemenu	*menu;
	bool		menu_opened;

	t_editor	editor;
	bool		editor_mode;

	t_vec2		start_pos;
	int			collectibles_count;
	int			collectibles;

	t_font		*font;
	t_font		*small_font;

	t_anim		*foam_anim;
	t_img		*gem;
	t_img		**goblin_walk;
	t_img		**goblin_idle;
	t_img		**goblin_atk_side;
	t_img		**warrior_walk;
	t_img		**warrior_idle;
	t_img		**warrior_atk_side;
	t_img		**money_spawn;
	t_img		**foam;
	t_img		*sprites[SP_MAX];
}	t_game;

# define UPDATE_INTERVAL 16

t_img		**sp(t_game *g);

void		load_sprites(t_game *game);
suseconds_t	getms(void);
t_entity	*add_entity(t_entity ***entities, t_entity *entity);
void		remove_entity(t_game *game, int x, int y);

void		game_free(t_game *game);
bool		is_key_pressed(t_game *game, int keycode);

int			update_hook(t_game *game);
int			key_pressed_hook(int keycode, t_game *game);
int			key_released_hook(int keycode, t_game *game);
int			close_hook(t_game *game);
int			mouse_hook(unsigned int btn, int x, int y, t_game *game);

void		draw_hud(t_game *game);

// ----------------------------------------------
// MAP

# define SCALE       1
# define TILE_SIZE   64
# define SCALED_SIZE 64

typedef enum tile
{
	TILE_EMPTY,
	TILE_SOLID,
	TILE_DOOR,
	TILE_COLLECT,
	TILE_PLAYER,
	TILE_ENEMY
}	t_tile;

typedef struct s_map
{
	t_tile	*data;
	int		width;
	int		height;
	char	*string;
}	t_map;

t_map		*map_load(t_game *game, char *filename, bool bypass);
void		map_free(t_map *map);
void		map_render(t_map *map, t_game *game, t_renderer *rdr);
void		map_save(t_map *map, t_game *game, char *filename);
void		map_reload(t_game *game, t_map *map);

t_img		*get_ground_tile(t_game *game, t_map *map, int x, int y);

int			line_width_and_check(char *str);
int			line_count(char *str);
bool		check_borders(t_map *map);

#endif
