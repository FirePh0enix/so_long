/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 16:59:14 by ledelbec         ###   ########.fr       */
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

# define WIN_WIDTH 720
# define WIN_HEIGHT 480

typedef struct s_game	t_game;
typedef struct s_entity	t_entity;
typedef struct s_render_graph t_render_graph;
typedef struct s_map t_map;

typedef struct s_sprite
{
	t_img	*img;
	int		width;
	int		height;
}	t_sprite;

t_sprite	*sprite(t_game *game, char *filename);

// ----------------------------------------------
// EDIT MODE

typedef enum
{
	ITEM_EMPTY,
	ITEM_SOLID,
	ITEM_DOOR,
	ITEM_COLLECT,
	ITEM_PLAYER,
}	t_editor_item;

typedef struct s_editor
{
	t_editor_item	item;
}	t_editor;

int	edit_update_hook(t_game *game);
int	edit_mouse_hook(unsigned int button, int x, int y, t_game *game);

typedef struct s_game
{
	void			*mlx;
	void			*win;
	bool			*keys;
	t_img			*canvas;
	t_entity		**entities;
	long			last_update;
	t_render_graph	*graph;
	t_entity		*player;
	t_map			*map;
	t_editor		editor;

	t_vec2			start_pos;
	int				collectibles_count;
	int				collectibles;

	t_sprite		*ground;
	t_sprite		*solid;
	t_sprite		*gem;
	t_sprite		*door;
}	t_game;

# define UPDATE_INTERVAL 16

suseconds_t	getms(void);
void		game_deinit(t_game *game);
bool		is_key_pressed(t_game *game, int keycode);

// ----------------------------------------------
// RENDER

typedef struct s_draw
{
	int	scale;
}	t_draw;

void		draw_sprite(t_game *game, t_sprite *sprite, t_vec2 pos, t_draw draw);
void		clear_screen(t_game *game, int color);

// ----------------------------------------------
// MAP

# define SCALE       3
# define TILE_SIZE   16
# define SCALED_SIZE 48

typedef enum
{
	TILE_EMPTY,
	TILE_SOLID,
	TILE_DOOR,
	TILE_COLLECT,
	TILE_PLAYER
}	t_tile;

typedef struct s_map
{
	t_tile	*data;
	int		width;
	int		height;
}	t_map;

t_map	*map_load(t_game *game, char *filename, bool bypass);
void	map_deinit(t_map *map);
void	map_add_to_graph(t_map *map, t_game *game, t_render_graph *graph);
void	map_save(t_map *map, t_game *game, char *filename);

#endif
