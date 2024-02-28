/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 11:46:20 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 15:30:43 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"

static void	play_click(t_game *game)
{
	if (game->map_valid)
	{
		game->menu_opened = false;
		game->start_time = getms();
	}
}

static void	edit_click(t_game *game)
{
	game->editor_mode = true;
	game->menu_opened = false;
}

static void	coop_click(t_game *game)
{
	if (game->map_valid)
	{
		game->menu_opened = false;
		game->player2 = add_entity(&game->entities,
				player_new(game, game->player->pos, game->player->level, true));
		game->start_time = getms();
	}
}

t_gamemenu	*menu_new(void)
{
	const int	x = 1440 / 2 - 4 * SCALED_SIZE / 2;
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
	menu->play = btn_new_label((t_vec2i){x, 4 * 64}, 4, "Play", play_click);
	menu->coop = btn_new_label((t_vec2i){x, 6 * 64}, 4, "2 Player",
			coop_click);
	menu->edit = btn_new_label((t_vec2i){x, 8 * 64}, 4, "Edit", edit_click);
	return (menu);
}
