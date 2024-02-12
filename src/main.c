/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:50:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/12 13:36:17 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "anim/anim.h"
#include "data/vector.h"
#include "entity.h"
#include "libft.h"
#include "mlx.h"
#include "so_long.h"
#include <stdio.h>
#include <sys/time.h>
#include "render/render.h"

static t_img	**_load_frames(t_game *game, char *name, int size)
{
	char		buf[128];
	int			i;
	t_img		**sprites;

	i = 0;
	sprites = malloc(sizeof(t_img) * size);
	while (i < size)
	{
		sprintf(buf, name, i);
		sprites[i] = sprite(game, buf);
		i++;
	}
	return (sprites);
}

t_img	**sp(t_game *game)
{
	return (game->sprites);
}

static void	_setup_game(t_game *g)
{
	ft_bzero(g, sizeof(t_game));
	g->mlx = mlx_init();
	g->win = mlx_new_window(g->mlx, WIN_WIDTH, WIN_HEIGHT, "so_long");
	g->keys = ft_calloc(0xFFFF, sizeof(bool));
	g->canvas = mlx_new_image(g->mlx, WIN_WIDTH, WIN_HEIGHT);
	g->entities = vector_new(sizeof(t_entity *), 0);
	g->rdr = rdr_new();
	edit_init(&g->editor);
	load_sprites(g);
	g->font = font_load(g, "textures/gen/regular");
	g->font = font_load(g, "textures/gen/small");
	g->goblin_idle = _load_frames(g, "textures/gen/Goblin_Idle/%d.xpm", 6);
	g->goblin_walk = _load_frames(g, "textures/gen/Goblin_Walk/%d.xpm", 6);
	g->goblin_atk_side = _load_frames(g,
			"textures/gen/Goblin_Atk_Side/%d.xpm", 6);
	g->warrior_idle = _load_frames(g, "textures/gen/Warrior_Idle/%d.xpm", 6);
	g->warrior_walk = _load_frames(g, "textures/gen/Warrior_Walk/%d.xpm", 6);
	g->warrior_atk_side = _load_frames(g,
			"textures/gen/Warrior_Atk_Side1/%d.xpm", 6);
	g->money_spawn = _load_frames(g, "textures/gen/Gold_Spawn/%d.xpm", 7);
	g->foam = _load_frames(g, "textures/gen/Foam/%d.xpm", 8);
	g->foam_anim = anim_new(g->foam, 8, 100, true);
}

static int	_normal_main(int argc, char *argv[])
{
	t_game	game;

	(void) argc;
	_setup_game(&game);
	game.map2 = map2_load(&game, argv + 1, argc - 1);
	if (!game.map2)
		return (ft_printf("Error\nInvalid map\n"), 1);
	game.menu = menu_new();
	game.menu_opened = true;
	game.filename = argv[1];
	srand(getms());
	mlx_do_key_autorepeatoff(game.mlx);
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
	mlx_hook(game.win, 17, 0, close_hook, &game);
	mlx_mouse_hook(game.win, mouse_hook, &game);
	mlx_loop_hook(game.mlx, update_hook, &game);
	mlx_loop(game.mlx);
	game_free(&game);
	mlx_do_key_autorepeaton(game.mlx);
	mlx_destroy_window(game.mlx, game.win);
	mlx_destroy_display(game.mlx);
	free(game.mlx);
	return (0);
}

int	main(int argc, char *argv[])
{
	if (argc < 2)
		return (1);
	_normal_main(argc, argv);
}
