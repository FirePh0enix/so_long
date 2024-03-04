/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/10 12:17:49 by ledelbec          #+#    #+#             */
/*   Updated: 2024/03/04 11:21:02 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"
#include "../data/vector.h"

static t_tile	_put_player(t_game *game, t_vec2i pos, int level)
{
	if (game->player)
		return (-1);
	game->start_pos.x = pos.x;
	game->start_pos.y = pos.y;
	game->start_level = level;
	game->player = add_entity(&game->entities,
			player_new(game, (t_vec2){pos.x * 64, pos.y * 64 - 16}, level, 0));
	return (TILE_EMPTY);
}

static t_tile	_put_tile(t_game *game, char c, t_vec2i pos, int level)
{
	if (c == '1')
		return (TILE_SOLID);
	else if (c == '0')
		return (TILE_EMPTY);
	else if (c == 'E')
		return (game->exit_pos = (t_vec2){pos.x * 64, pos.y * 64},
			game->exit_level = level, TILE_DOOR);
	else if (BONUS && c == 'S')
		return (TILE_STAIR);
	else if (c == 'C')
	{
		add_entity(&game->entities, gem_new(game, (t_vec2){pos.x * 64,
				pos.y * 64}, level));
		game->collectibles_count++;
		return (TILE_EMPTY);
	}
	else if (BONUS && c == 'F')
	{
		add_entity(&game->entities, knight_new(game, (t_vec2){pos.x * 64,
				pos.y * 64}, level));
		return (TILE_EMPTY);
	}
	else if (c == 'P')
		return (_put_player(game, pos, level));
	return (-1);
}

static int	_load_level(t_game *game, t_level *level, int index)
{
	int		x;
	int		y;
	t_tile	tile;

	level->width = line_width_and_check(level->string);
	if (level->width == -1)
		return (-1);
	level->height = line_count(level->string);
	level->data = malloc(sizeof(t_tile) * level->width * level->height);
	if (!level->data)
		return (free(level->string), -1);
	x = -1;
	while (++x < level->width)
	{
		y = -1;
		while (++y < level->height)
		{
			tile = _put_tile(game, level->string[x + y * (level->width + 1)],
					(t_vec2i){x, y}, index);
			if ((int) tile == -1)
				return (-1);
			level->data[x + y * level->width] = tile;
		}
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
	map->levels = malloc(sizeof(t_level) * (count + 1));
	map->level_count = count;
	i = -1;
	while (++i < count)
	{
		map->levels[i].map = map;
		map->levels[i].filename = filenames[i];
		map->levels[i].string = read_to_string(filenames[i]);
		map->levels[i].index = i;
		if (_load_level(game, map->levels + i, i) == -1)
			return (map2_free(map), NULL);
	}
	map->width = map->levels[0].width;
	map->height = map->levels[0].height;
	if (!check_errors(map) || !check_finish(game, map))
		return (map2_free(map), NULL);
	game->map_valid = true;
	return (map);
}

void	map2_reload(t_game *game, t_map2 *map)
{
	int	i;

	vector_free_with(game->entities, (void *) entity_free);
	game->entities = vector_new(sizeof(void *), 0);
	game->player = NULL;
	game->collectibles = 0;
	game->collectibles_count = 0;
	i = -1;
	while (++i < map->level_count)
	{
		map->levels[i].map = map;
		map->levels[i].string = read_to_string(map->levels[i].filename);
		map->levels[i].index = i;
		_load_level(game, map->levels + i, i);
	}
	if (check_errors(map) && check_finish(game, map))
		game->map_valid = true;
	else
		game->map_valid = false;
}
