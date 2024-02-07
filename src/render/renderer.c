/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   renderer.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 15:49:57 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/07 12:51:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"
#include <stdlib.h>

t_renderer	*rdr_new()
{
	t_renderer	*rdr;

	rdr = malloc(sizeof(t_renderer));
	rdr->root = NULL;
	return (rdr);
}

void	rdr_free(t_renderer *rdr)
{
	rdr_clear(rdr);
	free(rdr);
}

void	rdr_clear(t_renderer *rdr)
{
	t_node	*node;
	t_node	*next;

	node = rdr->root;
	while (node)
	{
		next = node->next;
		free(node);
		node = next;
	}
	rdr->root = NULL;
}

void	rdr_draw(t_renderer *rdr, t_game *game)
{
	t_node	*node;

	node = rdr->root;
	while (node)
	{
		if (node->type == NODE_SPRITE)
			rdr_draw_sprite(game, node->sprite.ptr, node->sprite.pos,
				(t_draw){SCALE, node->sprite.flipped});
		else if (node->type == NODE_TEXT)
			rdr_draw_text(game, node->text.str, node->text.pos,
				(t_draw_text){node->text.font, node->text.color});
		node = node->next;
	}
}
