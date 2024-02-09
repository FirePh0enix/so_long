/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   game_free.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:37:47 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 14:31:43 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"
#include "so_long.h"
#include "render/render.h"
#include "entity.h"
#include "data/vector.h"

static void	_free_anim(t_game *game, t_img **sprites, int size)
{
	int	i;

	i = 0;
	while (i < size)
	{
		mlx_destroy_image(game->mlx, sprites[i]);
		i++;
	}
	free(sprites);
}

static void	_free_images(t_game *game)
{
	int	i;

	_free_anim(game, game->goblin_idle, 6);
	_free_anim(game, game->goblin_walk, 6);
	_free_anim(game, game->goblin_atk_side, 6);
	_free_anim(game, game->warrior_idle, 6);
	_free_anim(game, game->warrior_walk, 6);
	_free_anim(game, game->warrior_atk_side, 6);
	_free_anim(game, game->money_spawn, 7);
	_free_anim(game, game->foam, 8);
	free(game->foam_anim);
	i = -1;
	while (++i)
		mlx_destroy_image(game->mlx, game->sprites[i]);
}

void	game_free(t_game *game)
{
	unsigned int	i;

	rdr_free(game->rdr);
	_free_images(game);
	free(game->keys);
	i = 0;
	while (i < vector_size(game->entities))
	{
		if (game->entities[i]->free)
			game->entities[i]->free(game->entities[i]);
		free(game->entities[i]);
		i++;
	}
	vector_free(game->entities);
	map_free(game->map);
	free(game->menu);
	mlx_destroy_image(game->mlx, game->canvas);
}
