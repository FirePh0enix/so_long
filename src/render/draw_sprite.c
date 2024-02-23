/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_sprite.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:45:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 16:40:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx_int.h"
#include "render.h"
#include "../so_long.h"
#include "../math/vec2.h"

static inline int	_get_pixel_color(t_img *image, int x, int y)
{
	const char	*addr = image->data;
	const int	bits_per_pixel = image->bpp;
	const int	size_line = image->size_line;
	const int	pixel_offset = (y * size_line) + (x * (bits_per_pixel / 8));
	const int	color = *((int *)(addr + pixel_offset));

	return (color);
}

static inline unsigned int	_get_pixel(t_img *sp, int x, int y, t_draw draw)
{
	const int		width = sp->width * draw.scale;

	if (!draw.flipped)
		return (_get_pixel_color(sp, x, y));
	else
		return (_get_pixel_color(sp, width - x - 1, y));
}

void	rdr_draw_sprite(t_game *game, t_img *sp, t_vec2 pos, t_draw draw)
{
	int				width;
	int				height;
	int				x;
	int				y;
	unsigned int	color;

	if (!sp)
		return ;
	width = sp->width * draw.scale;
	height = sp->height * draw.scale;
	y = -1;
	while (++y < height)
	{
		x = -1;
		while (++x < width)
		{
			if (pos.x + x < 0 || pos.x + x >= game->canvas->width
				|| pos.y + y < 0 || pos.y + y >= game->canvas->height)
				continue ;
			color = _get_pixel(sp, x, y, draw);
			if (color != 0xff000000)
				((unsigned int *) game->canvas->data)[(int)pos.x
					+ x + ((int)pos.y + y) * game->canvas->width] = color;
		}
	}
}

void	rdr_clear_screen(t_game *game, unsigned int color)
{
	const int	s = game->canvas->width * game->canvas->height;
	int			i;

	if (color == 0x0 && sp(game)[SP_WATER] != NULL)
		color = _get_pixel_color(sp(game)[SP_WATER], 0, 0);
	i = -1;
	while (++i < s)
		*(((unsigned int *)game->canvas->data + i)) = color;
}
