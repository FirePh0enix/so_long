/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:44:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/22 16:04:57 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"
#include "render/render.h"

static void	_draw_text(t_game *game, char *str, t_vec2i pos)
{
	rdr_add_text(game->rdr, str, (t_vec2){pos.x, pos.y},
		(t_add_text){10, 5, game->small_font, 0x0});
}

static void	_draw_error(t_game *game)
{
	const int	x = WIN_WIDTH / 2 - 64 * 4;
	const char	*msg = "The map is invalid !";

	if (!game->map_valid)
		rdr_add_text(game->rdr, (char *)msg, (t_vec2){
			text_center_x(game->small_font, (char *)msg, x + 64 * 3, 6 * 64),
			320}, (t_add_text){10, 5, game->small_font, 0x0});
}

void	draw_menu(t_game *g, t_gamemenu *menu)
{
	const int	x = WIN_WIDTH / 2 - 64 * 4;
	const char	*c_me[] = {"Made by ledelbec", "@FirePh0enix on Github"};
	const char	*c[] = {"Credits to Pixel Frog", "on itch.io for the art"};

	rdr_add_blur(g->rdr, 2, 250000);
	draw_banner_cl(g, (t_vec2i){x - 5 * SCALED_SIZE, SCALED_SIZE * 2},
		(t_vec2i){6, 5});
	_draw_error(g);
	_draw_text(g, (char *)c_me[0], (t_vec2i){
		text_center_x(g->small_font, (char *)c_me[0],
			x - 1.5 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(g, (char *)c_me[1], (t_vec2i){
		text_center_x(g->small_font, (char *)c_me[1],
			x - 0.8 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4.5});
	draw_banner_cr(g, (t_vec2i){x + 7 * SCALED_SIZE, SCALED_SIZE * 2},
		(t_vec2i){6, 5});
	_draw_text(g, (char *)c[0], (t_vec2i){text_center_x(g->small_font,
			(char *)c[0],
			x + 11 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4});
	_draw_text(g, (char *)c[1], (t_vec2i){text_center_x(g->small_font,
			(char *)c[1],
			x + 11 * SCALED_SIZE, SCALED_SIZE * 2), SCALED_SIZE * 4.5});
	draw_banner_v(g, (t_vec2i){WIN_WIDTH / 2 - 64 * 4, 0}, (t_vec2i){8, 10});
	btn_update(g, &menu->play);
	btn_update(g, &menu->coop);
	btn_update(g, &menu->edit);
}

void	menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y)
{
	btn_click(game, &menu->play, x, y);
	btn_click(game, &menu->coop, x, y);
	btn_click(game, &menu->edit, x, y);
}
