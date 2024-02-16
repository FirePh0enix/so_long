/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   font.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 12:05:31 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 12:10:43 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"
#include "render.h"
#include "../so_long.h"

void		font_free(t_game *game, t_font *font)
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
