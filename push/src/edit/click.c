/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   click.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 11:23:05 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 11:27:19 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "edit.h"
#include "../so_long.h"

static bool	_is_hover(t_vec2i m, t_vec2i min, t_vec2i size)
{
	return (m.x >= min.x && m.x <= min.x + size.x
		&& m.y >= min.y && m.y <= min.y + size.y);
}

static void	_select(t_game *game, int mx, int my)
{
	const int		x = 32 + 64;
	const int		y = WIN_HEIGHT - 192 + 64;
	const t_vec2i	s = (t_vec2i){64, 64};

	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x, y}, (t_vec2i){64, 64}))
		game->editor.item = ITEM_EMPTY;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 1 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_SOLID;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 2 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_DOOR;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 3 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_STAIR;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 4 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_COLLECT;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 5 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_PLAYER;
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 6 * SCALED_SIZE, y}, s))
		game->editor.item = ITEM_ENEMY;
}

void	edit_click_hook(t_game *game, int mx, int my, int btn)
{
	const int		y = WIN_HEIGHT - 192 + 64;

	btn_click(game, &game->editor.save, mx, my);
	btn_click(game, &game->editor.quit, mx, my);
	btn_click(game, &game->editor.l1, mx, my);
	btn_click(game, &game->editor.l2, mx, my);
	btn_click(game, &game->editor.l3, mx, my);
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){0, y - 64},
		(t_vec2i){WIN_WIDTH, 192}))
		_select(game, mx, my);
	else
		edit_place(game, btn, mx, my);
}
