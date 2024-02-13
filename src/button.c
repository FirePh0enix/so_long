/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   button.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 11:15:13 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/13 16:11:00 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "render/render.h"
#include "so_long.h"

static t_img	*_get_tile(t_game *g, int i, int pressed)
{
	if (i == 0 && !pressed)
		return (sp(g)[SP_BTN_ALL]);
	else if (i == 0 && pressed)
		return (sp(g)[SP_BTN_ALL_P]);
	else if (i == 1 && !pressed)
		return (sp(g)[SP_BTN_LEFT]);
	else if (i == 1 && pressed)
		return (sp(g)[SP_BTN_LEFT_P]);
	else if (i == 2 && !pressed)
		return (sp(g)[SP_BTN_MID]);
	else if (i == 2 && pressed)
		return (sp(g)[SP_BTN_MID_P]);
	else if (i == 3 && !pressed)
		return (sp(g)[SP_BTN_RIGHT]);
	else if (i == 3 && pressed)
		return (sp(g)[SP_BTN_RIGHT_P]);
	return (NULL);
}

static void	_draw_button(t_game *game, t_btn *btn)
{
	int	i;

	if (btn->size > 1)
	{
		rdr_add_sprite(game->rdr, sp(game)[SP_BTN_LEFT],
			(t_vec2){btn->x, btn->y},
			(t_add_sprite){2, 5, false});
		i = -1;
		while (++i < btn->size - 2)
			rdr_add_sprite(game->rdr, sp(game)[SP_BTN_MID],
				(t_vec2){btn->x + (1 + i) * SCALED_SIZE, btn->y},
				(t_add_sprite){2, 5, false});
		rdr_add_sprite(game->rdr, sp(game)[SP_BTN_RIGHT],
			(t_vec2){btn->x + (btn->size - 1) * SCALED_SIZE, btn->y},
			(t_add_sprite){2, 5, false});
	}
	else
	{
		rdr_add_sprite(game->rdr, _get_tile(game, 0, btn->pressed),
				(t_vec2){btn->x, btn->y}, (t_add_sprite){2, 5, false});
	}
	if (btn->label)
		rdr_add_text(game->rdr, btn->label, (t_vec2){
			text_center_x(game->font, btn->label, btn->x, btn->size * 64),
			text_center_y(game->font, btn->label, btn->y, 64) - 8},
			(t_add_text){3, 5, game->font, 0x0});
	else if (btn->img)
		rdr_add_sprite(game->rdr, btn->img, (t_vec2){btn->x, btn->y},
			(t_add_sprite){3, 5, false});
}

void	btn_update(t_game *game, t_btn *btn)
{
	int			mx;
	int			my;

	mlx_mouse_get_pos(game->mlx, game->win, &mx, &my);
	_draw_button(game, btn);
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

void	draw_hl(t_game *game, int x, int y, int size)
{
	const int	s = size * SCALED_SIZE;

	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TL],
		(t_vec2){x - 32, y - 32}, (t_add_sprite){6, 5, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_TR],
		(t_vec2){x - 32 + s, y - 32}, (t_add_sprite){6, 5, false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BL],
		(t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_add_sprite){6, 5,
		false});
	rdr_add_sprite(game->rdr, sp(game)[SP_HL_BR],
		(t_vec2){x - 32 + s, y - 32 + 64}, (t_add_sprite){6, 5, false});
}

t_btn	btn_new_label(t_vec2i pos, int size, char *label, t_click click)
{
	return ((t_btn){pos.x, pos.y, size, label, NULL, click, false, false});
}

t_btn	btn_new_img(t_vec2i pos, int size, t_img *img, t_click click)
{
	return ((t_btn){pos.x, pos.y, size, NULL, img, click, false, false});
}
