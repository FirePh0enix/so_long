/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ribbon.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 14:06:02 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 14:31:10 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "math/vec2.h"
#include "so_long.h"

void	draw_ribbon(t_game *game, t_vec2i pos, int size)
{
	t_renderer	*rdr;
	int			i;

	rdr = game->rdr;
	rdr_add_sprite(rdr, game->rbn_left, (t_vec2){pos.x, pos.y},
		(t_add_sprite){900, false});
	i = 1;
	while (i < size - 1)
	{
		rdr_add_sprite(rdr, game->rbn_mid, (t_vec2){pos.x + i * SCALED_SIZE,
				pos.y}, (t_add_sprite){900, false});
		i++;
	}
	rdr_add_sprite(rdr, game->rbn_right,
		(t_vec2){pos.x + (size - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){900, false});
}
