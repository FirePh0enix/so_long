/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   save.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:36:59 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 22:12:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"
#include "../data/vector.h"

static	t_tile	_etype_to_tile(t_etype etype)
{
	if (etype == ETYPE_GEM)
		return (TILE_COLLECT);
	else if (etype == ETYPE_PLAYER)
		return (TILE_PLAYER);
	else if (etype == ETYPE_ENEMY)
		return (TILE_ENEMY);
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
		map->data[((int)entity->pos.x / SCALED_SIZE)
			+ ((int)entity->pos.y / SCALED_SIZE) * map->width]
			= _etype_to_tile(entity->type);
		i++;
	}
}

static void	_print_tile(int fd, t_tile tile)
{
	if (tile == TILE_SOLID)
		write(fd, "1", 1);
	else if (tile == TILE_EMPTY)
		write(fd, "0", 1);
	else if (tile == TILE_DOOR)
		write(fd, "E", 1);
	else if (tile == TILE_COLLECT)
		write(fd, "C", 1);
	else if (tile == TILE_PLAYER)
		write(fd, "P", 1);
	else if (tile == TILE_ENEMY)
		write(fd, "F", 1);
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
			_print_tile(fd, tile);
			x++;
		}
		write(fd, "\n", 1);
		y++;
	}
	ft_printf("Map saved to %s\n", filename);
}
