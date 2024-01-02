/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:50:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 01:13:17 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"
#include "so_long.h"

static int	key_pressed_hook(int keycode, t_game *game)
{
	game->keys[keycode] = true;
	return (0);
}

static int	key_released_hook(int keycode, t_game *game)
{
	game->keys[keycode] = false;
	return (0);
}

static int	close_hook(t_game *game)
{
	mlx_loop_end(game->mlx);
	return (0);
}

void	game_deinit(t_game *game)
{
	free(game->keys);
}

bool	is_key_pressed(t_game *game, int keycode)
{
	return (game->keys[keycode]);
}

static int	update_hook(t_game *game)
{
	(void) game;
	return (0);
}

int	main(int argc, char *argv[])
{
	t_game	game;

	(void) argc;
	(void) argv;
	ft_bzero(&game, sizeof(t_game));
	game.mlx = mlx_init();
	game.win = mlx_new_window(game.mlx, 1920, 1080, "so_long");
	game.keys = ft_calloc(0xFFFFF, sizeof(bool));
	mlx_do_key_autorepeatoff(game.mlx);
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
	mlx_hook(game.win, 17, 0, close_hook, &game);
	mlx_loop_hook(game.mlx, update_hook, &game);
	game_deinit(&game);
	mlx_destroy_display(game.mlx);
}
