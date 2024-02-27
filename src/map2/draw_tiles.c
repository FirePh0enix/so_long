/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_tiles.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 13:31:32 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:32:43 by ledelbec         ###   ########.fr       */
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
			(t_vec2){x * 64, (y + 1) * 64}, (t_add_sprite){11,
			index - 1, false});
	rdr_add_sprite(g->rdr, get_ground_tile(g, level, x, y),
		(t_vec2){x * 64, y * 64}, (t_add_sprite){10, index, false});
}

static void	_draw_floor_tile(t_game *g, int x, int y)
{
	rdr_add_sprite(g->rdr, anim_get_sprite(g->foam_anim),
		(t_vec2){x * 64 - 64, y * 64 - 64}, (t_add_sprite){-2, 0, false});
	rdr_add_sprite(g->rdr, get_ground_tile(g, &g->map2->levels[0], x, y),
		(t_vec2){x * 64, y * 64}, (t_add_sprite){-1, 0, false});
}

void	draw_empty(t_game *g, int index, int x, int y)
{
	if (index == 0)
		_draw_floor_tile(g, x, y);
	else
		_draw_elevated_tile(g, index, x, y);
}

void	draw_door(t_game *g, int index, int x, int y)
{
	draw_empty(g, index, x, y);
	if (g->collectibles != g->collectibles_count)
		rdr_add_sprite(g->rdr, sp(g)[SP_GOLDMINEI],
			(t_vec2){x * 64 - 64, y * 64 - 32}, (t_add_sprite){14,
			index, false});
	else
		rdr_add_sprite(g->rdr, sp(g)[SP_GOLDMINEA],
			(t_vec2){x * 64 - 64, y * 64 - 32}, (t_add_sprite){14,
			index, false});
}

void	draw_stair(t_game *g, int index, int x, int y)
{
	rdr_add_sprite(g->rdr, sp(g)[SP_STAIR_ALL],
		(t_vec2){x * 64, y * 64}, (t_add_sprite){10, index, false});
	draw_empty(g, index, x, y);
}
