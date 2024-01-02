/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:45:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 00:12:38 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "mlx_int.h"
#include "so_long.h"
#include "math/vec2.h"
#include <stdio.h>

static int _get_pixel_color(t_img *image, int x, int y)
{
	char	*addr = image->data;
	int		bits_per_pixel = image->bpp;
	int		size_line = image->size_line;
	int		pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
	int		color = *((int *)(addr + pixel_offset));

	return color;
}

static void _set_pixel_color(t_img *image, int x, int y, int color)
{
	char	*addr = image->data;
	int		bits_per_pixel = image->bpp;
	int		size_line = image->size_line;
	int		pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));

	*((int *)(addr + pixel_offset)) = color;
}

void	draw_sprite(t_game *game, t_sprite *sprite, t_vec2 pos, t_draw draw)
{
	const int		width = sprite->width * draw.scale;
	const int		height = sprite->height * draw.scale;
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
			color = _get_pixel_color(sprite->img, x / draw.scale, y / draw.scale);
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
