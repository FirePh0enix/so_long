/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   blur.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 16:06:07 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 22:39:30 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"

void	rdr_blur_screen(t_game *game, int px)
{
	int		x;
	int		y;
	int		i;
	int		j;
	int		count;
	int		total_r;
	int		total_g;
	int		total_b;

	y = 0;
	while (y < game->canvas->height)
	{
		x = 0;
		while (x < game->canvas->width)
		{
			count = 0;
			total_r = total_g = total_b = 0;
			i = -px - 1;
			while (++i < px)
			{
				j = -px - 1;
				while (++j < px)
				{
					if (x + i < 0 || x + i > game->canvas->width || y + j < 0 || y + j > game->canvas->height)
						continue;
					t_trgb	pixel = get_pixel_color(game->canvas, x + i, y + j);
					total_r += pixel.r;
					total_g += pixel.g;
					total_b += pixel.b;
					count++;
					j++;
				}
				i++;
			}
			total_r /= count;
			total_g /= count;
			total_b /= count;
			game->rdr->pixels[x + y * game->canvas->width] =
				(total_r << 16) | (total_g << 8) | total_b;
			x++;
		}
		y++;
	}
	ft_memcpy(game->canvas->data, game->rdr->pixels, sizeof(t_trgb) * game->canvas->width * game->canvas->height);
}
