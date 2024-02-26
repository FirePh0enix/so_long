/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:18:04 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/26 15:21:54 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "a_star.h"
#include "../data/vector.h"
#include <stdlib.h>

static void	_add_children(
	t_level *map,
	t_anode ***children,
	t_anode *current_node,
	t_arena *arena)
{
	int			i;
	t_vec2i		node_pos;
	const int	positions[][2] = {{0, -1}, {0, 1}, {-1, 0}, {1, 0}, {-1, -1},
	{-1, 1}, {1, -1}, {1, 1}};

	i = -1;
	while (++i < 8)
	{
		node_pos = (t_vec2i){current_node->pos.x + positions[i][0],
			current_node->pos.y + positions[i][1]};
		if (node_pos.x >= map->width || node_pos.x < 0
			|| node_pos.y >= map->height || node_pos.y < 0
			|| map->data[node_pos.x + node_pos.y * map->width] == TILE_SOLID)
			continue ;
		add_node(children, new_node(arena, current_node, node_pos));
	}
}

static void	_find_current_node(
		t_anode **current_node,
		int *current_index,
		t_anode ***open_list,
		t_anode ***close_list)
{
	int		i;

	*current_node = (*open_list)[0];
	*current_index = 0;
	i = -1;
	while (++i < (int)vector_size(*open_list))
	{
		if ((*open_list)[i]->f < (*current_node)->f)
		{
			*current_node = (*open_list)[i];
			*current_index = i;
		}
	}
	vector_remove((void *)open_list, *current_index);
	vector_add((void *)close_list, current_node);
}

typedef struct s_lists
{
	t_anode	***open_list;
	t_anode	***close_list;
	t_arena	*arena;
}	t_lists;

static void	_generate_children(
		t_level *map,
		t_anode *current_node,
		t_anode *end_node,
		t_lists l)
{
	int		i;
	t_anode	**children;

	children = vector_new(sizeof(t_anode *), 0);
	_add_children(map, &children, current_node, l.arena);
	i = -1;
	while (++i < (int)vector_size(children))
	{
		if (contains_node(*l.close_list, children[i]))
			continue ;
		children[i]->g = current_node->g + 1;
		children[i]->h = vec2i_length_sqr(children[i]->pos, end_node->pos);
		children[i]->f = children[i]->g + children[i]->h;
		if (contains_node(*l.open_list, children[i]))
			continue ;
		add_node(l.open_list, children[i]);
	}
	vector_free(children);
}

static t_vec2i	*_astar_search_int(
	t_level *map,
	t_anode *start_node,
	t_anode *end_node,
	t_arena *arena)
{
	t_anode		*current_node;
	t_anode		**open_list;
	t_anode		**close_list;
	int			current_index;

	open_list = vector_new(sizeof(t_anode *), 0);
	close_list = vector_new(sizeof(t_anode *), 0);
	vector_add((void *) &open_list, &start_node);
	while (vector_size(open_list) > 0)
	{
		_find_current_node(&current_node, &current_index,
			&open_list, &close_list);
		if (node_equals(current_node, end_node))
			return (construct_path(current_node, open_list, close_list, arena));
		_generate_children(map, start_node, end_node,
			(t_lists){&open_list, &close_list, arena});
	}
	vector_free(open_list);
	vector_free(close_list);
	arena_free(arena);
	return (NULL);
}

/*
 * https://gist.github.com/ryancollingwood/32446307e976a11a1185a5394d6657bc
 */
t_vec2i	*astar_search(t_level *map, t_vec2i start, t_vec2i end)
{
	t_anode	*start_node;
	t_anode	*end_node;
	t_arena	arena;

	arena_init(&arena, sizeof(t_anode), 1000000);
	start_node = new_node(&arena, NULL, start);
	end_node = new_node(&arena, NULL, end);
	return (_astar_search_int(map, start_node, end_node, &arena));
}
