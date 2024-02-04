/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 18:00:12 by ledelbec         ###   ########.fr       */
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

typedef struct s_sprite
{
	t_img	*img;
	int		width;
	int		height;
}	t_sprite;

t_sprite	*sprite(t_game *game, char *filename);

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

	t_sprite		*solid;
	t_sprite		*gem;
	t_sprite		*door;

	t_sprite		**goblin_walk;
	t_sprite		**goblin_idle;
	t_sprite		**goblin_atk_side;

	t_sprite		**warrior_walk;
	t_sprite		**warrior_idle;
	t_sprite		**warrior_atk_side;

	t_sprite		*ground_mid;
	t_sprite		*ground_top;
	t_sprite		*ground_topleft;
	t_sprite		*ground_topright;
	t_sprite		*ground_left;
	t_sprite		*ground_right;
	t_sprite		*ground_bot;
	t_sprite		*ground_botleft;
	t_sprite		*ground_botright;
	t_sprite		*ground_toplr;
	t_sprite		*ground_lr;
	t_sprite		*ground_botlr;
	t_sprite		*ground_leftbt;
	t_sprite		*ground_bt;
	t_sprite		*ground_rightbt;
	t_sprite		*ground_all;

	t_sprite		**foam;

	t_sprite		**money_spawn;

	t_sprite		*btn_left;
	t_sprite		*btn_mid;
	t_sprite		*btn_right;
	t_sprite		*btn_left2;
	t_sprite		*btn_mid2;
	t_sprite		*btn_right2;
	t_sprite		*hl_tl;
	t_sprite		*hl_tr;
	t_sprite		*hl_bl;
	t_sprite		*hl_br;

	t_sprite		*bnr_topleft;
	t_sprite		*bnr_top;
	t_sprite		*bnr_topright;
	t_sprite		*bnr_left;
	t_sprite		*bnr_mid;
	t_sprite		*bnr_right;
	t_sprite		*bnr_botleft;
	t_sprite		*bnr_bot;
	t_sprite		*bnr_botright;

	t_sprite		*plus;
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

t_sprite	*get_ground_tile(t_game *game, t_map *map, int x, int y);
t_sprite	*get_undertile(t_game *game, t_map *map, int x, int y);

int			line_width_and_check(char *str);
int			line_count(char *str);
bool		check_borders(t_map *map);

#endif
