/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hooks.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:24:23 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 14:49:44 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "gui.h"
#include "so_long.h"

int	key_pressed_hook(int keycode, t_game *game)
{
	if (keycode == XK_Escape)
	{
		mlx_loop_end(game->mlx);
		return (0);
	}
	if (keycode >= 0xFFFF)
		return (0);
	game->keys[keycode] = true;
	return (0);
}

int	key_released_hook(int keycode, t_game *game)
{
	if (keycode >= 0xFFFF)
		return (0);
	game->keys[keycode] = false;
	return (0);
}

int	mouse_hook(unsigned int btn, int x, int y, t_game *game)
{
	if (game->menu_opened && btn == 1)
		menu_mouse_click(game, game->menu, x, y);
	else if (game->editor_mode)
		edit_click_hook(game, x, y, btn);
	return (0);
}

bool	is_key_pressed(t_game *game, int keycode)
{
	return (game->keys[keycode]);
}

int	close_hook(t_game *game)
{
	mlx_loop_end(game->mlx);
	return (0);
}
