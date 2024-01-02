/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 00:50:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 15:33:36 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "data/vector.h"
#include "entity.h"
#include "graph.h"
#include "math/vec2.h"
#include "mlx.h"
#include "so_long.h"
#include <sys/time.h>

// TODO The escape key should close the window
static int	key_pressed_hook(int keycode, t_game *game)
{
	if (keycode >= 0xFFFF)
		return (0);
	game->keys[keycode] = true;
	return (0);
}

static int	key_released_hook(int keycode, t_game *game)
{
	if (keycode >= 0xFFFF)
		return (0);
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

suseconds_t	getms(void)
{
	struct timeval	val;

	gettimeofday(&val, NULL);
	return ((val.tv_sec * 1000000 + val.tv_usec) / 1000);
}

t_sprite	*sprite(t_game *game, char *filename)
{
	t_sprite	*sprite;

	sprite = malloc(sizeof(t_sprite));
	sprite->img = mlx_xpm_file_to_image(game->mlx, filename, &sprite->width, &sprite->height);
	return (sprite);
}

static int	update_hook(t_game *game)
{
	unsigned int	i;
	t_entity		*entity;
	suseconds_t		time;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		entity->update(game, entity);
		graph_add_sprite(game->graph, entity->sprite, entity->pos,
			entity->z_index, (t_effect){NULL, NULL});
		i++;
	}
	clear_screen(game, 0x0);
	graph_draw(game->graph, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	graph_reset(game->graph);
	return (0);
}

int	main(int argc, char *argv[])
{
	t_game	game;

	(void) argc;
	(void) argv;
	ft_bzero(&game, sizeof(t_game));
	game.mlx = mlx_init();
	game.win = mlx_new_window(game.mlx, 720, 480, "so_long");
	game.keys = ft_calloc(0xFFFF, sizeof(bool));
	game.canvas = mlx_new_image(game.mlx, 720, 480);
	game.entities = vector_new(sizeof(t_entity *), 0);
	game.graph = new_graph();

	game.gem = sprite(&game, "textures/gem.xpm");

	t_entity *player = player_new(&game, (t_vec2){0, 0});
	vector_add((void **)&game.entities, &player);

	mlx_do_key_autorepeatoff(game.mlx);
	mlx_hook(game.win, KeyPress, KeyPressMask, key_pressed_hook, &game);
	mlx_hook(game.win, KeyRelease, KeyReleaseMask, key_released_hook, &game);
	mlx_hook(game.win, 17, 0, close_hook, &game);
	mlx_loop_hook(game.mlx, update_hook, &game);
	mlx_loop(game.mlx);
	game_deinit(&game);
	mlx_do_key_autorepeaton(game.mlx);
	mlx_destroy_display(game.mlx);
}
