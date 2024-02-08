/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   banner.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 13:26:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 15:13:15 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include "math/vec2.h"
# include "so_long.h"

static void	_draw_vertical_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	int size,
	int z_index)
{
	int	i;

	i = 0;
	while (i < size)
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x, pos.y + i * SCALED_SIZE},
			(t_add_sprite){z_index, false});
		i++;
	}
}

static void	_draw_horizontal_inter_tiles(
	t_renderer *rdr,
	t_img *tile,
	t_vec2i pos,
	int size,
	int z_index)
{
	int	i;

	i = 0;
	while (i < size)
	{
		rdr_add_sprite(rdr, tile, (t_vec2){pos.x + i * SCALED_SIZE, pos.y},
			(t_add_sprite){z_index, false});
		i++;
	}
}

void		draw_banner_h(t_game *game, t_vec2i pos, t_vec2i size)
{
	t_renderer	*rdr = game->rdr;
	int			i;

	rdr_add_sprite(rdr, game->bnr_topleft, (t_vec2){pos.x, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnr_left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnr_botleft,
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
	_draw_horizontal_inter_tiles(rdr, game->bnr_top,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y}, size.x - 2, 900);
	i = 1;
	while (i < size.y - 1)
	{
		_draw_horizontal_inter_tiles(rdr, game->bnr_mid,
			(t_vec2i){pos.x + SCALED_SIZE, pos.y + i * SCALED_SIZE}, size.x - 2, 900);
		i++;
	}
	_draw_horizontal_inter_tiles(rdr, game->bnr_bot,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE}, size.x - 2, 900);
	rdr_add_sprite(rdr, game->bnr_topright, (t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnr_right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnr_botright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
}

void		draw_banner_v(t_game *game, t_vec2i pos, t_vec2i size)
{
	t_renderer	*rdr = game->rdr;
	int			i;

	rdr_add_sprite(rdr, game->bnrv_topleft, (t_vec2){pos.x, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnrv_left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnrv_botleft,
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
	_draw_horizontal_inter_tiles(rdr, game->bnrv_top,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y}, size.x - 2, 900);
	i = 1;
	while (i < size.y - 1)
	{
		_draw_horizontal_inter_tiles(rdr, game->bnrv_mid,
			(t_vec2i){pos.x + SCALED_SIZE, pos.y + i * SCALED_SIZE}, size.x - 2, 900);
		i++;
	}
	_draw_horizontal_inter_tiles(rdr, game->bnrv_bot,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE}, size.x - 2, 900);
	rdr_add_sprite(rdr, game->bnrv_topright, (t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnrv_right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnrv_botright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
}

void		draw_banner_cl(t_game *game, t_vec2i pos, t_vec2i size)
{
	t_renderer	*rdr = game->rdr;
	int			i;

	rdr_add_sprite(rdr, game->bnrcl_topleft, (t_vec2){pos.x, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnrv_left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnrcl_botleft,
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
	_draw_horizontal_inter_tiles(rdr, game->bnrcl_top,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y}, size.x - 2, 900);
	i = 1;
	while (i < size.y - 1)
	{
		_draw_horizontal_inter_tiles(rdr, game->bnrcl_mid,
			(t_vec2i){pos.x + SCALED_SIZE, pos.y + i * SCALED_SIZE}, size.x - 2, 900);
		i++;
	}
	_draw_horizontal_inter_tiles(rdr, game->bnrcl_bot,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE}, size.x - 2, 900);
	rdr_add_sprite(rdr, game->bnrcl_topright, (t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){890, false});
	_draw_vertical_inter_tiles(rdr, game->bnrcl_right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE}, size.y - 2, 890);
	rdr_add_sprite(rdr, game->bnrcl_botright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){890, false});
}

void		draw_banner_cr(t_game *game, t_vec2i pos, t_vec2i size)
{
	t_renderer	*rdr = game->rdr;
	int			i;

	rdr_add_sprite(rdr, game->bnrcr_topleft, (t_vec2){pos.x, pos.y},
		(t_add_sprite){890, false});
	_draw_vertical_inter_tiles(rdr, game->bnrcr_left,
		(t_vec2i){pos.x, pos.y + SCALED_SIZE}, size.y - 2, 890);
	rdr_add_sprite(rdr, game->bnrcr_botleft,
		(t_vec2){pos.x, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){890, false});
	_draw_horizontal_inter_tiles(rdr, game->bnrcr_top,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y}, size.x - 2, 900);
	i = 1;
	while (i < size.y - 1)
	{
		_draw_horizontal_inter_tiles(rdr, game->bnrcr_mid,
			(t_vec2i){pos.x + SCALED_SIZE, pos.y + i * SCALED_SIZE}, size.x - 2, 900);
		i++;
	}
	_draw_horizontal_inter_tiles(rdr, game->bnrcr_bot,
		(t_vec2i){pos.x + SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE}, size.x - 2, 900);
	rdr_add_sprite(rdr, game->bnrcr_topright, (t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y},
		(t_add_sprite){900, false});
	_draw_vertical_inter_tiles(rdr, game->bnrcr_right,
		(t_vec2i){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + SCALED_SIZE}, size.y - 2, 900);
	rdr_add_sprite(rdr, game->bnrcr_botright,
		(t_vec2){pos.x + (size.x - 1) * SCALED_SIZE, pos.y + (size.y - 1) * SCALED_SIZE},
		(t_add_sprite){900, false});
}
