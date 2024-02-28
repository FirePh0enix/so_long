/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   end_bonus.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/28 15:46:19 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 16:18:10 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "math/vec2.h"
#include "so_long.h"

t_vec2	end_get_rand_pos(void)
{
	return ((t_vec2){rand() % (WIN_WIDTH - 192),
		rand() % (WIN_HEIGHT - 192)});
}

void	shake_screen(t_game *game)
{
	game->camera_pos = (t_vec2i){game->end.camera_pos.x + (rand() % 80 - 40),
		game->end.camera_pos.y + game->end.camera_pos.y + (rand() % 80 - 40)};
}
