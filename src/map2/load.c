/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/10 12:17:49 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/10 20:30:58 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"

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

static t_tile	_put_tile(t_game *game, char c, int x, int y)
{
	if (c == '1')
		return (TILE_SOLID);
	else if (c == '0')
		return (TILE_EMPTY);
	else if (c == 'E')
		return (TILE_DOOR);
	else if (c == 'C')
	{
		add_entity(&game->entities, gem_new(game, (t_vec2){x * 64, y * 64}));
		return (TILE_EMPTY);
	}
	else if (c == 'F')
	{
		add_entity(&game->entities, knight_new(game, (t_vec2){x * 64, y * 64}));
		return (TILE_EMPTY);
	}
	else if (c == 'P')
	{
		game->player = add_entity(&game->entities,
				player_new(game, (t_vec2){x * 64, y * 64}));
		return (TILE_EMPTY);
	}
	return (-1);
}

static void	_load_level(t_game *game, t_level *level, char *filename)
{
	int	x;
	int	y;

	level->string = _read_to_string(filename);
	level->width = line_width_and_check(level->string);
	level->height = line_count(level->string);
	level->data = malloc(sizeof(t_tile) * level->width * level->height);
	x = -1;
	while (++x < level->width)
	{
		y = -1;
		while (++y < level->height)
			level->data[x + y * level->width] = _put_tile(game,
					level->string[x + y * (level->width + 1)], x, y);
	}
}

t_map2	*map2_load(t_game *game, char **filenames, int count)
{
	int		i;
	t_map2	*map;

	map = malloc(sizeof(t_map2));
	map->levels = malloc(sizeof(t_level) * count);
	map->level_count = count;
	printf("%d\n", map->level_count);
	i = -1;
	// TODO: Check errors
	while (++i < count)
		_load_level(game, map->levels + i, filenames[i]);
	map->width = map->levels[0].width;
	map->height = map->levels[0].height;
	return (map);
}
