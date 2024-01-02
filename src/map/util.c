/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 20:02:42 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 23:32:17 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../graph.h"
#include <X11/Xlib.h>
#include <fcntl.h>
#include <stdio.h>

void	map_deinit(t_map *map)
{
	free(map);
}

void	map_add_to_graph(t_map *map, t_game *game, t_render_graph *graph)
{
	int	x;
	int	y;

	x = 0;
	while (x < map->width)
	{
		y = 0;
		while (y < map->height)
		{
			if (map->data[x + y * map->width] == TILE_EMPTY)
				graph_add_sprite(graph, game->ground, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE},
					0, (t_effect){NULL, NULL});
			else if (map->data[x + y * map->width] == TILE_SOLID)
				graph_add_sprite(graph, game->solid, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE},
					0, (t_effect){NULL, NULL});
			y++;
		}
		x++;
	}
}

void	map_save(t_map *map, char *filename)
{
	int		x;
	int		y;
	t_tile	tile;
	int		fd;

	fd = open(filename, O_WRONLY);
	if (fd == -1)
		return ;
	y = 0;
	while (y < map->height)
	{
		x = 0;
		while (x < map->width)
		{
			tile = map->data[x + y * map->width];
			if (tile == TILE_SOLID)
				write(fd, "1", 1);
			else if (tile == TILE_EMPTY)
				write(fd, "0", 1);
			x++;
		}
		write(fd, "\n", 1);
		y++;
	}
	printf("Map saved to %s\n", filename);
}
