/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:18:04 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 00:55:28 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "a_star.h"
#include "../data/vector.h"
#include <stdlib.h>

/*
 * g - distance between the current node and the start node.
 * h - distance between the current node and the end node.
 * f = g + h
 */
typedef struct s_anode
{
	struct s_anode	*parent;
	int				g;
	int				h;
	int				f;
	t_vec2i			pos;
}	t_anode;

static t_anode	*_new_node(t_anode *parent, t_vec2i pos)
{
	t_anode	*node;

	node = malloc(sizeof(t_anode));
	node->parent = parent;
	node->pos = pos;
	node->g = 0;
	node->h = 0;
	node->f = 0;
	return (node);
}

static bool	_node_equals(t_anode *n1, t_anode *n2)
{
	return (n1->pos.x == n2->pos.x && n1->pos.y == n2->pos.y);
}

static bool	_contains_node(t_anode **nodes, t_anode *n)
{
	unsigned int	i;

	i = 0;
	while (i < vector_size(nodes))
	{
		if (_node_equals(nodes[i], n))
			return (true);
		i++;
	}
	return (false);
}

/*
 * https://gist.github.com/ryancollingwood/32446307e976a11a1185a5394d6657bc
 */
t_vec2i	*astar_search(t_map *map, t_vec2i start, t_vec2i end)
{
	t_anode	*start_node;
	t_anode	*end_node;
	t_anode	*current_node;

	t_anode	**open_list;
	t_anode	**close_list;

	int		current_index;

	start_node = _new_node(NULL, start);
	end_node = _new_node(NULL, end);
	open_list = vector_new(sizeof(t_anode *), 0);
	close_list = vector_new(sizeof(t_anode *), 0);

	vector_add((void *) &open_list, &start_node);
	while (vector_size(open_list) > 0)
	{
		current_node = open_list[0];
		current_index = 0;

		unsigned int	j = 0;
		while (j < vector_size(open_list))
		{
			if (open_list[j]->f < current_node->f)
			{
				current_node = open_list[j];
				current_index = j;
			}
			j++;
		}

		//free(open_list[current_index]);
		vector_remove((void *)&open_list, current_index);
		vector_add((void *)&close_list, &current_node);

		// We found the goal
		if (_node_equals(current_node, end_node))
		{
			t_vec2i	*path = vector_new(sizeof(t_vec2i), 0);
			t_anode	*prev;
			while (current_node)
			{
				vector_add((void *)&path, &current_node->pos);
				prev = current_node->parent;
				current_node = prev;
			}
			vector_free_with(open_list, free);
			vector_free_with(close_list, free);
			return (path);
		}

		// Generate children
		t_anode	**children = vector_new(sizeof(t_anode *), 0);
		int	positions[][2] = {
			{0, -1},
			{0, 1},
			{-1, 0},
			{1, 0},
			{-1, -1},
			{-1, 1},
			{1, -1},
			{1, 1}
		};
		int	k = 0;
		while (k < 8)
		{
			int	*new_pos = positions[k];
			t_vec2i	node_pos = {current_node->pos.x + new_pos[0], current_node->pos.y + new_pos[1]};
			if (node_pos.x >= map->width || node_pos.x < 0
				|| node_pos.y >= map->height || node_pos.y < 0
				|| map->data[node_pos.x + node_pos.y * map->width] == TILE_SOLID)
			{
				k++;
				continue;
			}
			t_anode	*node = _new_node(current_node, node_pos);
			vector_add((void *)&children, &node);
			k++;
		}

		unsigned int	l = 0;
		while (l < vector_size(children))
		{
			t_anode	*child = children[l];
			if (_contains_node(close_list, child))
			{
				l++;
				continue;
			}

			child->g = current_node->g + 1;
			child->h = ((child->pos.x - end_node->pos.x) * (child->pos.x - end_node->pos.x)
				+ (child->pos.y - end_node->pos.y) * (child->pos.y - end_node->pos.y));
			child->f = child->g + child->h;
			if (_contains_node(open_list, child))
			{
				l++;
				continue;
			}
			vector_add((void *)&open_list, &child);
		}
	}
	return (NULL);
}
