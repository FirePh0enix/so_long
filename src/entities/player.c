/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 16:42:03 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include <stdlib.h>

t_entity	*player_new(t_game *game, t_vec2 pos)
{
	t_entity	*player;

	player = malloc(sizeof(t_entity));
	player->game = game;
	player->type = ETYPE_PLAYER;
	player->state = STATE_ALIVE;
	player->pos = pos;
	player->box = (t_box){{0, 0}, {16 * SCALE, 16 * SCALE}};
	player->update = player_update;
	player->sprite = game->solid;
	player->z_index = 1;
	return (player);
}

// FIXME Still one pixel off when colliding with a wall
static void	_move(t_game *game, t_entity *entity)
{
	while (entity->vel.x != 0)
	{
		if (!box_collide_with_map(box_for_position(
					entity->box, vec2_add(entity->pos,
					(t_vec2){entity->vel.x, 0})), game->map))
			break ;
		if (entity->vel.x > 0)
			entity->vel.x--;
		else
			entity->vel.x++;
	}
	entity->pos.x += entity->vel.x;
	while (entity->vel.y != 0)
	{
		if (!box_collide_with_map(box_for_position(
					entity->box, vec2_add(entity->pos,
					(t_vec2){0, entity->vel.y})), game->map))
			break ;
		if (entity->vel.y > 0)
			entity->vel.y--;
		else
			entity->vel.y++;
	}
	entity->pos.y += entity->vel.y;
}

void player_update(t_game *game, t_entity *entity)
{
	if (game->keys[XK_Right])
		entity->vel.x += PLAYER_SPEED;
	if (game->keys[XK_Left])
		entity->vel.x -= PLAYER_SPEED;
	if (game->keys[XK_Up])
		entity->vel.y -= PLAYER_SPEED;
	if (game->keys[XK_Down])
		entity->vel.y += PLAYER_SPEED;
	_move(game, entity);
	entity->vel.x = 0;
	entity->vel.y = 0;
}
