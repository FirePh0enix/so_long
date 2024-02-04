/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   knight.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/05 10:43:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 13:24:53 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../anim/anim.h"
#include "../math/a_star.h"
#include "../data/vector.h"
#include "../render/render.h"
#include <stdlib.h>
#include <sys/select.h>

typedef enum
{
	STATE_IDLE,
	STATE_PATROLING,
	STATE_CHASING,
	STATE_ATTACKING,
}	t_ai_state;

typedef struct s_knight
{
	t_anim		*current_anim;
	t_anim		*idle;
	t_anim		*walk;
	t_anim		*atk_side;
	
	t_ai_state	state;
	suseconds_t	action_end;
	
	t_vec2i		*path;
	int			current_path;
	t_vec2		target_pos;

	suseconds_t	last_attacked;
}	t_knight;

t_entity	*knight_new(t_game *game, t_vec2 pos)
{
	t_entity	*enemy;
	t_knight	*ext;

	enemy = malloc(sizeof(t_entity));
	enemy->game = game;
	enemy->type = ETYPE_ENEMY;
	enemy->state = STATE_ALIVE;
	enemy->pos = pos;
	ext = malloc(sizeof(t_knight));
	enemy->extension = ext;
	ext->idle = anim_new(game->warrior_idle, 6, 100, true);
	ext->walk = anim_new(game->warrior_walk, 6, 100, true);
	ext->atk_side = anim_new(game->warrior_atk_side, 6, 100, true);
	ext->current_anim = ext->idle;
	ext->state = STATE_IDLE;
	ext->action_end = getms() + 1100;
	enemy->sprite = game->warrior_idle[0];
	enemy->sprite_offset = (t_vec2){-64, -64};
	enemy->box = (t_box){{0, 0}, {64 * SCALE, 64 * SCALE}};
	enemy->update = knight_update;
	enemy->z_index = 100;
	return (enemy);
}

/*
 * Find a random position in the map for the knight to go to.
 */
static t_vec2i	_find_random_pos(t_map *map)
{
	int	x;
	int	y;

	while (1)
	{
		x = rand() % map->width;
		y = rand() % map->height;
		if (map->data[x + y * map->width] == TILE_EMPTY)
			return ((t_vec2i){x, y});
	}
	return (t_vec2i){};
}

static void	_pick_action(t_entity *entity, t_knight *ext, t_map *map)
{
	const t_entity	*player = entity->game->player;
	
	if (vec2_length(vec2_sub(entity->pos, player->pos)) < 1.0 * TILE_SIZE)
	{
		ext->path = NULL;
		ext->state = STATE_ATTACKING;
	}
	else if (vec2_length(vec2_sub(entity->pos, player->pos)) < 3.5 * TILE_SIZE)
	{
		ext->path = astar_search(map, (t_vec2i){entity->pos.x / 64, entity->pos.y / 64},
			(t_vec2i){player->pos.x / 64, player->pos.y / 64});
		if (!ext->path)
		{
			ext->state = STATE_IDLE;
			return ;
		}
		ext->target_pos = (t_vec2){ext->path[0].x * 64, ext->path[0].y * 64};
		ext->current_path = vector_size(ext->path) - 2;
		ext->state = STATE_CHASING;
	}
	else if (ext->state == STATE_IDLE && getms() >= ext->action_end)
	{
		ext->path = astar_search(map, (t_vec2i){entity->pos.x / 64, entity->pos.y / 64},
			_find_random_pos(map));
		if (!ext->path)
			return ;
		ext->target_pos = (t_vec2){ext->path[0].x * 64, ext->path[0].y * 64};
		ext->current_path = vector_size(ext->path) - 2;
		ext->state = STATE_PATROLING;
	}
	else if (ext->state == STATE_PATROLING
		&& vec2_equals(entity->pos, ext->target_pos, 16))
	{
		ext->state = STATE_IDLE;
		ext->action_end = getms() + 700;
		ext->path = NULL;
	}
}

static void	_draw_debug_path(t_game *game, t_knight *ext)
{
	if (ext->path)
	{
		unsigned int	i = 0;
		while (i < vector_size(ext->path))
		{
			rdr_add_sprite(game->rdr, game->plus,
					(t_vec2){ext->path[i].x * TILE_SIZE, ext->path[i].y * TILE_SIZE},
					(t_add_sprite){100, false});
			i++;
		}
	}
}

static void	_attack(t_knight *ext, t_entity *player)
{
	if (ext->current_anim->current_frame == 2
		&& getms() - ext->last_attacked >= 150)
	{
		player->health -= 1;
		ext->last_attacked = getms();
	}
}

void	knight_update(t_game *game, t_entity *entity)
{
	t_knight	*ext;

	ext = entity->extension;
	entity->sprite = anim_get_sprite(ext->current_anim);
	anim_update(ext->current_anim);
	_pick_action(entity, ext, game->map);
	if (ext->state == STATE_IDLE)
		ext->current_anim = ext->idle;
	else if (ext->state == STATE_ATTACKING)
	{
		ext->current_anim = ext->atk_side;
		_attack(ext, game->player);
	}
	else if (ext->state == STATE_PATROLING || ext->state == STATE_CHASING)
	{
		t_vec2i	path_pos = ext->path[ext->current_path];
		t_vec2	path_pos_abs = (t_vec2){path_pos.x * 64, path_pos.y * 64};
		t_vec2	dir = vec2_normalized(vec2_sub(path_pos_abs, entity->pos));
		entity->flipped = dir.x < 0;
		entity->pos = vec2_add(entity->pos, vec2_mul(dir, 2));
		if (vec2_equals(entity->pos, path_pos_abs, 4))
			ext->current_path--;
		ext->current_anim = ext->walk;
	}
	entity->sprite = anim_get_sprite(ext->current_anim);
	anim_update(ext->current_anim);
	//_draw_debug_path(game, ext);
}
