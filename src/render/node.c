/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   node.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 15:48:47 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/14 13:37:51 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include <stdlib.h>

static void	_add_node(t_renderer *rdr, t_node *node)
{
	t_node	*cur_node;

	if (!rdr->root || rdr->root->order >= node->order)
	{
		node->next = rdr->root;
		rdr->root = node;
		return ;
	}
	cur_node = rdr->root;
	while (cur_node->next && cur_node->next->order < node->order)
		cur_node = cur_node->next;
	node->next = cur_node->next;
	cur_node->next = node;
}

/*
 * Calculate an new z_index value where sprites lower in the screen are printed
 * on top of things higher.
 */
static int	_calc_order_with_depth_testing(t_vec2 pos, int order, int level)
{
	return (level * 100000 + order * 1000 + pos.y / 64 * 10);
}

void	rdr_add_sprite(
	t_renderer *rdr,
	t_img *sp,
	t_vec2 pos,
	t_add_sprite param)
{
	t_node	*node;

	node = malloc(sizeof(t_node));
	node->type = NODE_SPRITE;
	node->next = NULL;
	node->order = _calc_order_with_depth_testing(pos, param.order, param.level);
	node->sprite.ptr = sp;
	node->sprite.pos = pos;
	node->sprite.flipped = param.flipped;
	_add_node(rdr, node);
}

void	rdr_add_text(
	t_renderer *rdr,
	char *str,
	t_vec2 pos,
	t_add_text param)
{
	t_node	*node;

	node = malloc(sizeof(t_node));
	node->type = NODE_TEXT;
	node->next = NULL;
	node->order = _calc_order_with_depth_testing(pos, param.level, param.level);
	node->text.str = str;
	node->text.pos = pos;
	node->text.color = param.color;
	node->text.font = param.font;
	_add_node(rdr, node);
}

void	rdr_add_blur(t_renderer *rdr, int px, int z_index)
{
	t_node	*node;

	node = malloc(sizeof(t_node));
	node->type = NODE_BLUR;
	node->next = NULL;
	node->order = z_index;
	node->blur.px = px;
	_add_node(rdr, node);
}
