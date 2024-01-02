/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 15:12:48 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SO_LONG_H
# define SO_LONG_H

# include <mlx.h>
# include <mlx_int.h>
# include <libft.h>
# include <stdbool.h>
# include "math/vec2.h"

typedef struct s_game	t_game;
typedef struct s_entity	t_entity;
typedef struct s_render_graph t_render_graph;

typedef struct s_sprite
{
	t_img	*img;
	int		width;
	int		height;
}	t_sprite;

t_sprite	*sprite(t_game *game, char *filename);

typedef struct s_game
{
	void			*mlx;
	void			*win;
	bool			*keys;
	t_img			*canvas;
	t_entity		**entities;
	t_sprite		*gem;
	long			last_update;
	t_render_graph	*graph;
}	t_game;

# define UPDATE_INTERVAL 16

void	game_deinit(t_game *game);
bool	is_key_pressed(t_game *game, int keycode);

typedef struct s_draw
{
	int	scale;
}	t_draw;

void	draw_sprite(t_game *game, t_sprite *sprite, t_vec2 pos, t_draw draw);
void	clear_screen(t_game *game, int color);

#endif
