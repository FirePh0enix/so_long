/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   text.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 11:30:14 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 12:47:12 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"

static inline int	_get_pixel_color(const t_img *image, int x, int y)
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

void	rdr_draw_glyph(t_game *game, char c, t_vec2 pos, t_draw_text d)
{
	const t_img		*glyph = d.font->chars[(int)c];
	const int		width = glyph->width * SCALE;
	const int		height = glyph->height * SCALE;
	int				x;
	int				y;

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
			if (_get_pixel_color(glyph, x, y) != (int)0xFF000000)
				_set_pixel_color(game->canvas, pos.x + x, pos.y + y, d.color);
			y++;
		}
		x++;
	}
}

static int	_font_width(t_font *font)
{
	if (font->chars[(int) 'A'])
		return (font->chars[(int) 'A']->width);
	return (0);
}

void	rdr_draw_text(t_game *game, char *str, t_vec2 pos, t_draw_text draw)
{
	const int	offset = _font_width(draw.font);
	int			i;

	i = 0;
	while (str[i])
	{
		pos.x += offset;
		if (draw.font->chars[(int)str[i]])
			rdr_draw_glyph(game, str[i], pos, draw);
		i++;
	}
}
