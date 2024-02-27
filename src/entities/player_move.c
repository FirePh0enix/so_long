/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player_move.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 13:26:35 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:27:48 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"

void	move_player(t_game *game, t_entity *ent)
{
	while (ent->vel.x != 0)
	{
		if (!box_collide_with_map2(game, box_for_position(
					ent->box, vec2_add(ent->pos,
						(t_vec2){ent->vel.x, 0})), ent->level, game->map2))
			break ;
		if (ent->vel.x > 0)
			ent->vel.x--;
		else
			ent->vel.x++;
	}
	ent->pos.x += ent->vel.x;
	while (ent->vel.y != 0)
	{
		if (!box_collide_with_map2(game, box_for_position(
					ent->box, vec2_add(ent->pos,
						(t_vec2){0, ent->vel.y})), ent->level, game->map2))
			break ;
		if (ent->vel.y > 0)
			ent->vel.y--;
		else
			ent->vel.y++;
	}
	ent->pos.y += ent->vel.y;
}
