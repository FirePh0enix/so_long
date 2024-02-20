/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_finish.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/19 14:35:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/20 12:10:40 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

typedef struct s_map_check
{
	char	**levels;
	int		level_count;
	int		width;
	int		height;
	int		collectibles;
	bool	has_exit;
}	t_map_check;

static bool	_is_upper_tile_solid(t_map_check *check, int level, int x, int y)
{
	if (y - 1 < 0 || level + 1 >= check->level_count)
		return (false);
	return (check->levels[level + 1][x + (y - 1) * (check->width + 1)] == '0');
}

static void	_check_rec(t_map_check *check, int level, int x, int y)
{
	int	index;

	if (x < 0 || x >= check->width || y < 0 || y >= check->height
		|| level >= check->level_count)
		return ;
	index = x + y * (check->width + 1);
	if (check->levels[level][index] == '1' || check->levels[level][index] == 'S'
		|| _is_upper_tile_solid(check, level, x, y))
		return ;
	else if ((x - 1 >= 0 && check->levels[level][(x - 1) + y * (check->width + 1)] == 'E')
			|| (x + 1 < check->width && check->levels[level][(x + 1) + y * (check->width + 1)] == 'E'))
		return ;
	else if (check->levels[level][index] == 'C')
		check->collectibles++;
	else if (check->levels[level][index] == 'E')
	{
		check->has_exit = true;
		return ;
	}
	check->levels[level][index] = '1';
	_check_rec(check, level, x - 1, y);
	_check_rec(check, level, x + 1, y);
	if (check->levels[level][x + (y - 1) * (check->width + 1)] == 'S')
		_check_rec(check, level + 1, x, y - 2);
	else
		_check_rec(check, level, x, y - 1);
	if (check->levels[level][x + (y + 1) * (check->width + 1)] != 'E')
		_check_rec(check, level, x, y + 1);
}

bool	check_finish(t_game *game, t_map2 *map)
{
	t_map_check	mapc;
	int			i;

	mapc.levels = malloc(sizeof(char *) * map->level_count);
	mapc.level_count = map->level_count;
	mapc.width = map->width;
	mapc.height = map->height;
	mapc.collectibles = 0;
	mapc.has_exit = false;
	i = -1;
	while (++i < mapc.level_count)
		mapc.levels[i] = ft_strdup(map->levels[i].string);
	_check_rec(&mapc, game->start_level, game->start_pos.x, game->start_pos.y);
	i = -1;
	while (++i < mapc.level_count)
		free(mapc.levels[i]);
	free(mapc.levels);
	return (mapc.collectibles == game->collectibles_count
		&& mapc.collectibles > 0 && mapc.has_exit);
}
