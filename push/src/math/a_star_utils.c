/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 13:36:28 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 16:51:32 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "a_star.h"
#include "../data/vector.h"

t_vec2i	*construct_path(t_anode *current_node, t_anode **open_list,
	t_anode **close_list, t_arena *arena)
{
	t_vec2i	*path;
	t_anode	*prev;

	path = vector_new(sizeof(t_vec2i), 0);
	while (current_node)
	{
		vector_add((void *)&path, &current_node->pos);
		prev = current_node->parent;
		current_node = prev;
	}
	vector_free(open_list);
	vector_free(close_list);
	arena_release(arena);
	return (path);
}

t_anode	*new_node(t_arena *arena, t_anode *parent, t_vec2i pos)
{
	t_anode	*node;

	node = arena_alloc(arena);
	node->parent = parent;
	node->pos = pos;
	node->g = 0;
	node->h = 0;
	node->f = 0;
	return (node);
}

bool	node_equals(t_anode *n1, t_anode *n2)
{
	return (n1->pos.x == n2->pos.x && n1->pos.y == n2->pos.y);
}

bool	contains_node(t_anode **nodes, t_anode *n)
{
	unsigned int	i;

	i = 0;
	while (i < vector_size(nodes))
	{
		if (node_equals(nodes[i], n))
			return (true);
		i++;
	}
	return (false);
}

bool	astar_is_tile_solid(t_level *m, t_vec2i pos)
{
	t_level	*up;

	up = &m->map->levels[m->index + 1];
	return (m->data[pos.x + pos.y * m->width] == TILE_SOLID
		|| m->data[pos.x + pos.y * m->width] == TILE_STAIR
		|| m->data[pos.x + pos.y * m->width] == TILE_DOOR
		|| (m->index + 1 < m->map->level_count && pos.y - 1 >= 0
			&& up->data[pos.x + (pos.y - 1) * m->width] == TILE_EMPTY));
}
