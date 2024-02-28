/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/04 15:51:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 13:54:57 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "edit.h"
#include "../so_long.h"
#include "../math/vec2.h"
#include "../render/render.h"

void	edit_init(t_editor *editor, t_game *g)
{
	editor->item = ITEM_EMPTY;
	editor->save = btn_new_label((t_vec2i){32 + 8 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 2, "Save", edit_save);
	editor->quit = btn_new_label((t_vec2i){32 + 10 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 2, "Close", edit_quit);
	editor->l1 = btn_new_img((t_vec2i){32 + 13 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_ONE], edit_l1);
	editor->l2 = btn_new_img((t_vec2i){32 + 14 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_TWO], edit_l2);
	editor->l3 = btn_new_img((t_vec2i){32 + 15 * 64,
			WIN_HEIGHT - 192 + 1 * 64}, 1, sp(g)[SP_THREE], edit_l3);
	editor->l1.pressed = true;
	editor->level = 0;
}

static void	_draw_icons(t_game *game, t_renderer *rdr)
{
	const int	x = 32 + SCALED_SIZE;
	const int	y = WIN_HEIGHT - 192 + 1 * SCALED_SIZE;

	rdr_add_sprite(rdr, sp(game)[SP_GROUND_ALL], (t_vec2){x, y},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, sp(game)[SP_WATER], (t_vec2){x + 1 * SCALED_SIZE, y},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, sp(game)[SP_DOOR], (t_vec2){x + 2 * SCALED_SIZE, y},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, sp(game)[SP_STAIR_ALL], (t_vec2){x + 3 * 64, y},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, game->money_spawn[6],
		(t_vec2){x + 4 * SCALED_SIZE - 32, y - 32},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, game->goblin_idle[0],
		(t_vec2){x + 5 * SCALED_SIZE - 64, y - 64},
		(t_add_sprite){9100, 5, false, false});
	rdr_add_sprite(rdr, game->warrior_idle[0],
		(t_vec2){x + 6 * SCALED_SIZE - 64, y - 64},
		(t_add_sprite){9100, 5, false, false});
}

static void	_draw_hl(t_game *game, t_editor *editor)
{
	const int	ox = 32 + SCALED_SIZE;
	const int	oy = WIN_HEIGHT - 192 + 1 * SCALED_SIZE;
	int			x;

	x = 0;
	if (editor->item == ITEM_EMPTY)
		x = 0 * SCALED_SIZE;
	else if (editor->item == ITEM_SOLID)
		x = 1 * SCALED_SIZE;
	else if (editor->item == ITEM_DOOR)
		x = 2 * SCALED_SIZE;
	else if (editor->item == ITEM_STAIR)
		x = 3 * SCALED_SIZE;
	else if (editor->item == ITEM_COLLECT)
		x = 4 * SCALED_SIZE;
	else if (editor->item == ITEM_PLAYER)
		x = 5 * SCALED_SIZE;
	else if (editor->item == ITEM_ENEMY)
		x = 6 * SCALED_SIZE;
	draw_hl(game, ox + x, oy, 1);
}

void	edit_update(t_game *game)
{
	draw_banner_h(game, (t_vec2i){32, WIN_HEIGHT - 192}, (t_vec2i){17, 3});
	_draw_icons(game, game->rdr);
	_draw_hl(game, &game->editor);
	btn_update(game, &game->editor.save);
	btn_update(game, &game->editor.quit);
	btn_update(game, &game->editor.l1);
	btn_update(game, &game->editor.l2);
	btn_update(game, &game->editor.l3);
}
