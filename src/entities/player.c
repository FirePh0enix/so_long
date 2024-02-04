/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 14:57:04 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include <stdlib.h>
#include <sys/select.h>
#include "../anim/anim.h"

typedef struct s_player
{
	t_anim		*current_anim;
	t_anim		*walk;
	t_anim		*idle;
	t_anim		*atk_side;
}	t_player;

static void	player_free(t_entity *entity);

t_entity	*player_new(t_game *game, t_vec2 pos)
{
	t_entity	*player;
	t_player	*ext;

	player = malloc(sizeof(t_entity));
	player->game = game;
	player->type = ETYPE_PLAYER;
	player->state = STATE_ALIVE;
	player->pos = pos;
	player->box = (t_box){{5, 43}, {59, 69}};
	player->update = player_update;
	player->free = player_free;
	ext = malloc(sizeof(t_player));
	player->extension = ext;
	ext->walk = anim_new(game->goblin_walk, 6, 100, true);
	ext->idle = anim_new(game->goblin_idle, 6, 100, true);
	ext->atk_side = anim_new(game->goblin_atk_side, 6, 100, true);
	ext->current_anim = ext->walk;
	player->sprite = game->goblin_idle[0];
	player->sprite_offset = (t_vec2){-64, -64};
	player->z_index = 150;
	player->vel = (t_vec2){};
	player->max_health = 5;
	player->health = player->max_health;
	return (player);
}

static void	player_free(t_entity *entity)
{
	t_player	*ext;

	ext = entity->extension;
	free(ext->walk);
	free(ext->idle);
	free(ext->atk_side);
	free(entity->extension);
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

static bool	_is_attacking(t_player *ext)
{
	return ((ext->current_anim == ext->atk_side)
			&& (ext->current_anim->current_frame < 5 && ext->current_anim->current_frame > 2
				/*&& getms() - ext->current_anim->last_frame
					< ext->current_anim->frame_interval*/));
}

void	player_update(t_game *game, t_entity *entity)
{
	t_vec2		exit_pos;
	t_player	*ext;

	ext = entity->extension;
	if (entity->health <= 0)
	{
		game->menu_opened = true;
		return ;
	}
	if (game->keys[' '] && !_is_attacking(ext))
	{
		ext->current_anim->current_frame = 0;
		ext->current_anim->last_frame = 0;
		ext->current_anim = ext->atk_side;
	}
	entity->sprite = anim_get_sprite(ext->current_anim);
	anim_update(ext->current_anim);
	if (game->keys[XK_Right])
		entity->vel.x += PLAYER_SPEED;
	if (game->keys[XK_Left])
		entity->vel.x -= PLAYER_SPEED;
	if (game->keys[XK_Up])
		entity->vel.y -= PLAYER_SPEED;
	if (game->keys[XK_Down])
		entity->vel.y += PLAYER_SPEED;
	if ((game->keys[XK_Right] || game->keys[XK_Left] || game->keys[XK_Up]
		|| game->keys[XK_Down]) && !_is_attacking(ext))
		ext->current_anim = ext->walk;
	else if (!_is_attacking(ext))
		ext->current_anim = ext->idle;
	if (game->keys[XK_Right])
		entity->flipped = false;
	else if (game->keys[XK_Left])
		entity->flipped = true;
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
	printf("Health %d/%d\n", entity->health, entity->max_health);
}
