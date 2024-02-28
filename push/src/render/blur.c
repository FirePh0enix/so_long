/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   blur.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 16:06:07 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 00:01:01 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"

static void	_add_pixel_color(int *total, t_trgb pixel)
{
	total[0] += pixel.r;
	total[1] += pixel.g;
	total[2] += pixel.b;
}

static void	_div_color(int *total, int count)
{
	total[0] /= count;
	total[1] /= count;
	total[2] /= count;
}

static int	_blur_pixel(t_game *g, int x, int y, int px)
{
	int	total[3];
	int	count;
	int	i;
	int	j;

	count = 0;
	ft_memset(total, 0, sizeof(int) * 3);
	i = -px - 1;
	while (++i < px)
	{
		j = -px - 1;
		while (++j < px)
		{
			if (x + i < 0 || x + i > g->canvas->width
				|| y + j < 0 || y + j > g->canvas->height)
				continue ;
			_add_pixel_color(total, get_pixel_color(g->canvas, x + i, y + j));
			count++;
			j++;
		}
		i++;
	}
	_div_color(total, count);
	return ((total[0] << 16) | (total[1] << 8) | total[2]);
}

void	rdr_blur_screen(t_game *game, int px)
{
	int	x;
	int	y;

	y = 0;
	while (y < game->canvas->height)
	{
		x = 0;
		while (x < game->canvas->width)
		{
			game->rdr->pixels[x + y * game->canvas->width] = _blur_pixel(
					game, x, y, px);
			x++;
		}
		y++;
	}
	ft_memcpy(game->canvas->data, game->rdr->pixels,
		sizeof(t_trgb) * game->canvas->width * game->canvas->height);
}
