/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   update.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:21:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 16:50:16 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "anim/anim.h"
#include "entity.h"
#include "data/vector.h"
#include "gui.h"
#include "mlx.h"
#include "so_long.h"
#include "render/render.h"
#include "edit/edit.h"

static void	_collect_entities(t_entity ***entities)
{
	unsigned int	i;

	while (1)
	{
		i = 0;
		while (i < vector_size(*entities))
		{
			if ((*entities)[i]->state == STATE_DEAD)
				break ;
			i++;
		}
		if (i >= vector_size(*entities))
			break ;
		entity_free((*entities)[i]);
		vector_remove((void **)entities, i);
	}
}

static void	_update_entities(t_game *game, bool update)
{
	unsigned int	i;
	t_entity		*entity;

	i = -1;
	while (++i < vector_size(game->entities))
	{
		entity = game->entities[i];
		if (update && entity->update)
			entity->update(game, entity);
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
				entity->sprite_offset),
			(t_add_sprite){entity->z_index, entity->level, entity->flipped,
			true});
	}
}

static void	_check_victory(t_game *game, t_entity *player)
{
	if (game->editor_mode)
		return ;
	if ((box_collide_with_box(box_for_position(player->box, player->pos),
				box_for_position((t_box){{0, 0},
					{16 * SCALE, 16 * SCALE}}, game->exit_pos))
		|| (game->player2 != NULL && box_collide_with_box(
				box_for_position(game->player2->box, game->player2->pos),
				box_for_position((t_box){{0, 0},
					{16 * SCALE, 16 * SCALE}}, game->exit_pos))))
		&& game->collectibles == game->collectibles_count)
	{
		game->end_reached = true;
		game->end_time = getms();
	}
}

static void	_update_game(t_game *game)
{
	if (game->editor_mode)
		edit_update(game);
	else
		draw_hud(game);
	_update_entities(game, !game->editor_mode);
	_collect_entities(&game->entities);
	if (!game->player && !game->end_reached)
	{
		game->end_reached = true;
		game->end.title = "Game over";
		game->end_time = getms();
		return ;
	}
	_check_victory(game, game->player);
	if (game->player2 == NULL)
	{
		game->camera_pos.x = game->player->pos.x;
		game->camera_pos.y = game->player->pos.y;
	}
	else
	{
		game->camera_pos.x = (game->player->pos.x + game->player2->pos.x) / 2;
		game->camera_pos.y = (game->player->pos.y + game->player2->pos.y) / 2;
	}
}

int	update_hook(t_game *game)
{
	suseconds_t		time;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	rdr_clear_screen(game, 0x0);
	map2_draw(game, game->map2, game->rdr);
	if (game->menu_opened)
		draw_menu(game, game->menu);
	else if (!game->end_reached)
		_update_game(game);
	else
		draw_end(game);
	rdr_draw(game->rdr, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	rdr_clear(game->rdr);
	anim_update(game->foam_anim);
	return (0);
}
