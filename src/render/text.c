/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   text.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 11:30:14 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 15:27:29 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "libft.h"
#include "../so_long.h"

t_font	*font_load(t_game *game, char *path)
{
	t_font			*font;
	char			*buf;
	char			*buf2;
	unsigned char	i;

	font = malloc(sizeof(t_font));
	i = 32;
	while (i < 127)
	{
		buf = path;
		buf = ft_strjoin(path, "/ ");
		buf[ft_strlen(path) + 1] = i;
		buf2 = ft_strjoin(buf, ".xpm");
		free(buf);
		font->chars[i] = sprite(game, buf2);
		free(buf2);
		i++;
	}
	return (font);
}

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
			// TODO: Gradient
			y++;
		}
		x++;
	}
}

void	rdr_draw_text(t_game *game, char *str, t_vec2 pos, t_draw_text draw)
{
	const int	OFFSET = draw.font->chars[(int)'A']->width;
	int			i;

	i = 0;
	while (str[i])
	{
		pos.x += OFFSET;
		if (draw.font->chars[(int)str[i]])
		{
			rdr_draw_glyph(game, str[i], pos, draw);
		}
		i++;
	}
}
