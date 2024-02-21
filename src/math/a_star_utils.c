/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 13:36:28 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 13:41:23 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "a_star.h"
#include "../data/vector.h"

t_anode	*new_node(t_anode *parent, t_vec2i pos)
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

void	add_node(t_anode ***list, t_anode *anode)
{
	vector_add((void *)list, &anode);
}

t_vec2i	*construct_path(t_anode *current_node, t_anode **open_list,
	t_anode **close_list)
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
	vector_free_with(open_list, free);
	vector_free_with(close_list, free);
	return (path);
}
