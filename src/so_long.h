/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:52:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 01:09:23 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SO_LONG_H
# define SO_LONG_H

# include <mlx.h>
# include <mlx_int.h>
# include <libft.h>
# include <stdbool.h>

typedef struct s_game	t_game;

typedef struct s_sprite
{
	void	*img;
	int		x;
	int		y;
}	t_sprite;

void	sprite(t_game *game, char *filename);

typedef struct s_game
{
	void		*mlx;
	void		*win;
	bool		*keys;
	t_img		*canvas;
	t_sprite	*gem;
}	t_game;

void	game_deinit(t_game *game);
bool	is_key_pressed(t_game *game, int keycode);

#endif
