/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 19:14:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 17:00:57 by ledelbec         ###   ########.fr       */
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

static int	_line_width_and_check(char *str)
{
	int	i;
	int	first_len;
	int	len;

	i = 0;
	first_len = -1;
	len = 0;
	while (str[i])
	{
		if (str[i] == '\n')
		{
			if (first_len == -1)
				first_len = len;
			else if (first_len != len)
				return (-1);
			len = 0;
		}
		else
			len++;
		i++;
	}
	return (first_len);
}

static int	_line_count(char *str)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	while (str[i])
	{
		if (str[i] == '\n')
			count++;
		i++;
	}
	return (count);
}

static bool	_check_borders(t_map *map)
{
	int	i;

	i = 0;
	while (i < map->width)
	{
		if (map->data[i] != TILE_SOLID)
			return (false);
		else if (map->data[i + (map->height - 1) * map->width] != TILE_SOLID)
			return (false);
		i++;
	}
	i = 0;
	while (i < map->height)
	{
		if (map->data[i * map->width] != TILE_SOLID)
			return (false);
		else if (map->data[(map->width - 1) + i * map->width] != TILE_SOLID)
			return (false);
		i++;
	}
	return (true);
}

static t_tile	*_parse_map(char *str, int width, int height, t_game *game)
{
	int			x;
	int			y;
	char		c;
	t_tile		*tiles;
	t_entity	*entity;

	tiles = malloc(sizeof(t_tile) * width * height);
	x = 0;
	while (x < width)
	{
		y = 0;
		while (y < height)
		{
			c = str[x + y * (width + 1)];
			if (c == '1')
				tiles[x + y * width] = TILE_SOLID;
			else if (c == '0')
				tiles[x + y * width] = TILE_EMPTY;
			else if (c == 'E')
				tiles[x + y * width] = TILE_DOOR;
			else if (c == 'C')
			{
				tiles[x + y * width] = TILE_EMPTY;
				entity = gem_new(game, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE});
				vector_add((void **) &game->entities, &entity);
				game->collectibles_count++;
			}
			else if (c == 'P')
			{
				tiles[x + y * width] = TILE_EMPTY;
				game->start_pos = (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE};
				entity = player_new(game, (t_vec2){x * SCALED_SIZE, y * SCALED_SIZE});
				vector_add((void **) &game->entities, &entity);
				game->player = entity; // FIXME Check if there is only one player
			}
			else
			{
				free(tiles);
				return (NULL);
			}
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
	width = _line_width_and_check(str);
	height = _line_count(str);
	if (width == -1)
		return (free(str), NULL);
	map = malloc(sizeof(t_map));
	map->width = width;
	map->height = height;
	map->data = _parse_map(str, width, height, game);
	if (map->data == NULL)
		return (free(map), map);
	if (!_check_borders(map) && !bypass)
	{
		free(map->data);
		free(map);
		map = NULL;
	} else if (!_check_borders(map))
		ft_printf("\nWarning: Map is invalid but will still be loaded by the editor\n\n");
	return (map);
}
