/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:44:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/02 16:20:09 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"
#include <stdlib.h>

t_gamemenu	*menu_new()
{
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
	return (menu);
}

static void _draw_button(t_game *game, int x, int y, int size)
{
	int	i;

	draw_sprite(game, game->btn_left,
		(t_vec2){x, y},
		(t_draw){SCALE, false});
	i = -1;
	while (++i < size - 2)
		draw_sprite(game, game->btn_mid,
			(t_vec2){x + (1 + i) * SCALED_SIZE, y},
			(t_draw){SCALE, false});
	draw_sprite(game, game->btn_right,
		(t_vec2){x + (size - 1) * SCALED_SIZE, y},
		(t_draw){SCALE, false});
}

static void	_draw_hl(t_game *game, int x, int y, int size)
{
	const int	s = size * SCALED_SIZE;

	draw_sprite(game, game->hl_tl, (t_vec2){x - 32, y - 32}, (t_draw){SCALE, false});
	draw_sprite(game, game->hl_tr, (t_vec2){x - 32 + s, y - 32}, (t_draw){SCALE, false});
	draw_sprite(game, game->hl_bl, (t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_draw){SCALE, false});
	draw_sprite(game, game->hl_br, (t_vec2){x - 32 + s, y - 32 + SCALED_SIZE}, (t_draw){SCALE, false});
}

void	draw_menu(t_game *game, t_gamemenu *menu)
{
	int	x;
	int	y;

	(void) menu;
	_draw_button(game, 1440 / 2 - (3 * SCALED_SIZE) / 2, 2 * SCALED_SIZE, 3);
	mlx_mouse_get_pos(game->mlx, game->win, &x, &y);
	if (
		   x >= 1440 / 2 - (3 * SCALED_SIZE) / 2
		&& x <= 1440 / 2 - (3 * SCALED_SIZE) / 2 + 3 * SCALED_SIZE
		&& y >= 2 * SCALED_SIZE
		&& y <= 2 * SCALED_SIZE + 1 * SCALED_SIZE)
	{
		_draw_hl(game, 1440 / 2 - (3 * SCALED_SIZE) / 2, 2 * SCALED_SIZE, 3);
	}
}

void	menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y)
{
	const int	bx = 1440 / 2 - (3 * SCALED_SIZE) / 2;
	const int	by = 2 * SCALED_SIZE;
	const int	bw = 3 * SCALED_SIZE;
	const int	bh = 1 * SCALED_SIZE;

	if (x >= bx && x <= bx + bw && y >= by && y <= by + bh)
	{
		game->menu_opened = false;
	}
}
