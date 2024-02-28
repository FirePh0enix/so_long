/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   end.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/22 14:01:54 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 16:30:53 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "anim/anim.h"
#include "gui.h"
#include "mlx.h"
#include "render/render.h"
#include "so_long.h"

static void	exit_click(t_game *game)
{
	mlx_loop_end(game->mlx);
}

void	init_end(t_game *game)
{
	int	i;

	i = -1;
	while (++i < EXPLOSION_COUNT)
		game->end.explosions[i].anim = anim_new(game->explosion, 9, 100, false);
	game->end.next_spawn = 0;
	game->end.exit = btn_new_label((t_vec2i){630, 240}, 3, "Quit", exit_click);
	game->end.title = "You win!";
}
