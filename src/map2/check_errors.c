/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_errors.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/14 11:16:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 14:45:22 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdbool.h>
#include <unistd.h>
#include "libft.h"
#include "../so_long.h"

bool	check_files(char **filenames, int count)
{
	int	i;
	int	fd;

	i = -1;
	while (++i < count)
	{
		if (ft_strncmp(filenames[i] + ft_strlen(filenames[i]) - 4, ".ber", 4))
			return (false);
		fd = open(filenames[i], O_RDONLY);
		if (fd == -1)
			return (false);
		close(fd);
	}
	return (true);
}

bool	check_errors(t_map2 *map)
{
	int	i;
	int	width;
	int	height;

	if (!map || map->level_count == 0)
		return (false);
	i = -1;
	width = map->width;
	height = map->height;
	while (++i < map->level_count)
		if (map->levels[i].width != width || map->levels[i].height != height)
			return (false);
	return (true);
}
