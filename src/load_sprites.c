/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_sprites.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 14:46:13 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 15:51:38 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

static void	_load_sprites1(t_game *g, t_img **sp)
{
	sp[SP_WATER] = sprite(g, "textures/gen/Water.xpm");
	sp[SP_GROUND_M] = sprite(g, "textures/gen/Mid.xpm");
	sp[SP_GROUND_T] = sprite(g, "textures/gen/Top.xpm");
	sp[SP_GROUND_TL] = sprite(g, "textures/gen/TopLeft.xpm");
	sp[SP_GROUND_TR] = sprite(g, "textures/gen/TopRight.xpm");
	sp[SP_GROUND_L] = sprite(g, "textures/gen/Left.xpm");
	sp[SP_GROUND_R] = sprite(g, "textures/gen/Right.xpm");
	sp[SP_GROUND_B] = sprite(g, "textures/gen/Bot.xpm");
	sp[SP_GROUND_BL] = sprite(g, "textures/gen/BotLeft.xpm");
	sp[SP_GROUND_BR] = sprite(g, "textures/gen/BotRight.xpm");
	sp[SP_GROUND_TLR] = sprite(g, "textures/gen/TopLR.xpm");
	sp[SP_GROUND_LR] = sprite(g, "textures/gen/LR.xpm");
	sp[SP_GROUND_BLR] = sprite(g, "textures/gen/BotLR.xpm");
	sp[SP_GROUND_LBT] = sprite(g, "textures/gen/LeftBT.xpm");
	sp[SP_GROUND_BT] = sprite(g, "textures/gen/BT.xpm");
	sp[SP_GROUND_RBT] = sprite(g, "textures/gen/RightBT.xpm");
	sp[SP_GROUND_ALL] = sprite(g, "textures/gen/All.xpm");
}

static void	_load_sprites2(t_game *g, t_img **sp)
{
	sp[SP_BTN_LEFT] = sprite(g, "textures/gen/Btn_Left.xpm");
	sp[SP_BTN_MID] = sprite(g, "textures/gen/Btn_Mid.xpm");
	sp[SP_BTN_RIGHT] = sprite(g, "textures/gen/Btn_Right.xpm");
	sp[SP_HL_TL] = sprite(g, "textures/gen/hl_tl.xpm");
	sp[SP_HL_TR] = sprite(g, "textures/gen/hl_tr.xpm");
	sp[SP_HL_BL] = sprite(g, "textures/gen/hl_bl.xpm");
	sp[SP_HL_BR] = sprite(g, "textures/gen/hl_br.xpm");
	sp[SP_BNR_TL] = sprite(g, "textures/gen/Bnr_TopLeft.xpm");
	sp[SP_BNR_T] = sprite(g, "textures/gen/Bnr_Top.xpm");
	sp[SP_BNR_TR] = sprite(g, "textures/gen/Bnr_TopRight.xpm");
	sp[SP_BNR_L] = sprite(g, "textures/gen/Bnr_Left.xpm");
	sp[SP_BNR_M] = sprite(g, "textures/gen/Bnr_Mid.xpm");
	sp[SP_BNR_R] = sprite(g, "textures/gen/Bnr_Right.xpm");
	sp[SP_BNR_BL] = sprite(g, "textures/gen/Bnr_BotLeft.xpm");
	sp[SP_BNR_B] = sprite(g, "textures/gen/Bnr_Bot.xpm");
	sp[SP_BNR_BR] = sprite(g, "textures/gen/Bnr_BotRight.xpm");
	sp[SP_BNRV_TL] = sprite(g, "textures/gen/Bnrv_TopLeft.xpm");
	sp[SP_BNRV_T] = sprite(g, "textures/gen/Bnrv_Top.xpm");
	sp[SP_BNRV_TR] = sprite(g, "textures/gen/Bnrv_TopRight.xpm");
	sp[SP_BNRV_L] = sprite(g, "textures/gen/Bnrv_Left.xpm");
	sp[SP_BNRV_M] = sprite(g, "textures/gen/Bnrv_Mid.xpm");
	sp[SP_BNRV_R] = sprite(g, "textures/gen/Bnrv_Right.xpm");
	sp[SP_BNRV_BL] = sprite(g, "textures/gen/Bnrv_BotLeft.xpm");
	sp[SP_BNRV_B] = sprite(g, "textures/gen/Bnrv_Bot.xpm");
	sp[SP_BNRV_BR] = sprite(g, "textures/gen/Bnrv_BotRight.xpm");
}

static void	_load_sprites3(t_game *g, t_img **sp)
{
	sp[SP_BNRCL_TL] = sprite(g, "textures/gen/Bnrcl_TopLeft.xpm");
	sp[SP_BNRCL_T] = sprite(g, "textures/gen/Bnrcl_Top.xpm");
	sp[SP_BNRCL_TR] = sprite(g, "textures/gen/Bnrcl_TopRight.xpm");
	sp[SP_BNRCL_L] = sprite(g, "textures/gen/Bnrcl_Left.xpm");
	sp[SP_BNRCL_M] = sprite(g, "textures/gen/Bnrcl_Mid.xpm");
	sp[SP_BNRCL_R] = sprite(g, "textures/gen/Bnrcl_Right.xpm");
	sp[SP_BNRCL_BL] = sprite(g, "textures/gen/Bnrcl_BotLeft.xpm");
	sp[SP_BNRCL_B] = sprite(g, "textures/gen/Bnrcl_Bot.xpm");
	sp[SP_BNRCL_BR] = sprite(g, "textures/gen/Bnrcl_BotRight.xpm");
	sp[SP_BNRCR_TL] = sprite(g, "textures/gen/Bnrcr_TopLeft.xpm");
	sp[SP_BNRCR_T] = sprite(g, "textures/gen/Bnrcr_Top.xpm");
	sp[SP_BNRCR_TR] = sprite(g, "textures/gen/Bnrcr_TopRight.xpm");
	sp[SP_BNRCR_L] = sprite(g, "textures/gen/Bnrcr_Left.xpm");
	sp[SP_BNRCR_M] = sprite(g, "textures/gen/Bnrcr_Mid.xpm");
	sp[SP_BNRCR_R] = sprite(g, "textures/gen/Bnrcr_Right.xpm");
	sp[SP_BNRCR_BL] = sprite(g, "textures/gen/Bnrcr_BotLeft.xpm");
	sp[SP_BNRCR_B] = sprite(g, "textures/gen/Bnrcr_Bot.xpm");
	sp[SP_BNRCR_BR] = sprite(g, "textures/gen/Bnrcr_BotRight.xpm");
}

static void	_load_sprites4(t_game *g, t_img **sp)
{
	sp[SP_DOOR] = sprite(g, "textures/gen/Water.xpm");
	sp[SP_RBN_LEFT] = sprite(g, "textures/gen/Rbn_Left.xpm");
	sp[SP_RBN_MID] = sprite(g, "textures/gen/Rbn_Mid.xpm");
	sp[SP_RBN_RIGHT] = sprite(g, "textures/gen/Rbn_Right.xpm");
	sp[SP_PLUS] = sprite(g, "textures/gen/Plus.xpm");
}

void	load_sprites(t_game *game)
{
	_load_sprites1(game, game->sprites);
	_load_sprites2(game, game->sprites);
	_load_sprites3(game, game->sprites);
	_load_sprites4(game, game->sprites);
}
