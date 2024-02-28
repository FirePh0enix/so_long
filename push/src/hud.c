/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hud.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 14:25:32 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:56:01 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"
#include "render/render.h"

static void	_draw_movements(t_game *game)
{
	ft_sprintf(game->buffer, "Moves %d", game->moves);
	rdr_add_text(game->rdr, game->buffer, (t_vec2){10, 10},
		(t_add_text){992000, 5, game->small_font, 0x0});
}

static void	_draw_collects(t_game *game)
{
	rdr_add_sprite(game->rdr, game->money_spawn[6], (t_vec2){-40, -15},
		(t_add_sprite){99200, 5, false, false});
	ft_sprintf(game->buffer, "%d out of %d", game->collectibles,
		game->collectibles_count);
	rdr_add_text(game->rdr, game->buffer, (t_vec2){50, 50},
		(t_add_text){992000, 5, game->small_font, 0x0});
}

static void	_draw_health_bar(t_game *game, int health, bool p2)
{
	int				y;
	unsigned int	color;
	int				i;

	ft_bzero(game->buffer, 30);
	i = 0;
	while (i < health)
		game->buffer[i++] = 'A';
	y = 90;
	if (p2)
		y = 120;
	color = 0xFFFF0000;
	if (p2)
		color = 0xFFFF00FF;
	if (!p2)
		rdr_add_text(game->rdr, "P1 ", (t_vec2){0, y}, (t_add_text){
			992000, 5, game->small_font, color});
	else
		rdr_add_text(game->rdr, "P2 ", (t_vec2){0, y}, (t_add_text){
			992000, 5, game->small_font, color});
	rdr_add_text(game->rdr, game->buffer, (t_vec2){25, y}, (t_add_text){
		992000, 5, game->symbols_font, color});
}

void	draw_hud(t_game *game)
{
	const char	*msg1 = "Collect all the gold !";
	const char	*msg2 = "Go back to your gold mine !";
	const int	x = WIN_WIDTH / 2 - SCALED_SIZE * 5;
	const int	size = 14;
	char		*msg;

	if (game->collectibles_count == game->collectibles)
		msg = (char *) msg2;
	else
		msg = (char *) msg1;
	draw_ribbon(game, (t_vec2i){WIN_WIDTH / 2 - SCALED_SIZE * (size / 2), 0},
		size);
	draw_banner_h(game, (t_vec2i){-64, -48}, (t_vec2i){5, 4});
	rdr_add_text(game->rdr, (void *)msg, (t_vec2){
		text_center_x(game->font, (void *)msg, x - 150, size * SCALED_SIZE),
		text_center_y(game->font, (void *)msg, 0, SCALED_SIZE) - 8},
		(t_add_text){992000, 5, game->font, 0x0});
	_draw_movements(game);
	_draw_collects(game);
	_draw_health_bar(game, game->player->health,
		((t_player *)game->player->extension)->is_p2);
	if (game->player2)
		_draw_health_bar(game, game->player2->health, true);
}
