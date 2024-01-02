/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 23:01:47 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include <stdlib.h>

t_entity	*player_new(t_game *game, t_vec2 pos)
{
	t_entity	*player;

	player = malloc(sizeof(t_entity));
	player->game = game;
	player->pos = pos;
	player->update = player_update;
	player->sprite = game->solid;
	player->z_index = 1;
	return (player);
}

void player_update(t_game *game, t_entity *entity)
{
	if (game->keys[XK_Right])
		entity->pos.x += PLAYER_SPEED;
	if (game->keys[XK_Left])
		entity->pos.x -= PLAYER_SPEED;
	if (game->keys[XK_Up])
		entity->pos.y -= PLAYER_SPEED;
	if (game->keys[XK_Down])
		entity->pos.y += PLAYER_SPEED;
}
