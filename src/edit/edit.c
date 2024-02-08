/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/04 15:51:33 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 13:56:49 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "edit.h"
#include "../so_long.h"
#include "../math/vec2.h"
#include "../render/render.h"

static void	_edit_save(t_game *game)
{
	map_save(game->map, game, game->filename);
	map_reload(game, game->map);
}

static void _edit_quit(t_game *game)
{
	// TODO:
	// map->string is not changed on saved (and should be). This means that when
	// saving and calling map_reload, this will load the old map.
	map_reload(game, game->map);
	game->menu_opened = true;
	game->editor_mode = false;
}

void	edit_init(t_editor *editor)
{
	editor->item = ITEM_EMPTY;
	editor->save = (t_btn){32 + 8 * SCALED_SIZE, WIN_HEIGHT - 192 + 1 * SCALED_SIZE, 2, "Save", _edit_save};
	editor->quit = (t_btn){32 + 10 * SCALED_SIZE, WIN_HEIGHT - 192 + 1 * SCALED_SIZE, 2, "Close", _edit_quit};
}

static void	_draw_editor_background(t_game *game, t_renderer *rdr)
{
	const int	x = 32;
	const int	y = WIN_HEIGHT - 192;

	(void) rdr;
	draw_banner_h(game, (t_vec2i){x, y}, (t_vec2i){13, 3});
}

static void	_draw_icons(t_game *game, t_renderer *rdr)
{
	const int	x = 32 + SCALED_SIZE;
	const int	y = WIN_HEIGHT - 192 + 1 * SCALED_SIZE;

	rdr_add_sprite(rdr, game->ground_all, (t_vec2){x, y}, (t_add_sprite){9100, false});
	rdr_add_sprite(rdr, game->solid, (t_vec2){x + 1 * SCALED_SIZE, y}, (t_add_sprite){9100, false});
	rdr_add_sprite(rdr, game->door, (t_vec2){x + 2 * SCALED_SIZE, y}, (t_add_sprite){9100, false});
	rdr_add_sprite(rdr, game->money_spawn[6], (t_vec2){x + 3 * SCALED_SIZE - 32, y - 32}, (t_add_sprite){9100, false});
	rdr_add_sprite(rdr, game->goblin_idle[0], (t_vec2){x + 4 * SCALED_SIZE - 64, y - 64}, (t_add_sprite){9100, false});
	rdr_add_sprite(rdr, game->warrior_idle[0], (t_vec2){x + 5 * SCALED_SIZE - 64, y - 64}, (t_add_sprite){9100, false});
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
	else if (editor->item == ITEM_COLLECT)
		x = 3 * SCALED_SIZE;
	else if (editor->item == ITEM_PLAYER)
		x = 4 * SCALED_SIZE;
	else if (editor->item == ITEM_ENEMY)
		x = 5 * SCALED_SIZE;
	draw_hl(game, ox + x, oy, 1);
}

void	edit_update(t_game *game)
{
	_draw_editor_background(game, game->rdr);
	_draw_icons(game, game->rdr);
	_draw_hl(game, &game->editor);
	btn_update(game, &game->editor.save);
	btn_update(game, &game->editor.quit);
}

static bool	_is_hover(t_vec2i m, t_vec2i min, t_vec2i size)
{
	return (m.x >= min.x && m.x <= min.x + size.x
		&& m.y >= min.y && m.y <= min.y + size.y);
}

void	edit_click_hook(t_game *game, int mx, int my, int btn)
{
	const int		x = 32 + 64;
	const int		y = WIN_HEIGHT - 192 + 64;
	const t_vec2i	s = (t_vec2i){64, 64};

	btn_click(game, &game->editor.save, mx, my);
	btn_click(game, &game->editor.quit, mx, my);
	if (_is_hover((t_vec2i){mx, my}, (t_vec2i){0, y - 64},
		(t_vec2i){WIN_WIDTH, 192}))
	{
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x, y}, (t_vec2i){64, 64}))
			game->editor.item = ITEM_EMPTY;
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 1 * SCALED_SIZE, y}, s))
			game->editor.item = ITEM_SOLID;
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 2 * SCALED_SIZE, y}, s))
			game->editor.item = ITEM_DOOR;
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 3 * SCALED_SIZE, y}, s))
			game->editor.item = ITEM_COLLECT;
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 4 * SCALED_SIZE, y}, s))
			game->editor.item = ITEM_PLAYER;
		if (_is_hover((t_vec2i){mx, my}, (t_vec2i){x + 5 * SCALED_SIZE, y}, s))
			game->editor.item = ITEM_ENEMY;
	}
	else
		edit_place(game, btn, mx, my);
}
