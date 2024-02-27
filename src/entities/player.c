/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:15:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 16:42:00 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include <stdlib.h>
#include <sys/select.h>
#include "../anim/anim.h"
#include "../so_long.h"

static void	player_free(t_entity *entity);

static t_img	**_anim(t_game *g, int i, bool is_player2)
{
	if (is_player2 && i == 0)
		return (g->goblin2_walk);
	else if (is_player2 && i == 1)
		return (g->goblin2_idle);
	else if (is_player2 && i == 2)
		return (g->goblin2_atk_side);
	else if (!is_player2 && i == 0)
		return (g->goblin_walk);
	else if (!is_player2 && i == 1)
		return (g->goblin_idle);
	else if (!is_player2 && i == 2)
		return (g->goblin_atk_side);
	return (NULL);
}

t_entity	*player_new(t_game *game, t_vec2 pos, int level, bool is_player2)
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
	ext->walk = anim_new(_anim(game, 0, is_player2), 6, 100, true);
	ext->idle = anim_new(_anim(game, 1, is_player2), 6, 100, true);
	ext->atk_side = anim_new(_anim(game, 2, is_player2), 6, 100, true);
	ext->current_anim = ext->walk;
	ext->is_p2 = is_player2;
	player->sprite = game->goblin_idle[0];
	player->sprite_offset = (t_vec2){-64, -64};
	player->z_index = 15;
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

int	_keycode(t_game *g, t_entity *e, int keycode, bool is_p2)
{
	(void) g;
	(void) e;
	if (is_p2)
	{
		if (keycode == XK_Right)
			return (XK_d);
		else if (keycode == XK_Left)
			return (XK_a);
		else if (keycode == XK_Up)
			return (XK_w);
		else if (keycode == XK_Down)
			return (XK_s);
	}
	return (keycode);
}
