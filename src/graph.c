/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   graph.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:38:18 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 19:18:16 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "graph.h"
#include "libft.h"
#include <stdlib.h>

t_graph	*new_graph(void)
{
	t_graph	*graph;

	graph = malloc(sizeof(t_graph));
	graph->root = NULL;
	return (graph);
}

void	graph_reset(t_graph *graph)
{
	t_node	*cur_node;
	t_node	*next;

	cur_node = graph->root;
	while (cur_node)
	{
		next = cur_node->next;
		free(cur_node);
		cur_node = next;
	}
	graph->root = NULL;
}

static void	add_node(t_graph *graph, t_node *node)
{
	t_node	*cur_node;

	if (!graph->root || graph->root->order >= node->order)
	{
		node->next = graph->root;
		graph->root = node;
		return ;
	}
	cur_node = graph->root;
	while (cur_node->next && cur_node->next->order < node->order)
		cur_node = cur_node->next;
	node->next = cur_node->next;
	cur_node->next = node;
}

void	graph_add_sprite(
	t_graph *graph,
	t_sprite *sprite,
	t_vec2 pos,
	int order)
{
	t_node	*node;

	node = malloc(sizeof(t_node));
	node->type = NODE_SPRITE;
	node->order = order;
	node->next = NULL;
	node->sprite.sprite = sprite;
	node->sprite.position = pos;
	add_node(graph, node);
}

void	graph_draw(t_graph *graph, t_game *game)
{
	t_node	*node;

	node = graph->root;
	while (node)
	{
		if (node->type == NODE_SPRITE)
			draw_sprite(game, node->sprite.sprite, node->sprite.position,
				(t_draw){.scale = 3});
		node = node->next;
	}
}
