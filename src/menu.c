/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 11:46:20 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 11:47:30 by ledelbec         ###   ########.fr       */
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
	const int	btn_size = 4;
	const int	x = 1440 / 2 - btn_size * SCALED_SIZE / 2;
	t_gamemenu	*menu;

	menu = malloc(sizeof(t_gamemenu));
	menu->play = (t_btn){x, 4 * SCALED_SIZE, btn_size, "PLAY", play_click};
	menu->edit = (t_btn){x, 6 * SCALED_SIZE, btn_size, "EDIT", edit_click};
	return (menu);
}
