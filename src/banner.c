/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   banner.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 13:26:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 16:13:46 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "math/vec2.h"
#include "so_long.h"

struct s_images
{
	t_img	*topleft;
	t_img	*top;
	t_img	*topright;
	t_img	*left;
	t_img	*mid;
	t_img	*right;
	t_img	*botleft;
	t_img	*bot;
	t_img	*botright;
	int		left_index;
	int		mid_index;
	int		right_index;
};

static void	_draw_banner(
	t_game *game,
	t_vec2i pos,
	t_vec2i size,
	const struct s_images *imgs)
{
	t_renderer	*rdr;
	int			i;

	rdr = game->rdr;
	draw_left(game, pos, size, imgs);
	draw_horizontal_inter_tiles(rdr, imgs->top,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y},
		(t_draw_inter){size.x - 2, imgs->mid_index});
	i = 1;
	while (i < size.y - 1)
	{
		draw_horizontal_inter_tiles(rdr, imgs->mid,
			(t_vec2i){pos.x + SCALED_SIZE, pos.y + i * SCALED_SIZE},
			(t_draw_inter){size.x - 2, imgs->mid_index});
		i++;
	}
	draw_horizontal_inter_tiles(rdr, imgs->bot,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_draw_inter){size.x - 2, imgs->mid_index});
	draw_right(game, pos, size, imgs);
}

void	draw_banner_h(t_game *g, t_vec2i pos, t_vec2i size)
{
	const struct s_images	imgs = {sp(g)[SP_BNR_TL], sp(g)[SP_BNR_T],
		sp(g)[SP_BNR_TR], sp(g)[SP_BNR_L], sp(g)[SP_BNR_M], sp(g)[SP_BNR_R],
		sp(g)[SP_BNR_BL], sp(g)[SP_BNR_B], sp(g)[SP_BNR_BR], 900, 900, 900};

	_draw_banner(g, pos, size, &imgs);
}

void	draw_banner_v(t_game *g, t_vec2i pos, t_vec2i size)
{
	const struct s_images	imgs = {sp(g)[SP_BNRV_TL], sp(g)[SP_BNRV_T],
		sp(g)[SP_BNRV_TR], sp(g)[SP_BNRV_L], sp(g)[SP_BNRV_M], sp(g)[SP_BNRV_R],
		sp(g)[SP_BNRV_BL], sp(g)[SP_BNRV_B], sp(g)[SP_BNRV_BR], 900, 900, 900};

	_draw_banner(g, pos, size, &imgs);
}

void	draw_banner_cl(t_game *g, t_vec2i pos, t_vec2i size)
{
	const struct s_images	imgs = {sp(g)[SP_BNRCL_TL], sp(g)[SP_BNRCL_T],
		sp(g)[SP_BNRCL_TR], sp(g)[SP_BNRCL_L], sp(g)[SP_BNRCL_M],
		sp(g)[SP_BNRCL_R],
		sp(g)[SP_BNRCL_BL], sp(g)[SP_BNRCL_B], sp(g)[SP_BNRCL_BR], 900, 900,
		890};

	_draw_banner(g, pos, size, &imgs);
}

void	draw_banner_cr(t_game *g, t_vec2i pos, t_vec2i size)
{
	const struct s_images	imgs = {sp(g)[SP_BNRCR_TL], sp(g)[SP_BNRCR_T],
		sp(g)[SP_BNRCR_TR], sp(g)[SP_BNRCR_L], sp(g)[SP_BNRCR_M],
		sp(g)[SP_BNRCR_R],
		sp(g)[SP_BNRCR_BL], sp(g)[SP_BNRCR_B], sp(g)[SP_BNRCR_BR],
		890, 900, 900};

	_draw_banner(g, pos, size, &imgs);
}
