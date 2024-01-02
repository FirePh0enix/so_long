/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 19:55:28 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 23:33:52 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../graph.h"
#include "libft.h"
#include <stdio.h>

static void	handle_keypress(t_game *game)
{
	if (game->keys['1'])
		game->editor.item = ITEM_EMPTY;
	else if (game->keys['2'])
		game->editor.item = ITEM_SOLID;
}

static void _draw_editor_item(t_game *game)
{
	if (game->editor.item == ITEM_EMPTY)
		graph_add_sprite(game->graph, game->ground, (t_vec2){16, 480 - 56}, 999, (t_effect){});
	else if (game->editor.item == ITEM_SOLID)
		graph_add_sprite(game->graph, game->solid, (t_vec2){16, 480 - 56}, 999, (t_effect){});
}

int	edit_update_hook(t_game *game)
{
	suseconds_t		time;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	handle_keypress(game);
	_draw_editor_item(game);
	map_add_to_graph(game->map, game, game->graph);
	clear_screen(game, 0x0);
	graph_draw(game->graph, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	graph_reset(game->graph);
	return (0);
}

static void _place_item(int x, int y, t_editor_item item, t_game *game)
{
	if (item == ITEM_EMPTY)
		game->map->data[x + y * game->map->width] = TILE_EMPTY;
	else if (item == ITEM_SOLID)
		game->map->data[x + y * game->map->width] = TILE_SOLID;
}

static void	_resize(t_map *map, int tile_x, int tile_y)
{
	t_tile	*tile;
	int		x;
	int		y;

	if (tile_y >= map->height)
		map->data = realloc(map->data, sizeof(t_tile) * map->width * (map->height++));
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
	const int	tile_x = x / SCALED_SIZE;
	const int	tile_y = y / SCALED_SIZE;

	if (button == 1)
	{
		_resize(game->map, tile_x, tile_y);
		_place_item(tile_x, tile_y, game->editor.item, game);
	}
	return (0);
}
