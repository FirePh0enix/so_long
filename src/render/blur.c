/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   blur.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 16:06:07 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 16:26:16 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"

static unsigned int _clamp(unsigned int i, unsigned int a, unsigned int b)
{
	if (i < a)
		return (a);
	else if (i > b)
		return (b);
	return (i);
}

void	rdr_blur_screen(t_game *game, int px)
{
	int				x;
	int				y;
	int				i;
	int				count;

	int				total_red;
	int				total_green;
	int				total_blue;

	y = 0;
	while (y < game->canvas->height)
	{
		x = 0;
		while (x < game->canvas->width)
		{
			count = 0;
			total_red = total_green = total_blue = 0;
			i = -px / 2;
			while (i < px)
			{
				if (x + i < 0 || x + i > game->canvas->width)
				{
					i++;
					continue ;
				}
				unsigned int color = ((unsigned int *)game->canvas->data)[x + i + y  * game->canvas->width];
				total_red = _clamp(total_red + get_red(color), 0, 0xFF);
				total_green = _clamp(total_green + get_green(color), 0, 0xFF);
				total_blue = _clamp(total_blue + get_blue(color), 0, 0xFF);
				count++;
				i++;
			}
			((unsigned int *)game->canvas->data)[x + y  * game->canvas->width] =
				((total_red / count) << 16) | ((total_green / count) << 8) | (total_blue / count);
			x++;
		}
		y++;
	}
}
