/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   box.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 11:48:45 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/26 15:10:52 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "box.h"
#include "../so_long.h"

t_box	box_for_position(t_box box, t_vec2 pos)
{
	return ((t_box){{box.min.x + pos.x, box.min.y + pos.y},
		{box.max.x + pos.x, box.max.y + pos.y}});
}

bool	box_collide_with_point(t_box box, int x, int y)
{
	return (x >= box.min.x && x <= box.max.x
		&& y >= box.min.y && y <= box.max.y);
}

bool	box_collide_with_box(t_box b1, t_box b2)
{
	return (b1.min.x <= b2.max.x
		&& b1.max.x >= b2.min.x
		&& b1.min.y <= b2.max.y
		&& b1.max.y >= b2.min.y);
}

bool	box_collide_with_map(t_box box, t_map *map)
{
	int		x;
	int		y;
	t_box	tile_box;

	x = 0;
	while (x < map->width)
	{
		y = 0;
		while (y < map->height)
		{
			if (map->data[x + y * map->width] == TILE_SOLID)
			{
				tile_box = (t_box){{0, 0},
				{SCALED_SIZE, SCALED_SIZE}};
				if (box_collide_with_box(box,
						box_for_position(tile_box, (t_vec2){x * SCALED_SIZE,
							y * SCALED_SIZE})))
					return (true);
			}
			y++;
		}
		x++;
	}
	return (false);
}
