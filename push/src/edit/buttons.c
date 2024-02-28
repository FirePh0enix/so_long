/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   buttons.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/16 11:17:07 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 11:22:23 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../so_long.h"

void	edit_save(t_game *game)
{
	map2_save(game->map2, game);
	map2_reload(game, game->map2);
}

void	edit_quit(t_game *game)
{
	map2_reload(game, game->map2);
	game->menu_opened = true;
	game->editor_mode = false;
}

void	edit_l1(t_game *game)
{
	game->editor.l1.pressed = true;
	game->editor.l2.pressed = false;
	game->editor.l3.pressed = false;
	game->editor.level = 0;
}

void	edit_l2(t_game *game)
{
	game->editor.l1.pressed = false;
	game->editor.l2.pressed = true;
	game->editor.l3.pressed = false;
	game->editor.level = 1;
}

void	edit_l3(t_game *game)
{
	game->editor.l1.pressed = false;
	game->editor.l2.pressed = false;
	game->editor.l3.pressed = true;
	game->editor.level = 2;
}
