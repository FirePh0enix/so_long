/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:26:15 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/04 16:19:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"
#include "data/vector.h"
#include "math/box.h"
#include "entity.h"
#include <sys/time.h>

suseconds_t	getms(void)
{
	struct timeval	val;

	gettimeofday(&val, NULL);
	return ((val.tv_sec * 1000000 + val.tv_usec) / 1000);
}

t_entity	*add_entity(t_entity ***entities, t_entity *entity)
{
	vector_add((void **) entities, &entity);
	return (entity);
}

void	remove_entity(t_game *game, int x, int y)
{
	unsigned int	i;

	i = 0;
	while (i < vector_size(game->entities))
	{
		if (box_collide_with_point(box_for_position(game->entities[i]->box,
					game->entities[i]->pos), x, y))
			break ;
		i++;
	}
	if (i < vector_size(game->entities))
	{
		if (game->entities[i]->type == ETYPE_GEM)
			game->collectibles_count--;
		free(game->entities[i]);
		vector_remove((void **) &game->entities, i);
	}
}
