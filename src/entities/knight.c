/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   knight.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/05 10:43:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/29 11:33:07 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../anim/anim.h"
#include "../data/vector.h"
#include "../render/render.h"
#include "../math/a_star.h"
#include <stdlib.h>
#include <sys/select.h>

static void	knight_free(t_entity *entity);

t_entity	*knight_new(t_game *game, t_vec2 pos, int level)
{
	t_entity	*enemy;
	t_knight	*ext;

	enemy = ft_calloc(1, sizeof(t_entity));
	if (!enemy)
		return (NULL);
	enemy->game = game;
	enemy->type = ETYPE_ENEMY;
	enemy->pos = pos;
	ext = ft_calloc(1, sizeof(t_knight));
	if (!ext)
		return (free(enemy), NULL);
	ext->idle = anim_new(game->warrior_idle, 6, 100, true);
	ext->walk = anim_new(game->warrior_walk, 6, 100, true);
	ext->atk_side = anim_new(game->warrior_atk_side, 6, 100, true);
	ext->action_end = getms() + 1100;
	arena_init(&ext->arena, sizeof(t_anode), 100000);
	enemy->extension = ext;
	enemy->sprite_offset = (t_vec2){-64, -64};
	enemy->box = (t_box){{0, 0}, {64 * SCALE, 64 * SCALE}};
	enemy->update = knight_update;
	enemy->free = knight_free;
	enemy->z_index = 100;
	enemy->level = level;
	return (enemy);
}

static void	knight_free(t_entity *entity)
{
	t_knight	*ext;

	ext = entity->extension;
	free(ext->idle);
	free(ext->walk);
	free(ext->atk_side);
	if (ext->path)
		vector_free(ext->path);
	arena_free(&ext->arena);
	free(entity->extension);
}

/*static void	_draw_debug_path(t_game *game, t_knight *ext)
{
	if (ext->path)
	{
		unsigned int	i = 0;
		while (i < vector_size(ext->path))
		{
			rdr_add_sprite(game->rdr, sp(game)[SP_PLUS],
					(t_vec2){ext->path[i].x * TILE_SIZE,
						ext->path[i].y * TILE_SIZE},
					(t_add_sprite){100, 0, false});
			i++;
		}
	}
}*/

static void	_attack(t_entity *entity, t_knight *ext)
{
	t_entity	*player;

	if (entity->game->player2
		&& vec2_length(
			vec2_sub(entity->pos, entity->game->player->pos)) > vec2_length(
			vec2_sub(entity->pos, entity->game->player2->pos)))
		player = entity->game->player2;
	else
		player = entity->game->player;
	if (ext->current_anim->current_frame == 2
		&& getms() - ext->last_attacked >= 150)
	{
		player->health -= 1;
		ext->last_attacked = getms();
		if (player->health <= 0)
			ext->state = STATE_IDLE;
	}
}

static void	_patrol(t_entity *entity, t_knight *ext)
{
	t_vec2i	path_pos;
	t_vec2	path_pos_abs;
	t_vec2	dir;

	path_pos = ext->path[ext->current_path];
	path_pos_abs = (t_vec2){path_pos.x * 64, path_pos.y * 64};
	dir = vec2_normalized(vec2_sub(path_pos_abs, entity->pos));
	entity->flipped = dir.x < 0;
	entity->pos = vec2_add(entity->pos, vec2_mul(dir, 2));
	if (vec2_equals(entity->pos, path_pos_abs, 4))
		ext->current_path--;
	ext->current_anim = ext->walk;
}

void	knight_update(t_game *game, t_entity *entity)
{
	t_knight	*ext;

	ext = entity->extension;
	entity->sprite = anim_get_sprite(ext->current_anim);
	anim_update(ext->current_anim);
	knight_pick_action(entity, ext, game->map2->levels + entity->level);
	if (ext->state == STATE_IDLE)
		ext->current_anim = ext->idle;
	else if (ext->state == STATE_ATTACKING)
	{
		ext->current_anim = ext->atk_side;
		_attack(entity, ext);
	}
	else if (ext->state == STATE_PATROLING || ext->state == STATE_CHASING)
		_patrol(entity, ext);
	entity->sprite = anim_get_sprite(ext->current_anim);
	anim_update(ext->current_anim);
}
