/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   knight_ai.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 11:41:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/03/04 11:31:00 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../data/vector.h"
#include "../math/a_star.h"

static void	_invalidate_path(t_knight *ext)
{
	if (ext->path)
	{
		vector_free(ext->path);
		ext->path = NULL;
	}
}

static void	_pick_chase(t_entity *entity, t_knight *ext, t_level *map,
	t_entity *player)
{
	_invalidate_path(ext);
	ext->path = astar_search(&ext->arena, map, (t_vec2i){entity->pos.x / 64,
			entity->pos.y / 64},
			(t_vec2i){(player->pos.x + 32) / 64, (player->pos.y + 56) / 64});
	if (!ext->path)
	{
		ext->state = STATE_IDLE;
		return ;
	}
	ext->target_pos = (t_vec2){ext->path[0].x * 64, ext->path[0].y * 64};
	ext->current_path = vector_size(ext->path) - 2;
	ext->state = STATE_CHASING;
}

static void	_pick_patrol(t_entity *entity, t_knight *ext, t_level *map)
{
	int	x;
	int	y;

	while (1)
	{
		x = rand() % map->width;
		y = rand() % map->height;
		if (map->data[x + y * map->width] == TILE_EMPTY)
			break ;
	}
	_invalidate_path(ext);
	ext->path = astar_search(&ext->arena, map, (t_vec2i){entity->pos.x / 64,
			entity->pos.y / 64}, (t_vec2i){x, y});
	if (!ext->path)
		return ;
	ext->target_pos = (t_vec2){ext->path[0].x * 64, ext->path[0].y * 64};
	ext->current_path = vector_size(ext->path) - 2;
	ext->state = STATE_PATROLING;
}

static void	_pick_idle(t_entity *entity, t_knight *ext, t_level *map)
{
	(void) entity;
	(void) map;
	ext->state = STATE_IDLE;
	ext->action_end = getms() + 700;
	_invalidate_path(ext);
}

void	knight_pick_action(t_entity *e, t_knight *ext, t_level *map)
{
	t_entity	*player;

	if (e->game->player2
		&& vec2_length(vec2_sub(e->pos, e->game->player->pos)) > vec2_length(
			vec2_sub(e->pos, e->game->player2->pos)))
		player = e->game->player2;
	else
		player = e->game->player;
	if (!player)
		return ;
	if (vec2_length(vec2_sub(e->pos, player->pos)) < 1.0 * TILE_SIZE
		&& player->level == e->level)
	{
		_invalidate_path(ext);
		ext->path = NULL;
		ext->state = STATE_ATTACKING;
	}
	else if (vec2_length(vec2_sub(e->pos, player->pos)) < 3.5 * TILE_SIZE
		&& player->level == e->level)
		_pick_chase(e, ext, map, player);
	else if (ext->state == STATE_IDLE && getms() >= ext->action_end)
		_pick_patrol(e, ext, map);
	else if (ext->state != STATE_IDLE
		&& vec2_equals(e->pos, ext->target_pos, 16))
		_pick_idle(e, ext, map);
}
