/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:44:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 17:31:27 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"
#include "render/render.h"
#include <stdlib.h>

static void	play_click(t_game *game)
{
	game->menu_opened = false;
}

static void	edit_click(t_game *game)
{
	game->editor_mode = true;
	game->menu_opened = false;
}

t_gamemenu	*menu_new()
{
	const int	btn_size = 4;
	const int	x = 1440 / 2 - btn_size * SCALED_SIZE / 2;
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
	menu->play = (t_btn){x, 2 * SCALED_SIZE, btn_size, play_click};
	menu->edit = (t_btn){x, 4 * SCALED_SIZE, btn_size, edit_click};
	return (menu);
}

static void _draw_button(t_game *game, int x, int y, int size)
{
	int	i;

	rdr_add_sprite(game->rdr, game->btn_left,
		(t_vec2){x, y},
		(t_add_sprite){910, false});
	i = -1;
	while (++i < size - 2)
		rdr_add_sprite(game->rdr, game->btn_mid,
			(t_vec2){x + (1 + i) * SCALED_SIZE, y},
			(t_add_sprite){910, false});
	rdr_add_sprite(game->rdr, game->btn_right,
		(t_vec2){x + (size - 1) * SCALED_SIZE, y},
		(t_add_sprite){910, false});
}

void	draw_hl(t_game *game, int x, int y, int size)
{
	const int	s = size * SCALED_SIZE;

	rdr_add_sprite(game->rdr, game->hl_tl, (t_vec2){x - 32, y - 32}, (t_add_sprite){10100, false});
	rdr_add_sprite(game->rdr, game->hl_tr, (t_vec2){x - 32 + s, y - 32}, (t_add_sprite){10100, false});
	rdr_add_sprite(game->rdr, game->hl_bl, (t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_add_sprite){10100, false});
	rdr_add_sprite(game->rdr, game->hl_br, (t_vec2){x - 32 + s, y - 32 + SCALED_SIZE}, (t_add_sprite){10100, false});
}

void	draw_menu(t_game *game, t_gamemenu *menu)
{
	btn_update(game, &menu->play);
	btn_update(game, &menu->edit);
}

void	menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y)
{
	btn_click(game, &menu->play, x, y);
	btn_click(game, &menu->edit, x, y);
}

void	btn_update(t_game *game, t_btn *btn)
{
	int			mx;
	int			my;

	mlx_mouse_get_pos(game->mlx, game->win, &mx, &my);
	_draw_button(game, btn->x, btn->y, btn->size);
	if (mx >= btn->x && mx <= btn->x + btn->size * SCALED_SIZE
		&& my >= btn->y && my <= btn->y + SCALED_SIZE)
		draw_hl(game, btn->x, btn->y, btn->size);
}

void	btn_click(t_game *game, t_btn *btn, int mx, int my)
{
	if (mx >= btn->x && mx <= btn->x + btn->size * SCALED_SIZE
		&& my >= btn->y && my <= btn->y + SCALED_SIZE)
		btn->click(game);
}
