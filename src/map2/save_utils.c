/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   save_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/15 15:41:13 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 15:41:46 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"
#include "../entity.h"

t_tile	etype_to_tile(t_etype etype)
{
	if (etype == ETYPE_GEM)
		return (TILE_COLLECT);
	else if (etype == ETYPE_PLAYER)
		return (TILE_PLAYER);
	else if (etype == ETYPE_ENEMY)
		return (TILE_ENEMY);
	return (TILE_EMPTY);
}
