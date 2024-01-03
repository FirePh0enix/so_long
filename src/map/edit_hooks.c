/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit_hooks.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:51:30 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 19:52:53 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../graph.h"
#include "../data/vector.h"

static void	_handle_keypress(t_game *game)
{
	if (game->keys['1'])
		game->editor.item = ITEM_EMPTY;
	else if (game->keys['2'])
		game->editor.item = ITEM_SOLID;
	else if (game->keys['3'])
		game->editor.item = ITEM_DOOR;
	else if (game->keys['4'])
		game->editor.item = ITEM_COLLECT;
	else if (game->keys['5'])
		game->editor.item = ITEM_PLAYER;
}

static void	_draw_editor_item(t_game *game)
{
	t_graph	*graph;

	graph = game->graph;
	if (game->editor.item == ITEM_EMPTY)
		graph_add_sprite(graph, game->ground, (t_vec2){16, 480 - 56}, 999);
	else if (game->editor.item == ITEM_SOLID)
		graph_add_sprite(graph, game->solid, (t_vec2){16, 480 - 56}, 999);
	else if (game->editor.item == ITEM_DOOR)
		graph_add_sprite(graph, game->door, (t_vec2){16, 480 - 56}, 999);
	else if (game->editor.item == ITEM_COLLECT)
		graph_add_sprite(graph, game->gem, (t_vec2){16, 480 - 56}, 999);
	else if (game->editor.item == ITEM_PLAYER)
		graph_add_sprite(graph, game->solid, (t_vec2){16, 480 - 56}, 999);
}

int	edit_update_hook(t_game *game)
{
	suseconds_t		time;
	unsigned int	i;
	t_entity		*entity;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	_handle_keypress(game);
	_draw_editor_item(game);
	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		graph_add_sprite(game->graph, entity->sprite, entity->pos,
			entity->z_index);
		i++;
	}
	map_add_to_graph(game->map, game, game->graph);
	clear_screen(game, 0x0);
	graph_draw(game->graph, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	graph_reset(game->graph);
	return (0);
}
