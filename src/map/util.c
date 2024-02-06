/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 20:02:42 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/06 11:11:47 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../anim/anim.h"
#include "../render/render.h"
#include <X11/Xlib.h>
#include <fcntl.h>

void	map_free(t_map *map)
{
	free(map->data);
	free(map->string);
	free(map);
}

/*
 * Add two tiles: The bottom stone cliff and the top grass ground.
 */
static void _add_tile_sprite(t_game *game, int x, int y)
{
	rdr_add_sprite(game->rdr, anim_get_sprite(game->foam_anim),
		(t_vec2){x * SCALED_SIZE - 64, y * SCALED_SIZE - 64}, (t_add_sprite){-1, false});
	rdr_add_sprite(game->rdr, get_ground_tile(game, game->map, x, y),
		(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, (t_add_sprite){0, false});
}

void	map_render(t_map *map, t_game *game, t_renderer *rdr)
{
	int	x;
	int	y;

	x = 0;
	while (x < map->width)
	{
		y = 0;
		while (y < map->height)
		{
			if (map->data[x + y * map->width] == TILE_SOLID)
				rdr_add_sprite(rdr, game->solid,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, (t_add_sprite){-2, false});
			else if (map->data[x + y * map->width] == TILE_EMPTY)
				_add_tile_sprite(game, x, y);
			else if (map->data[x + y * map->width] == TILE_DOOR)
				rdr_add_sprite(rdr, game->door,
					(t_vec2){x * SCALED_SIZE, y * SCALED_SIZE}, (t_add_sprite){0, false});
			y++;
		}
		x++;
	}
}
