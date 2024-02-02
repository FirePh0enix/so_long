/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:45:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/02 14:27:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "mlx_int.h"
#include "so_long.h"
#include "math/vec2.h"
#include <stdio.h>

static inline int	_get_pixel_color(t_img *image, int x, int y)
{
	const char	*addr = image->data;
	const int	bits_per_pixel = image->bpp;
	const int	size_line = image->size_line;
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
	const int	color = *((int *)(addr + pixel_offset));

	return (color);
}

static inline void	_set_pixel_color(t_img *image, int x, int y, int color)
{
	const char	*addr = image->data;
	const int	bits_per_pixel = image->bpp;
	const int	size_line = image->size_line;
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));

	*((int *)(addr + pixel_offset)) = color;
}

static unsigned int	_get_pixel(t_sprite *sp, int x, int y, t_draw draw)
{
	const int		width = sp->width * draw.scale;
	if (draw.flipped)
		return (_get_pixel_color(sp->img, x, y));
	else
		return (_get_pixel_color(sp->img, width - x / draw.scale, y / draw.scale));
}

void	draw_sprite(t_game *game, t_sprite *sp, t_vec2 pos, t_draw draw)
{
	const int		width = sp->width * draw.scale;
	const int		height = sp->height * draw.scale;
	int				x;
	int				y;
	unsigned int	color;

	x = 0;
	while (x < width)
	{
		y = 0;
		while (y < height)
		{
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
				|| pos.y + y < 0 || pos.y + y >= game->canvas->height)
			{
				y++;
				continue ;
			}
			color = _get_pixel(sp, x, y, draw);
			if (color != 0xff000000)
				_set_pixel_color(game->canvas, pos.x + x, pos.y + y, color);
			y++;
		}
		x++;
	}
}

void	clear_screen(t_game *game, int color)
{
	int	x;
	int	y;

	x = 0;
	while (x < game->canvas->width)
	{
		y = 0;
		while (y < game->canvas->height)
		{
			_set_pixel_color(game->canvas, x, y, color);
			y++;
		}
		x++;
	}
}
