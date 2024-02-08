/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:44:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 22:40:35 by ledelbec         ###   ########.fr       */
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
	menu->play = (t_btn){x, 4 * SCALED_SIZE, btn_size, "PLAY", play_click};
	menu->edit = (t_btn){x, 6 * SCALED_SIZE, btn_size, "EDIT", edit_click};
	return (menu);
}

static void _draw_button(t_game *game, t_btn *btn)
{
	int	i;

	rdr_add_sprite(game->rdr, game->btn_left,
		(t_vec2){btn->x, btn->y},
		(t_add_sprite){910, false});
	i = -1;
	while (++i < btn->size - 2)
		rdr_add_sprite(game->rdr, game->btn_mid,
			(t_vec2){btn->x + (1 + i) * SCALED_SIZE, btn->y},
			(t_add_sprite){910, false});
	rdr_add_sprite(game->rdr, game->btn_right,
		(t_vec2){btn->x + (btn->size - 1) * SCALED_SIZE, btn->y},
		(t_add_sprite){910, false});
	rdr_add_text(game->rdr, btn->label, (t_vec2){
			text_center_x(game->font, btn->label, btn->x, btn->size * 64),
			text_center_y(game->font, btn->label, btn->y, 64) - 8},
		(t_add_text){911, game->font, 0x0});
}

void	draw_hl(t_game *game, int x, int y, int size)
{
	const int	s = size * SCALED_SIZE;

	rdr_add_sprite(game->rdr, game->hl_tl, (t_vec2){x - 32, y - 32}, (t_add_sprite){1100, false});
	rdr_add_sprite(game->rdr, game->hl_tr, (t_vec2){x - 32 + s, y - 32}, (t_add_sprite){1100, false});
	rdr_add_sprite(game->rdr, game->hl_bl, (t_vec2){x - 32, y - 32 + SCALED_SIZE}, (t_add_sprite){1100, false});
	rdr_add_sprite(game->rdr, game->hl_br, (t_vec2){x - 32 + s, y - 32 + SCALED_SIZE}, (t_add_sprite){1100, false});
}

static void	_draw_text(t_game *game, char *str, t_vec2i pos)
{
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y}, (t_add_text){910, game->font, 0x0});
}

void	draw_menu(t_game *game, t_gamemenu *menu)
{
	const int	x = WIN_WIDTH / 2 - 64 * 4;
	const char	*credits_me[] = {"Made by ledelbec", "@FirePh0enix on Github"};
	const char	*credits[] = {"Credits to Pixel Frog", "on itch.io for the art"};

	rdr_add_blur(game->rdr, 2, 800);
	draw_banner_cl(game, (t_vec2i){x - 5 * SCALED_SIZE, SCALED_SIZE * 2}, (t_vec2i){6, 5});
	_draw_text(game, (char *)credits_me[0], (t_vec2i){text_center_x(game->font, (char *)credits_me[0],
				x - 1.5 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(game, (char *)credits_me[1], (t_vec2i){text_center_x(game->font, (char *)credits_me[1],
				x - 0.8 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4.5});
	draw_banner_cr(game, (t_vec2i){x + 7 * SCALED_SIZE, SCALED_SIZE * 2}, (t_vec2i){6, 5});
	_draw_text(game, (char *)credits[0], (t_vec2i){text_center_x(game->font, (char *)credits[0],
				x + 11 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(game, (char *)credits[1], (t_vec2i){text_center_x(game->font, (char *)credits[1],
				x + 11 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4.5});
	draw_banner_v(game, (t_vec2i){WIN_WIDTH / 2 - 64 * 4, 0}, (t_vec2i){8, 10});
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

int	text_center_x(t_font *font, char *s, int px, int pwidth)
{
	const int	width = font->chars[(int)'A']->width * ft_strlen(s);
	const int	fx = px + pwidth / 2 - width;
	return (fx);
}

int	text_center_y(t_font *font, char *s, int py, int pheight)
{
	(void) s;
	const int	height = font->chars[(int)'A']->height;
	const int	fy = py + pheight / 2 - height / 2;
	return (fy);
}
