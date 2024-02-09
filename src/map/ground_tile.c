/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ground_tile.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 21:50:48 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 15:45:05 by ledelbec         ###   ########.fr       */
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
		return (sp(game)[SP_GROUND_M]);
	if (isg(map, x - 1, y) && isg(map, x, y + 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_T]);
	if (isg(map, x, y - 1) && isg(map, x + 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_L]);
	if (isg(map, x - 1, y) && isg(map, x, y - 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_B]);
	if (isg(map, x, y - 1) && isg(map, x - 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_R]);
	if (isg(map, x + 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_TL]);
	if (isg(map, x - 1, y) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_TR]);
	if (isg(map, x, y - 1) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_BL]);
	if (isg(map, x - 1, y) && isg(map, x, y - 1))
		return (sp(game)[SP_GROUND_BR]);
	if (isg(map, x - 1, y) && isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_BT]);
	if (isg(map, x, y - 1) && isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_LR]);
	if (isg(map, x - 1, y))
		return (sp(game)[SP_GROUND_RBT]);
	if (isg(map, x + 1, y))
		return (sp(game)[SP_GROUND_LBT]);
	if (isg(map, x, y + 1))
		return (sp(game)[SP_GROUND_TLR]);
	if (isg(map, x, y - 1))
		return (sp(game)[SP_GROUND_BLR]);
	return (sp(game)[SP_GROUND_ALL]);
}
