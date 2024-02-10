/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 19:14:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/10 11:41:25 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"
#include "../data/vector.h"
#include "libft.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>

static char	*_read_to_string(char *filename)
{
	int		fd;
	char	*str;
	char	buffer[4096];
	int		str_size;
	int		n;

	fd = open(filename, O_RDONLY);
	if (fd == -1)
		return (NULL);
	str = NULL;
	str_size = 0;
	n = 4096;
	while (n > 0)
	{
		n = read(fd, buffer, 4096);
		str = realloc(str, str_size + n + 1);
		ft_memcpy(str + str_size, buffer, n);
		str[str_size + n] = '\0';
		str_size += n;
	}
	close(fd);
	return (str);
}

static void	_fill_collectible(t_game *game, t_tile *tiles, t_boxi dim)
{
	tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_EMPTY;
	add_entity(&game->entities,
		gem_new(game, (t_vec2){dim.min.x * SCALED_SIZE,
			dim.min.y * SCALED_SIZE}));
	game->collectibles_count++;
}

static void	_fill_enemy(t_game *game, t_tile *tiles, t_boxi dim)
{
	tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_EMPTY;
	add_entity(&game->entities,
		knight_new(game, (t_vec2){dim.min.x * SCALED_SIZE,
			dim.min.y * SCALED_SIZE}));
}

static int	_fill_tile(t_game *game, char c, t_tile *tiles, t_boxi dim)
{
	if (c == '1')
		tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_SOLID;
	else if (c == '0')
		tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_EMPTY;
	else if (c == 'E')
		tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_DOOR;
	else if (c == 'C')
		_fill_collectible(game, tiles, dim);
	else if (c == 'F')
		_fill_enemy(game, tiles, dim);
	else if (c == 'P')
	{
		tiles[dim.min.x + dim.min.y * dim.max.x] = TILE_EMPTY;
		game->start_pos = (t_vec2){dim.min.x * SCALED_SIZE,
			dim.min.y * SCALED_SIZE};
		if (game->player)
			return (0);
		game->player = add_entity(&game->entities, player_new(game,
					(t_vec2){dim.min.x * SCALED_SIZE,
					dim.min.y * SCALED_SIZE}));
	}
	else
		return (0);
	return (1);
}

static t_tile	*_parse_map(char *str, int width, int height, t_game *game)
{
	int			x;
	int			y;
	t_tile		*tiles;

	tiles = malloc(sizeof(t_tile) * width * height);
	x = 0;
	while (x < width)
	{
		y = 0;
		while (y < height)
		{
			if (!_fill_tile(game, str[x + y * (width + 1)],
					tiles, (t_boxi){{x, y}, {width, height}}))
				return (free(tiles), NULL);
			y++;
		}
		x++;
	}
	return (tiles);
}

t_map	*map_load(t_game *game, char *filename, bool bypass)
{
	char	*str;
	int		width;
	int		height;
	t_map	*map;

	str = _read_to_string(filename);
	width = line_width_and_check(str);
	height = line_count(str);
	if (width == -1)
		return (free(str), NULL);
	map = malloc(sizeof(t_map));
	map->width = width;
	map->height = height;
	map->string = str;
	map->data = _parse_map(map->string, width, height, game);
	if (map->data == NULL)
		return (free(map), map);
	if (!check_borders(map) && !bypass)
		return (free(map->data), free(map), NULL);
	else if (!check_borders(map))
		ft_printf("\nWarning: Invalid map\n\n");
	return (map);
}

/*
 * This function is called to reload the map.
 */
void	map_reload(t_game *game, t_map *map)
{
	// Entities must also be free'd alongside their extension.
	vector_free(game->entities);
	game->entities = vector_new(sizeof(void *), 0);
	game->player = NULL;
	map->data = _parse_map(map->string, map->width, map->height, game);
}
