/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   collision.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 11:42:35 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/12 15:25:33 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../math/box.h"
#include "../so_long.h"

static bool	_collide_with_upper_layer(t_box box, int index, t_map2 *map)
{
	int		x;
	int		y;
	t_box	tbox;
	t_level	*level;

	if (index >= map->level_count - 1)
		return (false);
	level = &map->levels[index + 1];
	x = -1;
	while (++x < map->width)
	{
		y = -1;
		while (++y < map->height)
		{
			tbox = (t_box){{0, 0}, {64, 64}};
			if (level->data[x + y * level->width] == TILE_EMPTY)
			{
				if (box_collide_with_box(box, box_for_position(tbox, (t_vec2){
					x * 64, (y + 1) * 64}))
					&& map->levels[index].data[x + (y + 1) * level->width] != TILE_STAIR)
					return (true);
			}
		}
	}
	return (false);
}

bool	box_collide_with_map2(t_box box, int index, t_map2 *map)
{
	const t_level	*level = &map->levels[index];
	int				x;
	int				y;
	t_box			tbox;

	x = -1;
	while (++x < map->width)
	{
		y = -1;
		while (++y < map->height)
		{
			tbox = (t_box){{0, 0}, {64, 64}};
			if (level->data[x + y * level->width] == TILE_SOLID)
			{
				if (box_collide_with_box(box, box_for_position(tbox, (t_vec2){
					x * 64, y * 64}))
					&& index > 0 &&  map->levels[index - 1].data[x + y * map->width] != TILE_STAIR)
					return (true);
			}
		}
	}
	if (_collide_with_upper_layer(box, index, map))
		return (true);
	return (false);
}
