/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   renderer.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 15:49:57 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/29 11:49:06 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"
#include "../so_long.h"
#include <stdlib.h>

t_renderer	*rdr_new(void)
{
	t_renderer	*rdr;

	rdr = malloc(sizeof(t_renderer));
	if (!rdr)
		return (NULL);
	rdr->root = NULL;
	rdr->pixels = malloc(sizeof(t_trgb) * WIN_WIDTH * WIN_HEIGHT);
	if (!rdr->pixels)
		return (free(rdr), NULL);
	arena_init(&rdr->allocator, sizeof(t_node), 1000000);
	return (rdr);
}

void	rdr_free(t_renderer *rdr)
{
	rdr_clear(rdr);
	arena_free(&rdr->allocator);
	free(rdr->pixels);
	free(rdr);
}

void	rdr_clear(t_renderer *rdr)
{
	t_node	*node;

	node = rdr->root;
	while (node)
	{
		if (node->type == NODE_TEXT)
			free(node->text.str);
		node = node->next;
	}
	arena_release(&rdr->allocator);
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
				(t_draw){SCALE, node->sprite.flipped, node->sprite.camera});
		else if (node->type == NODE_TEXT)
			rdr_draw_text(game, node->text.str, node->text.pos,
				(t_draw_text){node->text.font, node->text.color});
		else if (node->type == NODE_BLUR)
			rdr_blur_screen(game, node->blur.px);
		node = node->next;
	}
}
