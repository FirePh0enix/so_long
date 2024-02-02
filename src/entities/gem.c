/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gem.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 23:46:40 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 00:18:29 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../anim/anim.h"
#include <stdio.h>

typedef struct s_money
{
	t_anim	*anim;
}	t_money;

t_entity	*gem_new(t_game *game, t_vec2 pos)
{
	t_entity	*gem;
	t_money		*ext;

	gem = malloc(sizeof(t_entity));
	gem->game = game;
	gem->type = ETYPE_GEM;
	gem->state = STATE_NOT_ALIVE;
	gem->pos = pos;
	ext = malloc(sizeof(t_money));
	gem->extension = ext;
	ext->anim = anim_new(game->money_spawn, 7, 1000 / 7, false);
	gem->box = (t_box){{16, 16}, {48 * SCALE, 48 * SCALE}};
	gem->sprite_offset = (t_vec2){-32, -32};
	gem->update = gem_update;
	gem->sprite = game->money_spawn[6];
	gem->z_index = 1;
	return (gem);
}

void	gem_update(t_game *game, t_entity *entity)
{
	t_money	*money;
	const t_box	pbox = {{0, 0},{64, 64}};

	money = entity->extension;
	entity->sprite = anim_get_sprite(money->anim);
	anim_update(money->anim);
	if (box_collide_with_box(box_for_position(entity->box, entity->pos),
			box_for_position(pbox, game->player->pos)))
	{
		entity->state = STATE_DEAD;
		game->collectibles++;
		printf("Collectibles: %d/%d\n",
			game->collectibles,
			game->collectibles_count);
	}
}
