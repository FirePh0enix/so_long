/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 11:46:20 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 14:22:31 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"

static void	play_click(t_game *game)
{
	game->menu_opened = false;
}

static void	edit_click(t_game *game)
{
	game->editor_mode = true;
	game->menu_opened = false;
}

t_gamemenu	*menu_new(void)
{
	const int	x = 1440 / 2 - 4 * SCALED_SIZE / 2;
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
	menu->play = btn_new_label((t_vec2i){x, 4 * 64}, 4, "Play", play_click);
	menu->edit = btn_new_label((t_vec2i){x, 6 * 64}, 4, "Edit", edit_click);
	return (menu);
}
