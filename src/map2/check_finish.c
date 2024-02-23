/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_finish.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/19 14:35:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 11:52:43 by ledelbec         ###   ########.fr       */
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

static bool	_is_tile_solid(t_map_check *check, int level, int x, int y)
{
	int	index;

	if (x < 0 || x >= check->width || y < 0 || y >= check->height)
		return (true);
	index = x + y * (check->width + 1);
	return (check->levels[level][index] == '1'
		|| check->levels[level][index] == 'S');
}

static void	_check_rec(t_map_check *check, int level, int x, int y);

static void	_check_all_sides(t_map_check *check, int level, int x, int y)
{
	_check_rec(check, level, x - 1, y);
	_check_rec(check, level, x + 1, y);
	if (check->levels[level][x + (y - 1) * (check->width + 1)] == 'S')
		_check_rec(check, level + 1, x, y - 2);
	else
		_check_rec(check, level, x, y - 1);
	if (level > 0 && check->levels[level - 1][x + (y + 1)
		* (check->width + 1)] == 'S')
		_check_rec(check, level - 1, x, y + 2);
	if (check->levels[level][x + (y + 1) * (check->width + 1)] != 'E')
		_check_rec(check, level, x, y + 1);
}

static void	_check_rec(t_map_check *check, int level, int x, int y)
{
	int	index;

	if (x < 0 || x >= check->width || y < 0 || y >= check->height
		|| level >= check->level_count
		|| _is_tile_solid(check, level, x, y))
		return ;
	index = x + y * (check->width + 1);
	if (check->levels[level][index] == 'C')
		check->collectibles++;
	else if (check->levels[level][index] == 'E')
	{
		check->has_exit = true;
		return ;
	}
	check->levels[level][index] = '1';
	_check_all_sides(check, level, x, y);
}

static char	*_preprocess(char *level, char *upper, int width, int height)
{
	int	x;
	int	y;

	x = -1;
	while (++x < width)
	{
		y = -1;
		while (++y < height)
		{
			if (upper != NULL && y - 1 >= 0
				&& upper[x + (y - 1) * (width + 1)] != '1'
				&& level[x + y * (width + 1)] != 'S')
				level[x + y * (width + 1)] = '1';
			else if ((x - 1 >= 0 && level[(x - 1) + y * (width + 1)] == 'E')
				|| (x + 1 < width && level[(x + 1) + y * (width + 1)] == 'E'))
				level[x + y * (width + 1)] = '1';
		}
	}
	return (level);
}

bool	check_finish(t_game *game, t_map2 *map)
{
	t_map_check	c;
	int			i;

	c.levels = ft_calloc(1, sizeof(char *) * (map->level_count + 1));
	c.level_count = map->level_count;
	c.width = map->width;
	c.height = map->height;
	c.collectibles = 0;
	c.has_exit = false;
	i = -1;
	while (++i < c.level_count)
		c.levels[i] = ft_strdup(map->levels[i].string);
	i = -1;
	while (++i < c.level_count)
		_preprocess(c.levels[i], c.levels[i + 1], c.width, c.height);
	_check_rec(&c, game->start_level, game->start_pos.x, game->start_pos.y);
	i = -1;
	while (++i < c.level_count)
		free(c.levels[i]);
	free(c.levels);
	return (c.collectibles == game->collectibles_count
		&& c.collectibles > 0 && c.has_exit);
}
