/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hud.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 14:25:32 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 16:38:58 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"
#include "render/render.h"

void	draw_hud(t_game *game)
{
	const char	*msg1 = "Collect all the gold !";
	const char	*msg2 = "Go back to your gold mine !";
	const int	x = WIN_WIDTH / 2 - SCALED_SIZE * 5;
	const int	size = 14;
	char		*msg;

	if (game->collectibles_count == game->collectibles)
		msg = (char *) msg2;
	else
		msg = (char *) msg1;
	draw_ribbon(game, (t_vec2i){WIN_WIDTH / 2 - SCALED_SIZE * (size / 2), 0},
		size);
	rdr_add_text(game->rdr, (void *)msg, (t_vec2){
		text_center_x(game->font, (void *)msg, x - 150, size * SCALED_SIZE),
		text_center_y(game->font, (void *)msg, 0, SCALED_SIZE) - 8},
		(t_add_text){992000, 5, game->font, 0x0});
}
