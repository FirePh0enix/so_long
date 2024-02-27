/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:18:04 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:26:01 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "a_star.h"
#include "../data/vector.h"
#include "vec2.h"
#include <stdlib.h>

static t_anode	**_generate_children(t_level *m, t_arena *arena, t_anode *c)
{
	const int	positions[][2] = {{0, -1}, {0, 1}, {-1, 0}, {1, 0}, {-1, -1},
	{-1, 1}, {1, -1}, {1, 1}};
	int			i;
	t_anode		**children;
	t_vec2i		pos;
	t_anode		*node;

	children = vector_new(sizeof(t_anode *), 0);
	if (!children)
		return (NULL);
	i = -1;
	while (++i < 8)
	{
		pos = (t_vec2i){c->pos.x + positions[i][0], c->pos.y + positions[i][1]};
		if (pos.x >= m->width || pos.x < 0 || pos.y >= m->height || pos.y < 0
			|| m->data[pos.x + pos.y * m->width] == TILE_SOLID)
			continue ;
		node = new_node(arena, c, pos);
		vector_add((void *)&children, &node);
	}
	return (children);
}

typedef struct s_lists
{
	t_anode	***open_list;
	t_anode	**close_list;
}	t_lists;

static void	_calc_children(t_anode **children, t_anode *current_node,
	t_anode *end_node, t_lists l)
{
	unsigned int	i;
	t_anode			*child;

	i = 0;
	while (i < vector_size(children))
	{
		child = children[i];
		if (contains_node(l.close_list, child))
		{
			i++;
			continue ;
		}
		child->g = current_node->g + 1;
		child->h = vec2i_length_sqr(child->pos, end_node->pos);
		child->f = child->g + child->h;
		if (contains_node(*l.open_list, child))
		{
			i++;
			continue ;
		}
		vector_add((void *)l.open_list, &child);
	}
	vector_free(children);
}

static void	_find_current_node(t_anode **current_node, int *current_index,
		t_anode **open_list)
{
	unsigned int	j;

	*current_node = open_list[0];
	*current_index = 0;
	j = 0;
	while (j < vector_size(open_list))
	{
		if (open_list[j]->f < (*current_node)->f)
		{
			*current_node = open_list[j];
			*current_index = j;
		}
		j++;
	}
}

static t_vec2i	*_astar_search_int(t_arena *arena, t_level *map,
		t_anode *start_node, t_anode *end_node)
{
	t_anode	*current_node;
	t_anode	**open_list;
	t_anode	**close_list;
	int		current_index;

	open_list = vector_new(sizeof(t_anode *), 0);
	close_list = vector_new(sizeof(t_anode *), 0);
	vector_add((void *) &open_list, &start_node);
	while (vector_size(open_list) > 0)
	{
		_find_current_node(&current_node, &current_index, open_list);
		vector_remove((void *)&open_list, current_index);
		vector_add((void *)&close_list, &current_node);
		if (node_equals(current_node, end_node))
			return (construct_path(current_node, open_list, close_list, arena));
		_calc_children(_generate_children(map, arena, current_node),
			current_node, end_node, (t_lists){&open_list, close_list});
	}
	vector_free(open_list);
	vector_free(close_list);
	arena_release(arena);
	return (NULL);
}

/*
 * https://gist.github.com/ryancollingwood/32446307e976a11a1185a5394d6657bc
 */
t_vec2i	*astar_search(t_arena *arena, t_level *map, t_vec2i start, t_vec2i end)
{
	t_anode	*start_node;
	t_anode	*end_node;

	start_node = new_node(arena, NULL, start);
	end_node = new_node(arena, NULL, end);
	return (_astar_search_int(arena, map, start_node, end_node));
}
