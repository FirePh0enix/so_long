/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 17:08:00 by ledelbec         ###   ########.fr       */
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
	player->box = (t_box){{2, 2}, {15 * SCALE, 15 * SCALE}};
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

static t_vec2	_map_find_exit(t_map *map)
{
	int	x;
	int	y;

	x = 0;
	while (x < map->width)
	{
		y = 0;
		while (y < map->height)
		{
			if (map->data[x + y * map->width] == TILE_DOOR)
				return ((t_vec2){x * SCALED_SIZE, y * SCALED_SIZE});
			y++;
		}
		x++;
	}
	return ((t_vec2){0, 0});
}

void player_update(t_game *game, t_entity *entity)
{
	t_vec2	exit_pos;

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
	exit_pos = _map_find_exit(game->map);
	if (box_collide_with_box(box_for_position(entity->box, entity->pos),
		box_for_position((t_box){{0, 0},
			{16 * SCALE, 16 * SCALE}}, exit_pos))
		&& game->collectibles == game->collectibles_count)
	{
		printf("YOU WIN!\n");
	}
}
