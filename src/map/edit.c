/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 19:55:28 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 14:50:20 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../graph.h"
#include "../data/vector.h"
#include "../entity.h"
#include "libft.h"
#include <stdio.h>

static void	handle_keypress(t_game *game)
{
	if (game->keys['1'])
		game->editor.item = ITEM_EMPTY;
	else if (game->keys['2'])
		game->editor.item = ITEM_SOLID;
	else if (game->keys['3'])
		game->editor.item = ITEM_COLLECT;
	else if (game->keys['4'])
		game->editor.item = ITEM_PLAYER;
}

static void _draw_editor_item(t_game *game)
{
	if (game->editor.item == ITEM_EMPTY)
		graph_add_sprite(game->graph, game->ground, (t_vec2){16, 480 - 56}, 999, (t_effect){});
	else if (game->editor.item == ITEM_SOLID)
		graph_add_sprite(game->graph, game->solid, (t_vec2){16, 480 - 56}, 999, (t_effect){});
	else if (game->editor.item == ITEM_COLLECT)
		graph_add_sprite(game->graph, game->gem, (t_vec2){16, 480 - 56}, 999, (t_effect){});
	else if (game->editor.item == ITEM_PLAYER)
		graph_add_sprite(game->graph, game->solid, (t_vec2){16, 480 - 56}, 999, (t_effect){});
}

int	edit_update_hook(t_game *game)
{
	suseconds_t		time;
	unsigned int	i;
	t_entity		*entity;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	handle_keypress(game);
	_draw_editor_item(game);
	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		graph_add_sprite(game->graph, entity->sprite, entity->pos,
			entity->z_index, (t_effect){NULL, NULL});
		i++;
	}
	map_add_to_graph(game->map, game, game->graph);
	clear_screen(game, 0x0);
	graph_draw(game->graph, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	graph_reset(game->graph);
	return (0);
}

static void	_remove_entity(t_game *game, int x, int y)
{
	unsigned int	i;

	i = 0;
	while (i < vector_size(game->entities))
	{
		if (box_collide_with_point(box_for_position(game->entities[i]->box, game->entities[i]->pos), x, y))
			break;
		i++;
	}
	if (i < vector_size(game->entities))
	{
		if (game->entities[i]->type == ETYPE_GEM)
			game->collectibles_count--;
		free(game->entities[i]);
		vector_remove((void **) &game->entities, i);
	}
}

static void _place_item(int x, int y, t_editor_item item, t_game *game)
{
	const int	tile_x = x / SCALED_SIZE;
	const int	tile_y = y / SCALED_SIZE;
	t_entity	*entity;

	if (item == ITEM_EMPTY)
		game->map->data[tile_x + tile_y * game->map->width] = TILE_EMPTY;
	else if (item == ITEM_SOLID)
		game->map->data[tile_x + tile_y * game->map->width] = TILE_SOLID;
	else if (item == ITEM_COLLECT)
	{
		_remove_entity(game, x, y);
		game->map->data[tile_x + tile_y * game->map->width] = TILE_EMPTY;
		entity = gem_new(game,
			(t_vec2){tile_x * SCALED_SIZE, tile_y * SCALED_SIZE});
		vector_add((void **) &game->entities, &entity);
		game->collectibles_count++;
	} else if (item == ITEM_PLAYER)
	{
		game->map->data[tile_x + tile_y * game->map->width] = TILE_EMPTY;
		entity = player_new(game,
			(t_vec2){tile_x * SCALED_SIZE, tile_y * SCALED_SIZE});
		vector_add((void **) &game->entities, &entity);
	}
}

static void	_resize(t_map *map, int tile_x, int tile_y)
{
	t_tile	*tile;
	int		x;
	int		y;

	if (tile_y >= map->height)
		map->data = realloc(map->data, sizeof(t_tile) * map->width * (++map->height));
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

int	edit_mouse_hook(unsigned int button, int x, int y, t_game *game)
{
	if (button == 1)
	{
		_resize(game->map, x / SCALED_SIZE, y / SCALED_SIZE);
		_place_item(x, y, game->editor.item, game);
	}
	else if (button == 3)
	{
		_remove_entity(game, x, y);
	}
	return (0);
}
