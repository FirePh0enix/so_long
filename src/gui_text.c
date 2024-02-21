/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui_text.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 11:16:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 11:17:08 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render/render.h"
#include "libft.h"

static int	_font_width(t_font *font)
{
	if (font->chars[(int) 'A'])
		return (font->chars[(int) 'A']->width);
	return (0);
}

static int	_font_height(t_font *font)
{
	if (font->chars[(int) 'A'])
		return (font->chars[(int) 'A']->height);
	return (0);
}

int	text_center_x(t_font *font, char *s, int px, int pwidth)
{
	const int	width = _font_width(font) * ft_strlen(s);
	const int	fx = px + pwidth / 2 - width;

	return (fx);
}

int	text_center_y(t_font *font, char *s, int py, int pheight)
{
	const int	height = _font_height(font);
	const int	fy = py + pheight / 2 - height / 2;

	(void) s;
	return (fy);
}
