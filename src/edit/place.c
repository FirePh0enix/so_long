/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   place.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/04 17:47:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 12:35:03 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "edit.h"
#include "../so_long.h"
#include "../entity.h"

static void	_place_collectible(t_game *game, t_level *level, int x, int y)
{
	const int	tile_x = x / SCALED_SIZE;
	const int	tile_y = y / SCALED_SIZE;

	remove_entity(game, x, y);
	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
	add_entity(&game->entities, gem_new(game,
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
	game->collectibles_count++;
}

static void	_place_player(t_game *game, t_level *level, int x, int y)
{
	const int	tile_x = x / SCALED_SIZE;
	const int	tile_y = y / SCALED_SIZE;

	level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
	add_entity(&game->entities, player_new(game,
			(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level, false));
}

static void	_place_item(int x, int y, t_item item, t_game *game)
{
	const int	tile_x = x / SCALED_SIZE;
	const int	tile_y = y / SCALED_SIZE;
	t_level		*level;

	level = &game->map2->levels[game->editor.level];
	if (item == ITEM_EMPTY)
		level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
	else if (item == ITEM_SOLID)
		level->data[tile_x + tile_y * level->width] = TILE_SOLID;
	else if (item == ITEM_DOOR)
		level->data[tile_x + tile_y * level->width] = TILE_DOOR;
	else if (item == ITEM_STAIR)
		level->data[tile_x + tile_y * level->width] = TILE_STAIR;
	else if (item == ITEM_COLLECT)
		_place_collectible(game, level, x, y);
	else if (item == ITEM_PLAYER)
		_place_player(game, level, x, y);
	else if (item == ITEM_ENEMY)
	{
		level->data[tile_x + tile_y * level->width] = TILE_EMPTY;
		add_entity(&game->entities, knight_new(game,
				(t_vec2){tile_x * 64, tile_y * 64}, game->editor.level));
	}
}

static void	_resize(t_level *map, int tile_x, int tile_y)
{
	t_tile	*tile;
	int		x;
	int		y;

	if (tile_y >= map->height)
		map->data = realloc(map->data,
				sizeof(t_tile) * map->width * (++map->height));
	else if (tile_x >= map->width)
	{
		tile = malloc(sizeof(t_tile) * (map->width + 1) * map->height);
		y = 0;
		while (y < map->height)
		{
			x = 0;
			while (x < map->width)
			{
				tile[x + y * (map->width + 1)] = map->data[x + y * map->width];
				x++;
			}
			y++;
		}
		map->width++;
		free(map->data);
		map->data = tile;
	}
}

void	edit_place(t_game *game, int btn, int x, int y)
{
	if (btn == 1)
	{
		_resize(&game->map2->levels[game->editor.level],
			x / SCALED_SIZE, y / SCALED_SIZE);
		_place_item(x, y, game->editor.item, game);
	}
	else if (btn == 3)
	{
		remove_entity(game, x, y);
	}
}
