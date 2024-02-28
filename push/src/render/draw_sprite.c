/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_sprite.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:45:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 14:30:10 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx_int.h"
#include "render.h"
#include "../so_long.h"
#include "../math/vec2.h"

static inline unsigned int	_get_pixel(t_img *sp, int x, int y, t_draw draw)
{
	const int		width = sp->width * draw.scale;

	if (!draw.flipped)
		return (((unsigned int *) sp->data)[x + y * sp->width]);
	else
		return (((unsigned int *) sp->data)[(width - x - 1) + y * sp->height]);
}

static inline void	_set_color(t_game *game, t_vec2 pos, t_vec2i iter,
		unsigned int color)
{
	((unsigned int *) game->canvas->data)[(int)pos.x
		+ iter.x + ((int)pos.y + iter.y) * game->canvas->width] = color;
}

static t_vec2	_offset_pos(t_game *game, t_vec2 pos, t_draw draw)
{
	if (draw.camera)
		pos = camera_off(game, pos);
	return (pos);
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
	pos = _offset_pos(game, pos, draw);
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
				_set_color(game, pos, (t_vec2i){x, y}, color);
		}
	}
}

void	rdr_clear_screen(t_game *game, unsigned int color)
{
	const int	s = game->canvas->width * game->canvas->height;
	int			i;

	if (color == 0x0 && sp(game)[SP_WATER] != NULL)
		color = (((unsigned int *) sp(game)[SP_WATER]->data)[0]);
	i = -1;
	while (++i < s)
		*(((unsigned int *)game->canvas->data + i)) = color;
}
