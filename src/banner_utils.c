/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   banner_utils.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 13:12:22 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 16:16:19 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"
#include "gui.h"

void	draw_vertical_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	t_draw_inter inter)
{
	int	i;

	i = 0;
	while (i < inter.size)
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x, pos.y + i * SCALED_SIZE},
			(t_add_sprite){inter.z_index, false});
		i++;
	}
}

void	draw_horizontal_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	t_draw_inter inter)
{
	int	i;

	i = 0;
	while (i < inter.size)
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x + i * SCALED_SIZE, pos.y},
			(t_add_sprite){inter.z_index, false});
		i++;
	}
}

void	draw_left(
	t_game *game,
	t_vec2i pos,
	t_vec2i size,
	const struct s_images *imgs)
{
	t_renderer	*rdr;

	rdr = game->rdr;
	rdr_add_sprite(rdr, imgs->topleft, (t_vec2){pos.x, pos.y},
		(t_add_sprite){imgs->left_index, false});
	draw_vertical_inter_tiles(rdr, imgs->left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE},
		(t_draw_inter){size.y - 2, imgs->left_index});
	rdr_add_sprite(rdr, imgs->botleft,
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){imgs->left_index, false});
}

void	draw_right(
	t_game *game,
	t_vec2i pos,
	t_vec2i size,
	const struct s_images *imgs)
{
	t_renderer	*rdr;

	rdr = game->rdr;
	rdr_add_sprite(rdr, imgs->topright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){imgs->right_index, false});
	draw_vertical_inter_tiles(rdr, imgs->right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE},
		(t_draw_inter){size.y - 2, imgs->right_index});
	rdr_add_sprite(rdr, imgs->botright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE,
		pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){imgs->right_index, false});
}
