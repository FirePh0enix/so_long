/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   button_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 14:07:36 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:57:04 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

void	draw_hl(t_game *game, int x, int y, int size)
{
	const int	s = size * SCALED_SIZE;

	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TL],
		(t_vec2){x - 32, y - 32}, (t_add_sprite){6, 5, false, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TR],
		(t_vec2){x - 32 + s, y - 32}, (t_add_sprite){6, 5, false, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BL],
		(t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_add_sprite){6, 5,
		false, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BR],
		(t_vec2){x - 32 + s, y - 32 + 64}, (t_add_sprite){6, 5, false, false});
}

t_btn	btn_new_label(t_vec2i pos, int size, char *label, t_click click)
{
	return ((t_btn){pos.x, pos.y, size, label, NULL, click, false, false});
}

t_btn	btn_new_img(t_vec2i pos, int size, t_img *img, t_click click)
{
	return ((t_btn){pos.x, pos.y, size, NULL, img, click, false, false});
}
