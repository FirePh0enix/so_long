/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/10 16:18:49 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:50:18 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

static void	_draw_level(t_game *g, t_renderer *rdr, t_level *level, int index)
{
	int		x;
	int		y;
	t_tile	tile;

	x = -1;
	while (++x < level->width)
	{
		y = -1;
		while (++y < level->height)
		{
			tile = level->data[x + y * level->width];
			if (tile == TILE_SOLID && index == 0)
				rdr_add_sprite(rdr, sp(g)[SP_WATER], (t_vec2){x * 64, y * 64},
					(t_add_sprite){-3, index, false, true});
			else if (tile == TILE_STAIR)
				draw_stair(g, index, x, y);
			else if (tile == TILE_DOOR)
				draw_door(g, index, x, y);
			else if (tile == TILE_EMPTY)
				draw_empty(g, index, x, y);
		}
	}
}

void	map2_draw(t_game *game, t_map2 *map, t_renderer *rdr)
{
	int	i;

	i = -1;
	while (++i < map->level_count)
		_draw_level(game, rdr, map->levels + i, i);
}
