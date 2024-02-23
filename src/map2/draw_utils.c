/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 11:56:56 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 16:06:19 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

static int	isg(t_level *map, int x, int y)
{
	if (x < 0 || x >= map->width || y < 0 || y >= map->height)
		return (0);
	return (map->data[x + y * map->width] == TILE_EMPTY
		|| map->data[x + y * map->width] == TILE_STAIR);
}

static int	_off(t_level *level)
{
	if (level->index == 0)
		return (16);
	return (0);
}

static t_img	*_get_ground_tile1(t_game *game, t_level *map, int x, int y)
{
	if (isg(map, x - 1, y) && isg(map, x + 1, y) && isg(map, x, y - 1)
		&& isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_M + _off(map)]);
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_T + _off(map)]);
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_L + _off(map)]);
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_B + _off(map)]);
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_R + _off(map)]);
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_TL + _off(map)]);
	if (isg(map, x - 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_TR + _off(map)]);
	if (isg(map, x, y - 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_BL + _off(map)]);
	if (isg(map, x - 1, y) && isg(map, x, y - 1))
		return (sp(game)[SP_GROUND_BR + _off(map)]);
	if (isg(map, x - 1, y) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_BT + _off(map)]);
	if (isg(map, x, y - 1) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_LR + _off(map)]);
	return (NULL);
}

t_img	*get_ground_tile(t_game *game, t_level *map, int x, int y)
{
	t_img	*img;

	img = _get_ground_tile1(game, map, x, y);
	if (img)
		return (img);
	if (isg(map, x - 1, y))
		img = sp(game)[SP_GROUND_RBT + _off(map)];
	else if (isg(map, x + 1, y))
		img = sp(game)[SP_GROUND_LBT + _off(map)];
	else if (isg(map, x, y + 1))
		img = sp(game)[SP_GROUND_TLR + _off(map)];
	else if (isg(map, x, y - 1))
		img = sp(game)[SP_GROUND_BLR + _off(map)];
	else
		img = sp(game)[SP_GROUND_ALL];
	return (img);
}
