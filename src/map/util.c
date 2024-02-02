/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 20:02:42 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 00:50:26 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../graph.h"
#include <X11/Xlib.h>
#include <fcntl.h>

void	map_deinit(t_map *map)
{
	free(map);
}

/*
 * Add two tiles: The bottom stone cliff and the top grass ground.
 */
static void _add_tile_sprite(t_game *game, int x, int y)
{
	graph_add_sprite(game->graph, get_undertile(game, game->map, x, y),
		(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, -1, false);
	graph_add_sprite(game->graph, get_ground_tile(game, game->map, x, y),
		(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0, false);
}

void	map_add_to_graph(t_map *map, t_game *game, t_graph *graph)
{
	int	x;
	int	y;

	x = 0;
	while (x < map->width)
	{
		y = 0;
		while (y < map->height)
		{
			if (map->data[x + y * map->width] == TILE_SOLID)
				graph_add_sprite(graph, game->solid,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0, false);
			else if (map->data[x + y * map->width] == TILE_EMPTY)
				_add_tile_sprite(game, x, y);
			else if (map->data[x + y * map->width] == TILE_DOOR)
				graph_add_sprite(graph, game->door,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0, false);
			y++;
		}
		x++;
	}
}
