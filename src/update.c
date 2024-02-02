/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   update.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:21:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/02 15:17:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "graph.h"
#include "entity.h"
#include "data/vector.h"
#include "gui.h"
#include "mlx.h"
#include "so_long.h"

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

int	update_hook(t_game *game)
{
	unsigned int	i;
	t_entity		*entity;
	suseconds_t		time;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	if (game->menu_opened)
	{
		clear_screen(game, 0x0);
		draw_menu(game, game->menu);
		mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
		return (0);
	}
	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		entity->update(game, entity);
		graph_add_sprite(game->graph, entity->sprite, vec2_add(entity->pos,
			entity->sprite_offset), entity->z_index, entity->flipped);
		i++;
	}
	_collect_entities(&game->entities);
	map_add_to_graph(game->map, game, game->graph);
	clear_screen(game, 0x0);
	graph_draw(game->graph, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	graph_reset(game->graph);
	return (0);
}
