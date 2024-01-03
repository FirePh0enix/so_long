/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 20:02:42 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 12:20:16 by ledelbec         ###   ########.fr       */
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
			if (map->data[x + y * map->width] == TILE_SOLID)
				graph_add_sprite(graph, game->solid, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE},
					0, (t_effect){NULL, NULL});
			else if (map->data[x + y * map->width] == TILE_EMPTY)
				graph_add_sprite(graph, game->ground, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE},
					0, (t_effect){NULL, NULL});
			y++;
		}
		x++;
	}
}

static	t_tile	_etype_to_tile(t_etype etype)
{
	if (etype == ETYPE_GEM)
		return (TILE_COLLECT);
	else if (etype == ETYPE_PLAYER)
		return (TILE_PLAYER);
	return (TILE_EMPTY);
}

static void	_save_entities(t_map *map, t_entity **entities)
{
	unsigned int	i;
	t_entity		*entity;

	i = 0;
	while (i < vector_size(entities))
	{
		entity = entities[i];
		map->data[(entity->pos.x / SCALED_SIZE)
			+ (entity->pos.y / SCALED_SIZE) * map->width]
				= _etype_to_tile(entity->type);
		i++;
	}
}

void	map_save(t_map *map, t_game *game, char *filename)
{
	int			x;
	int			y;
	t_tile		tile;
	const int	fd = open(filename, O_WRONLY);

	_save_entities(map, game->entities);
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
			else if (tile == TILE_COLLECT)
				write(fd, "C", 1);
			else if (tile == TILE_PLAYER)
				write(fd, "P", 1);
			x++;
		}
		write(fd, "\n", 1);
		y++;
	}
	printf("Map saved to %s\n", filename);
}
