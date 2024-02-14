/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/10 12:17:49 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/14 15:14:36 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"
#include "../data/vector.h"

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

static t_tile	_put_tile(t_game *game, char c, t_vec2i pos, int level)
{
	if (c == '1')
		return (TILE_SOLID);
	else if (c == '0')
		return (TILE_EMPTY);
	else if (c == 'E')
	{
		game->exit_pos = (t_vec2){pos.x * 64, pos.y * 64};
		game->exit_level = level;
		return (TILE_DOOR);
	}
	else if (c == 'S')
		return (TILE_STAIR);
	else if (c == 'C')
	{
		add_entity(&game->entities, gem_new(game, (t_vec2){pos.x * 64, pos.y * 64}));
		game->collectibles_count++;
		return (TILE_EMPTY);
	}
	else if (c == 'F')
	{
		add_entity(&game->entities, knight_new(game, (t_vec2){pos.x * 64, pos.y * 64}));
		return (TILE_EMPTY);
	}
	else if (c == 'P')
	{
		if (game->player)
			return (-1);
		game->player = add_entity(&game->entities,
				player_new(game, (t_vec2){pos.x * 64, pos.y * 64}));
		return (TILE_EMPTY);
	}
	return (-1);
}

static int	_load_level(t_game *game, t_level *level, int index, char *filename)
{
	int	x;
	int	y;

	level->string = _read_to_string(filename);
	level->width = line_width_and_check(level->string);
	if (level->width == -1)
		return (-1);
	level->height = line_count(level->string);
	level->data = malloc(sizeof(t_tile) * level->width * level->height);
	level->filename = filename;
	x = -1;
	while (++x < level->width)
	{
		y = -1;
		while (++y < level->height)
			level->data[x + y * level->width] = _put_tile(game,
					level->string[x + y * (level->width + 1)], (t_vec2i){x, y},
					index);
	}
	return (0);
}

t_map2	*map2_load(t_game *game, char **filenames, int count)
{
	int		i;
	t_map2	*map;

	if (!check_files(filenames, count))
		return (NULL);
	map = malloc(sizeof(t_map2));
	map->levels = malloc(sizeof(t_level) * count);
	map->level_count = count;
	i = -1;
	while (++i < count)
		if (_load_level(game, map->levels + i, i, filenames[i]) == -1)
			return (NULL);
	map->width = map->levels[0].width;
	map->height = map->levels[0].height;
	if (!check_errors(map))
		return (free(map), NULL); // Free here
	return (map);
}

void	map2_reload(t_game *game, t_map2 *map)
{
	int	i;

	vector_free(game->entities); // Correctly free entities
	game->entities = vector_new(sizeof(void *), 0);
	game->player = NULL;
	i = -1;
	while (++i < map->level_count)
		_load_level(game, map->levels + i, i, map->levels[i].filename);
}
