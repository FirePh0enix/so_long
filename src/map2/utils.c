/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/15 14:13:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 14:18:15 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

int	line_width_and_check(char *str)
{
	int	i;
	int	first_len;
	int	len;

	i = 0;
	first_len = -1;
	len = 0;
	while (str[i])
	{
		if (str[i] == '\n')
		{
			if (first_len == -1)
				first_len = len;
			else if (first_len != len)
				return (-1);
			len = 0;
		}
		else
			len++;
		i++;
	}
	return (first_len);
}

int	line_count(char *str)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	while (str[i])
	{
		if (str[i] == '\n')
			count++;
		i++;
	}
	return (count);
}

bool	check_borders(t_map *map)
{
	int	i;

	i = 0;
	while (i < map->width)
	{
		if (map->data[i] != TILE_SOLID)
			return (false);
		else if (map->data[i + (map->height - 1) * map->width] != TILE_SOLID)
			return (false);
		i++;
	}
	i = 0;
	while (i < map->height)
	{
		if (map->data[i * map->width] != TILE_SOLID)
			return (false);
		else if (map->data[(map->width - 1) + i * map->width] != TILE_SOLID)
			return (false);
		i++;
	}
	return (true);
}
