/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/06 10:54:00 by ledelbec         ###   ########.fr       */
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

t_img		*sprite(t_game *game, char *filename);

// ----------------------------------------------
// EDIT MODE

int			edit_update_hook(t_game *game);
int			edit_mouse_hook(unsigned int button, int x, int y, t_game *game);

// ----------------------------------------------
// GAME

typedef struct s_game
{
	void			*mlx;
	void			*win;
	bool			*keys;
	t_img			*canvas;
	t_entity		**entities;
	long			last_update;
	t_renderer		*rdr;
	t_entity		*player;
	t_map			*map;
	char			*filename;

	t_gamemenu		*menu;
	bool			menu_opened;

	t_editor		editor;
	bool			editor_mode;

	t_vec2			start_pos;
	int				collectibles_count;
	int				collectibles;

	t_anim			*foam_anim;

	t_img		*solid;
	t_img		*gem;
	t_img		*door;

	t_img		**goblin_walk;
	t_img		**goblin_idle;
	t_img		**goblin_atk_side;

	t_img		**warrior_walk;
	t_img		**warrior_idle;
	t_img		**warrior_atk_side;

	t_img		*ground_mid;
	t_img		*ground_top;
	t_img		*ground_topleft;
	t_img		*ground_topright;
	t_img		*ground_left;
	t_img		*ground_right;
	t_img		*ground_bot;
	t_img		*ground_botleft;
	t_img		*ground_botright;
	t_img		*ground_toplr;
	t_img		*ground_lr;
	t_img		*ground_botlr;
	t_img		*ground_leftbt;
	t_img		*ground_bt;
	t_img		*ground_rightbt;
	t_img		*ground_all;

	t_img		**foam;

	t_img		**money_spawn;

	t_img		*btn_left;
	t_img		*btn_mid;
	t_img		*btn_right;
	t_img		*btn_left2;
	t_img		*btn_mid2;
	t_img		*btn_right2;
	t_img		*hl_tl;
	t_img		*hl_tr;
	t_img		*hl_bl;
	t_img		*hl_br;

	t_img		*bnr_topleft;
	t_img		*bnr_top;
	t_img		*bnr_topright;
	t_img		*bnr_left;
	t_img		*bnr_mid;
	t_img		*bnr_right;
	t_img		*bnr_botleft;
	t_img		*bnr_bot;
	t_img		*bnr_botright;

	t_img		*plus;
}	t_game;

# define UPDATE_INTERVAL 16

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
t_img		*get_undertile(t_game *game, t_map *map, int x, int y);

int			line_width_and_check(char *str);
int			line_count(char *str);
bool		check_borders(t_map *map);

#endif
