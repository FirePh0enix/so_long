/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:50:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/04 16:11:15 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "data/vector.h"
#include "entity.h"
#include "graph.h"
#include "libft.h"
#include "math/vec2.h"
#include "mlx.h"
#include "so_long.h"
#include <string.h>
#include <sys/time.h>

void	game_deinit(t_game *game)
{
	free(game->keys);
}

static void	_setup_game(t_game *game)
{
	ft_bzero(game, sizeof(t_game));
	game->mlx = mlx_init();
	game->win = mlx_new_window(game->mlx, WIN_WIDTH, WIN_HEIGHT, "so_long");
	game->keys = ft_calloc(0xFFFF, sizeof(bool));
	game->canvas = mlx_new_image(game->mlx, WIN_WIDTH, WIN_HEIGHT);
	game->entities = vector_new(sizeof(t_entity *), 0);
	game->graph = new_graph();
	game->ground = sprite(game, "textures/gen/ground.xpm");
	game->solid = sprite(game, "textures/gen/solid.xpm");
	game->gem = sprite(game, "textures/gem.xpm");
	game->door = sprite(game, "textures/door.xpm");
}

static int	_edit_main(int argc, char *argv[])
{
	t_game	game;
	char	*filename;

	(void) argc;
	_setup_game(&game);
	filename = argv[1];
	game.map = map_load(&game, filename, true);
	if (!game.map)
		return (ft_printf("Error\nInvalid map\n"), 1);
	mlx_do_key_autorepeatoff(game.mlx);
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
	mlx_hook(game.win, 17, 0, close_hook, &game);
	mlx_mouse_hook(game.win, edit_mouse_hook, &game);
	mlx_loop_hook(game.mlx, edit_update_hook, &game);
	mlx_loop(game.mlx);
	map_save(game.map, &game, filename);
	game_deinit(&game);
	mlx_do_key_autorepeaton(game.mlx);
	mlx_destroy_display(game.mlx);
	return (0);
}

static int	_normal_main(int argc, char *argv[])
{
	t_game	game;

	(void) argc;
	_setup_game(&game);
	game.map = map_load(&game, argv[1], false);
	if (!game.map)
		return (ft_printf("Error\nInvalid map\n"), 1);
	mlx_do_key_autorepeatoff(game.mlx);
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
	mlx_hook(game.win, 17, 0, close_hook, &game);
	mlx_loop_hook(game.mlx, update_hook, &game);
	mlx_loop(game.mlx);
	game_deinit(&game);
	mlx_do_key_autorepeaton(game.mlx);
	mlx_destroy_display(game.mlx);
	return (0);
}

int	main(int argc, char *argv[])
{
	if (argc < 2)
		return (1);
	else if (argc == 3 && strcmp(argv[2], "--edit") == 0)
		return (_edit_main(argc, argv));
	else
		return (_normal_main(argc, argv));
}
