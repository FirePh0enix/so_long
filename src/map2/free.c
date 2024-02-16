/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 12:00:09 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 12:03:31 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

void	map2_free(t_map2 *map)
{
	int	i;

	i = -1;
	while (++i < map->level_count)
	{
		free(map->levels[i].string);
		free(map->levels[i].data);
	}
	free(map->levels);
	free(map);
}
