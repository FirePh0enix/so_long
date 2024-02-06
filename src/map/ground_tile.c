/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ground_tile.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 21:50:48 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/06 10:57:00 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

static int	isg(t_map *map, int x, int y)
{
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
		return (0);
	return (map->data[x + y * map->width] == TILE_EMPTY);
}

t_img	*get_ground_tile(t_game *game, t_map *map, int x, int y)
{
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1) && isg(map, x, y + 1))
		return (game->ground_mid);
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
		return (game->ground_top);
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
		return (game->ground_left);
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
		return (game->ground_bot);
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
		return (game->ground_right);
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
		return (game->ground_topleft);
	if (isg(map, x - 1, y) && isg(map, x, y + 1))
		return (game->ground_topright);
	if (isg(map, x, y - 1) && isg(map, x + 1, y))
		return (game->ground_botleft);
	if (isg(map, x - 1, y) && isg(map, x, y - 1))
		return (game->ground_botright);
	if (isg(map, x - 1, y) && isg(map, x + 1, y))
		return (game->ground_bt);
	if (isg(map, x, y - 1) && isg(map, x, y + 1))
		return (game->ground_lr);
	if (isg(map, x - 1, y))
		return (game->ground_rightbt);
	if (isg(map, x + 1, y))
		return (game->ground_leftbt);
	if (isg(map, x, y + 1))
		return (game->ground_toplr);
	if (isg(map, x, y - 1))
		return (game->ground_botlr);
	return (game->ground_all);
}
