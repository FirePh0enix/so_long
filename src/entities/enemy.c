/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   enemy.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/05 10:43:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/08 10:25:32 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"

t_entity	*enemy_new(t_game *game, t_vec2 pos)
{
	t_entity	*enemy;

	enemy = malloc(sizeof(t_entity));
	enemy->game = game;
	enemy->type = ETYPE_ENEMY;
	enemy->state = STATE_ALIVE;
	enemy->pos = pos;
	enemy->sprite = game->door;
	enemy->box = (t_box){{0, 0}, {16 * SCALE, 16 * SCALE}};
	enemy->update = enemy_update;
	enemy->z_index = 1;
	return (enemy);
}

void	enemy_update(t_game *game, t_entity *enemy)
{
}
