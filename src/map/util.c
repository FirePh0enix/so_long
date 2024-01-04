/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 20:02:42 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/04 11:02:31 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../graph.h"
#include "../data/vector.h"
#include "../entity.h"
#include <X11/Xlib.h>
#include <fcntl.h>
#include <stdio.h>

void	map_deinit(t_map *map)
{
	free(map);
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
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0);
			else if (map->data[x + y * map->width] == TILE_EMPTY)
				graph_add_sprite(graph, game->ground,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0);
			else if (map->data[x + y * map->width] == TILE_DOOR)
				graph_add_sprite(graph, game->door,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, 0);
			y++;
		}
		x++;
	}
}
