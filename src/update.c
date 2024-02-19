/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   update.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:21:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/19 14:14:29 by ledelbec         ###   ########.fr       */
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

	i = 0;
	while (1)
	{
		i = 0;
		while (i < vector_size(*entities))
		{
			if ((*entities)[i]->state == STATE_DEAD)
				break ;
			i++;
		}
		if (i == vector_size(*entities))
			break ;
		ft_printf("Entity collected!\n");
		vector_remove((void **)entities, i);
	}
}

static void	_update_entities(t_game *game, bool update)
{
	unsigned int	i;
	t_entity		*entity;

	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		if (update)
			entity->update(game, entity);
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
				entity->sprite_offset),
			(t_add_sprite){entity->z_index, entity->level, entity->flipped});
		i++;
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
	else
	{
		_update_entities(game, !game->editor_mode);
		if (game->editor_mode)
			edit_update(game);
		else
			draw_hud(game);
		_collect_entities(&game->entities);
	}
	rdr_draw(game->rdr, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	rdr_clear(game->rdr);
	anim_update(game->foam_anim);
	return (0);
}
