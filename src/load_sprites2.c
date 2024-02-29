/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_sprites2.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/23 12:02:03 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/29 11:34:34 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

static void	_load_symbol_font(t_game *g)
{
	g->symbols_font = ft_calloc(1, sizeof(t_font));
	if (!g->symbols_font)
		return ;
	g->symbols_font->chars[(int) 'A'] = sprite(g, "textures/gen/heart.xpm");
}

void	load_sprites_pt2(t_game *g, t_img **sp)
{
	sp[SP_SAND_M] = sprite(g, "textures/gen/MidS.xpm");
	sp[SP_SAND_T] = sprite(g, "textures/gen/TopS.xpm");
	sp[SP_SAND_TL] = sprite(g, "textures/gen/TopLeftS.xpm");
	sp[SP_SAND_TR] = sprite(g, "textures/gen/TopRightS.xpm");
	sp[SP_SAND_L] = sprite(g, "textures/gen/LeftS.xpm");
	sp[SP_SAND_R] = sprite(g, "textures/gen/RightS.xpm");
	sp[SP_SAND_B] = sprite(g, "textures/gen/BotS.xpm");
	sp[SP_SAND_BL] = sprite(g, "textures/gen/BotLeftS.xpm");
	sp[SP_SAND_BR] = sprite(g, "textures/gen/BotRightS.xpm");
	sp[SP_SAND_TLR] = sprite(g, "textures/gen/TopLRS.xpm");
	sp[SP_SAND_LR] = sprite(g, "textures/gen/LRS.xpm");
	sp[SP_SAND_BLR] = sprite(g, "textures/gen/BotLRS.xpm");
	sp[SP_SAND_LBT] = sprite(g, "textures/gen/LeftBTS.xpm");
	sp[SP_SAND_BT] = sprite(g, "textures/gen/BTS.xpm");
	sp[SP_SAND_RBT] = sprite(g, "textures/gen/RightBTS.xpm");
	sp[SP_SAND_ALL] = sprite(g, "textures/gen/AllS.xpm");
	_load_symbol_font(g);
}
