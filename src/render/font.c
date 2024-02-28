/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   font.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 12:05:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:56:38 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"
#include "render.h"
#include "../so_long.h"

t_font	*font_load(t_game *game, char *path)
{
	t_font			*font;
	char			buf[64];
	unsigned char	i;

	font = ft_calloc(1, sizeof(t_font));
	i = 32;
	while (i < 127)
	{
		ft_sprintf(buf, "%s/%c.xpm", path, i);
		font->chars[i] = sprite(game, buf);
		i++;
	}
	return (font);
}

void	font_free(t_game *game, t_font *font)
{
	int	i;

	if (!font)
		return ;
	i = -1;
	while (++i < 256)
		if (font->chars[i])
			mlx_destroy_image(game->mlx, font->chars[i]);
	free(font);
}
