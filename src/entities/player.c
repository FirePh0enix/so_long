/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/22 11:10:26 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include <stdlib.h>
#include <sys/select.h>
#include "../anim/anim.h"
#include "../so_long.h"

static void	player_free(t_entity *entity);

t_entity	*player_new(t_game *game, t_vec2 pos, int level)
{
	t_entity	*player;
	t_player	*ext;

	player = ft_calloc(1, sizeof(t_entity));
	player->game = game;
	player->type = ETYPE_PLAYER;
	player->state = STATE_ALIVE;
	player->pos = pos;
	player->box = (t_box){{5, 43}, {59, 69}};
	player->update = player_update;
	player->free = player_free;
	ext = ft_calloc(1, sizeof(t_player));
	player->extension = ext;
	ext->walk = anim_new(game->goblin_walk, 6, 100, true);
	ext->idle = anim_new(game->goblin_idle, 6, 100, true);
	ext->atk_side = anim_new(game->goblin_atk_side, 6, 100, true);
	ext->current_anim = ext->walk;
	player->sprite = game->goblin_idle[0];
	player->sprite_offset = (t_vec2){-64, -64};
	player->z_index = 15;
	player->vel = (t_vec2){};
	player->max_health = 5;
	player->health = player->max_health;
	player->level = level;
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
