/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gem.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 23:46:40 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 11:50:53 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"

t_entity	*gem_new(t_game *game, t_vec2 pos)
{
	t_entity	*gem;

	gem = malloc(sizeof(t_entity));
	gem->game = game;
	gem->type = ETYPE_GEM;
	gem->pos = pos;
	gem->box = (t_box){{0, 0}, {16 * SCALE, 16 * SCALE}};
	gem->update = gem_update;
	gem->sprite = game->gem;
	gem->z_index = 1;
	return (gem);
}

void		gem_update(t_game *game, t_entity *entity)
{
	(void)game;
	(void)entity;
}