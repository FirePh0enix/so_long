/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/10 16:18:49 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 11:57:39 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../anim/anim.h"

static void	_draw_elevated_tile(t_game *g, int index, int x, int y)
{
	t_level	*level;
	t_level	*level1;

	level = &g->map2->levels[index];
	level1 = &g->map2->levels[index - 1];
	rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_TLR],
		(t_vec2){x * 64, y * 64}, (t_add_sprite){9, index,
		false});
	if (level1->data[x + (y + 1) * level1->width] != TILE_STAIR)
		rdr_add_sprite(g->rdr, sp(g)[SP_CLIFF_SIDE_ALL],
			(t_vec2){x * 64, (y + 1) * 64}, (t_add_sprite){8,
			index - 1, false});
	rdr_add_sprite(g->rdr, get_ground_tile(g, level, x, y),
		(t_vec2){x * 64, y * 64}, (t_add_sprite){10,
		index, false});
}

static void	_draw_floor_tile(t_game *g, int x, int y)
{
	rdr_add_sprite(g->rdr, anim_get_sprite(g->foam_anim),
		(t_vec2){x * 64 - 64, y * 64 - 64}, (t_add_sprite){-2, 0, false});
	rdr_add_sprite(g->rdr, get_ground_tile(g, &g->map2->levels[0], x, y),
		(t_vec2){x * 64, y * 64}, (t_add_sprite){-1, 0, false});
}

static void	_draw_empty(t_game *g, int index, int x, int y)
{
	if (index == 0)
		_draw_floor_tile(g, x, y);
	else
		_draw_elevated_tile(g, index, x, y);
}

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
					(t_add_sprite){-3, index, false});
			else if (tile == TILE_STAIR)
				rdr_add_sprite(rdr, sp(g)[SP_STAIR_ALL],
					(t_vec2){x * 64, y * 64}, (t_add_sprite){10, index, false});
			else if (tile == TILE_DOOR)
				rdr_add_sprite(rdr, sp(g)[SP_GOLDMINEI],
					(t_vec2){x * 64 - 64, y * 64 - 32}, (t_add_sprite){15,
					index, 0});
			else if (tile == TILE_EMPTY)
				_draw_empty(g, index, x, y);
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
