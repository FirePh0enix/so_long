/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   end_utils.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/23 12:39:23 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 12:39:43 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

void	free_end(t_game *game)
{
	int	i;

	i = -1;
	while (++i < EXPLOSION_COUNT)
		free(game->end.explosions[i].anim);
}
