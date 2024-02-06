/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:50:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/06 11:00:10 by ledelbec         ###   ########.fr       */
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
	t_img	**sprites;

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

static void	_setup_game(t_game *game)
{
	ft_bzero(game, sizeof(t_game));
	game->mlx = mlx_init();
	game->win = mlx_new_window(game->mlx, WIN_WIDTH, WIN_HEIGHT, "so_long");
	game->keys = ft_calloc(0xFFFF, sizeof(bool));
	game->canvas = mlx_new_image(game->mlx, WIN_WIDTH, WIN_HEIGHT);
	game->entities = vector_new(sizeof(t_entity *), 0);
	game->rdr = rdr_new();
	edit_init(&game->editor);
	game->solid = sprite(game, "textures/gen/Water.xpm");
	game->gem = sprite(game, "textures/gen/Mid.xpm");
	game->door = sprite(game, "textures/gen/Water.xpm");

	game->goblin_idle = _load_frames(game, "textures/gen/Goblin_Idle/%d.xpm", 6);
	game->goblin_walk = _load_frames(game, "textures/gen/Goblin_Walk/%d.xpm", 6);
	game->goblin_atk_side = _load_frames(game, "textures/gen/Goblin_Atk_Side/%d.xpm", 6);

	game->warrior_idle = _load_frames(game, "textures/gen/Warrior_Idle/%d.xpm", 6);
	game->warrior_walk = _load_frames(game, "textures/gen/Warrior_Walk/%d.xpm", 6);
	game->warrior_atk_side = _load_frames(game, "textures/gen/Warrior_Atk_Side1/%d.xpm", 6);

	game->money_spawn = _load_frames(game, "textures/gen/Gold_Spawn/%d.xpm", 7);

	game->ground_mid = sprite(game, "textures/gen/Mid.xpm");
	game->ground_top = sprite(game, "textures/gen/Top.xpm");
	game->ground_topleft = sprite(game, "textures/gen/TopLeft.xpm");
	game->ground_topright = sprite(game, "textures/gen/TopRight.xpm");
	game->ground_left = sprite(game, "textures/gen/Left.xpm");
	game->ground_right = sprite(game, "textures/gen/Right.xpm");
	game->ground_bot = sprite(game, "textures/gen/Bot.xpm");
	game->ground_botleft = sprite(game, "textures/gen/BotLeft.xpm");
	game->ground_botright = sprite(game, "textures/gen/BotRight.xpm");
	game->ground_toplr = sprite(game, "textures/gen/TopLR.xpm");
	game->ground_lr = sprite(game, "textures/gen/LR.xpm");
	game->ground_botlr = sprite(game, "textures/gen/BotLR.xpm");
	game->ground_leftbt = sprite(game, "textures/gen/LeftBT.xpm");
	game->ground_bt = sprite(game, "textures/gen/BT.xpm");
	game->ground_rightbt = sprite(game, "textures/gen/RightBT.xpm");
	game->ground_all = sprite(game, "textures/gen/All.xpm");

	game->foam = _load_frames(game, "textures/gen/Foam/%d.xpm", 8);
	game->foam_anim = anim_new(game->foam, 8, 100, true);

	game->btn_left = sprite(game, "textures/gen/Btn_Left.xpm");
	game->btn_mid = sprite(game, "textures/gen/Btn_Mid.xpm");
	game->btn_right = sprite(game, "textures/gen/Btn_Right.xpm");
	game->hl_tl = sprite(game, "textures/gen/hl_tl.xpm");
	game->hl_tr = sprite(game, "textures/gen/hl_tr.xpm");
	game->hl_bl = sprite(game, "textures/gen/hl_bl.xpm");
	game->hl_br = sprite(game, "textures/gen/hl_br.xpm");

	game->bnr_topleft = sprite(game, "textures/gen/Bnr_TopLeft.xpm");
	game->bnr_top = sprite(game, "textures/gen/Bnr_Top.xpm");
	game->bnr_topright = sprite(game, "textures/gen/Bnr_TopRight.xpm");
	game->bnr_left = sprite(game, "textures/gen/Bnr_Left.xpm");
	game->bnr_mid = sprite(game, "textures/gen/Bnr_Mid.xpm");
	game->bnr_right = sprite(game, "textures/gen/Bnr_Right.xpm");
	game->bnr_botleft = sprite(game, "textures/gen/Bnr_BotLeft.xpm");
	game->bnr_bot = sprite(game, "textures/gen/Bnr_Bot.xpm");
	game->bnr_botright = sprite(game, "textures/gen/Bnr_BotRight.xpm");

	game->plus = sprite(game, "textures/gen/Plus.xpm");
}

static int	_normal_main(int argc, char *argv[])
{
	t_game	game;

	(void) argc;
	_setup_game(&game);
	game.map = map_load(&game, argv[1], false);
	if (!game.map)
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
