/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   save.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/13 16:23:00 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 13:51:05 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"
#include "../data/vector.h"

static void	_save_entities(t_level *level, int index, t_entity **entities)
{
	unsigned int	i;
	t_entity		*entity;

	i = 0;
	while (i < vector_size(entities))
	{
		entity = entities[i];
		if (entity->level == index)
			level->data[((int)entity->pos.x / SCALED_SIZE)
				+ ((int)entity->pos.y / SCALED_SIZE) * level->width]
				= etype_to_tile(entity->type);
		i++;
	}
}

static char	*_get_tile_str(t_tile tile)
{
	if (tile == TILE_SOLID)
		return ("1");
	else if (tile == TILE_EMPTY)
		return ("0");
	else if (tile == TILE_DOOR)
		return ("E");
	else if (tile == TILE_COLLECT)
		return ("C");
	else if (tile == TILE_PLAYER)
		return ("P");
	else if (tile == TILE_ENEMY)
		return ("E");
	else if (tile == TILE_STAIR)
		return ("S");
	return ("@");
}

static void	_rewrite_to_string(t_level *level)
{
	int			x;
	int			y;
	const int	width = level->width + 1;

	free(level->string);
	level->string = ft_calloc(1, width * level->height);
	if (!level->string)
		return ;
	x = 0;
	while (x < level->width)
	{
		y = 0;
		while (y < level->height)
		{
			level->string[x + y * width] = _get_tile_str(
					level->data[x + y * level->width])[0];
			y++;
		}
		level->string[(width - 1) + (y - 1) * width] = '\n';
		x++;
	}
}

static void	_save_level(t_level *level, int index, t_game *game)
{
	int			x;
	int			y;
	t_tile		tile;
	const int	fd = open(level->filename, O_WRONLY);

	_save_entities(level, index, game->entities);
	if (fd == -1)
		return ;
	y = 0;
	while (y < level->height)
	{
		x = 0;
		while (x < level->width)
		{
			tile = level->data[x + y * level->width];
			write(fd, _get_tile_str(tile), 1);
			x++;
		}
		write(fd, "\n", 1);
		y++;
	}
	close(fd);
	_rewrite_to_string(level);
	ft_printf("Map saved to %s\n", level->filename);
}

void	map2_save(t_map2 *map, t_game *game)
{
	int	i;

	i = -1;
	while (++i < map->level_count)
		_save_level(&map->levels[i], i, game);
}
