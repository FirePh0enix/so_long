/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player_update.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/15 15:33:41 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 16:36:47 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../anim/anim.h"

static bool	_is_attacking(t_player *ext)
{
	return ((ext->current_anim == ext->atk_side)
		&& (ext->current_anim->current_frame < 5
			&& ext->current_anim->current_frame > 2
			&& getms() - ext->current_anim->last_frame
			< ext->current_anim->frame_interval));
}

static void	_stair_collision(t_entity *entity)
{
	const t_map2	*map = entity->game->map2;
	const t_vec2i	tpos = (t_vec2i){(entity->pos.x + 32) / 64,
		(entity->pos.y + 60) / 64};

	if (map->levels[entity->level].data[tpos.x
			+ tpos.y * map->width] == TILE_STAIR
		&& entity->level < map->level_count - 1)
	{
		if (((int)entity->pos.y + 40) % 64 < 32)
			entity->level++;
	}
	else if (entity->level > 0
		&& map->levels[entity->level - 1].data[tpos.x
			+ tpos.y * map->width] == TILE_STAIR)
	{
		if (((int)entity->pos.y + 63) % 64 > 56)
			entity->level--;
	}
}

static void	_handle_move_keys(t_game *game, t_entity *entity, t_player *ext)
{
	if (game->keys[_keycode(game, entity, XK_Right, ext->is_p2)])
	{
		entity->vel.x += 1;
		game->moves += 1;
	}
	if (game->keys[_keycode(game, entity, XK_Left, ext->is_p2)])
	{
		entity->vel.x -= 1;
		game->moves += 1;
	}
	if (game->keys[_keycode(game, entity, XK_Up, ext->is_p2)])
	{
		entity->vel.y -= 1;
		game->moves += 1;
	}
	if (game->keys[_keycode(game, entity, XK_Down, ext->is_p2)])
	{
		entity->vel.y += 1;
		game->moves += 1;
	}
	if (entity->vel.x != 0 || entity->vel.y != 0)
		entity->vel = vec2_normalized(entity->vel);
	entity->vel = vec2_mul(entity->vel, PLAYER_SPEED);
}

static void	_handle_keys(t_game *game, t_entity *entity, t_player *ext)
{
	_handle_move_keys(game, entity, ext);
	if ((game->keys[_keycode(game, entity, XK_Right, ext->is_p2)]
			|| game->keys[_keycode(game, entity, XK_Left, ext->is_p2)]
			|| game->keys[_keycode(game, entity, XK_Up, ext->is_p2)]
			|| game->keys[_keycode(game, entity, XK_Down, ext->is_p2)])
		&& !_is_attacking(ext))
		ext->current_anim = ext->walk;
	else if (!_is_attacking(ext))
		ext->current_anim = ext->idle;
	if (game->keys[_keycode(game, entity, XK_Right, ext->is_p2)])
		entity->flipped = false;
	else if (game->keys[_keycode(game, entity, XK_Left, ext->is_p2)])
		entity->flipped = true;
}

void	player_update(t_game *game, t_entity *entity)
{
	t_player	*ext;

	ext = entity->extension;
	if (entity->health <= 0)
	{
		entity->state = STATE_DEAD;
		if (entity == entity->game->player)
		{
			entity->game->player = entity->game->player2;
			entity->game->player2 = NULL;
		}
		else if (entity == entity->game->player2)
			entity->game->player2 = NULL;
		return ;
	}
	entity->sprite = anim_get_sprite(ext->current_anim);
	_handle_keys(game, entity, ext);
	anim_update(ext->current_anim);
	move_player(game, entity);
	entity->vel.x = 0;
	entity->vel.y = 0;
	_stair_collision(entity);
}
