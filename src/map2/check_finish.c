/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_finish.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/19 14:35:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/19 15:10:52 by ledelbec         ###   ########.fr       */
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

static void	_check_rec(t_map_check *check, int level, int x, int y)
{
	int	index;

	if (x < 0 || x >= check->width || y < 0 || y >= check->height
		|| level >= check->level_count)
		return ;
	index = x + y * (check->width + 1);
	if (check->levels[level][index] == '1')
		return ;
	else if (check->levels[level][index] == 'C')
		check->collectibles--;
	else if (check->levels[level][index] == 'P')
	{
		check->has_exit = true;
		check->levels[level][(x - 1) + y * (check->width + 1)] = '1';
		check->levels[level][(x + 1) + y * (check->width + 1)] = '1';
	}
	else if (check->levels[level][index] == 'S')
		return ; //_check_rec(check, level + 1, x, y - 1);
	check->levels[level][index] = '1';
	_check_rec(check, level, x - 1, y);
	_check_rec(check, level, x + 1, y);
	_check_rec(check, level, x, y - 1);
	_check_rec(check, level, x, y + 1);

	printf("%s\n", check->levels[level]);
}

bool	check_finish(t_game *game, t_map2 *map)
{
	t_map_check	mapc;
	int			i;

	mapc.levels = malloc(sizeof(char *) * map->level_count);
	mapc.width = map->width;
	mapc.height = map->height;
	mapc.collectibles = game->collectibles_count;
	mapc.has_exit = false;
	i = -1;
	while (++i < mapc.level_count)
		mapc.levels[i] = ft_strdup(map->levels[i].string);
	_check_rec(&mapc, 0, game->start_pos.x / 64, game->start_pos.y / 64); // TODO: The player start position might be on another level
	return (mapc.collectibles == 0 && mapc.has_exit);
}
