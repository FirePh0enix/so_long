/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 00:50:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SO_LONG_H
# define SO_LONG_H

# include <mlx.h>
# include <mlx_int.h>
# include <libft.h>
# include <stdbool.h>
# include <stdlib.h>
# include "math/vec2.h"
# include "gui.h"

// 720x480
// 1440x960
# define WIN_WIDTH 1440
# define WIN_HEIGHT 960

typedef struct s_game			t_game;
typedef struct s_entity			t_entity;
typedef struct s_render_graph	t_graph;
typedef struct s_map			t_map;

typedef struct s_sprite
{
	t_img	*img;
	int		width;
	int		height;
}	t_sprite;

t_sprite	*sprite(t_game *game, char *filename);

// ----------------------------------------------
// EDIT MODE

typedef enum editor_item
{
	ITEM_EMPTY,
	ITEM_SOLID,
	ITEM_DOOR,
	ITEM_COLLECT,
	ITEM_PLAYER,
	ITEM_ENEMY
}	t_editor_item;

typedef struct s_editor
{
	t_editor_item	item;
}	t_editor;

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
	t_graph			*graph;
	t_entity		*player;
	t_map			*map;
	t_editor		editor;

	t_gamemenu		*menu;
	bool			menu_opened;

	t_vec2			start_pos;
	int				collectibles_count;
	int				collectibles;

	t_sprite		*ground;
	t_sprite		*solid;
	t_sprite		*gem;
	t_sprite		*door;
	t_sprite		*player_s;
	t_sprite		**player_walk;
	t_sprite		**player_idle;

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

	t_sprite		*money;
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
}	t_game;

# define UPDATE_INTERVAL 16

suseconds_t	getms(void);
t_entity	*add_entity(t_entity ***entities, t_entity *entity);
void		remove_entity(t_game *game, int x, int y);

void		game_deinit(t_game *game);
bool		is_key_pressed(t_game *game, int keycode);

int			update_hook(t_game *game);
int			key_pressed_hook(int keycode, t_game *game);
int			key_released_hook(int keycode, t_game *game);
int			close_hook(t_game *game);
int			mouse_hook(unsigned int btn, int x, int y, t_game *game);

// ----------------------------------------------
// RENDER

typedef struct s_draw
{
	int		scale;
	bool	flipped;
}	t_draw;

void		draw_sprite(t_game *game, t_sprite *sp, t_vec2 pos, t_draw draw);
void		clear_screen(t_game *game, int color);

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
}	t_map;

t_map		*map_load(t_game *game, char *filename, bool bypass);
void		map_deinit(t_map *map);
void		map_add_to_graph(t_map *map, t_game *game, t_graph *graph);
void		map_save(t_map *map, t_game *game, char *filename);

t_sprite	*get_ground_tile(t_game *game, t_map *map, int x, int y);
t_sprite	*get_undertile(t_game *game, t_map *map, int x, int y);

int			line_width_and_check(char *str);
int			line_count(char *str);
bool		check_borders(t_map *map);

#endif
