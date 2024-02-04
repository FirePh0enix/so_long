/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   game_free.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:37:47 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 23:52:10 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"
#include "render/render.h"
#include "anim/anim.h"
#include "entity.h"
#include "data/vector.h"

static void	_free_anim(t_game *game, t_sprite **sprites, int size)
{
	int	i;

	i = 0;
	while (i < size)
	{
		mlx_destroy_image(game->mlx, sprites[i]->img);
		i++;
	}
	vector_free(sprites);
}

static void	_free_images(t_game *game)
{
	mlx_destroy_image(game->mlx, game->solid->img);
	mlx_destroy_image(game->mlx, game->gem->img);
	mlx_destroy_image(game->mlx, game->door->img);
	_free_anim(game, game->goblin_idle, 6);
	_free_anim(game, game->goblin_walk, 6);
	_free_anim(game, game->goblin_atk_side, 6);
	_free_anim(game, game->warrior_idle, 6);
	_free_anim(game, game->money_spawn, 7);
	mlx_destroy_image(game->mlx, game->ground_mid->img);
	mlx_destroy_image(game->mlx, game->ground_top->img);
	mlx_destroy_image(game->mlx, game->ground_topleft->img);
	mlx_destroy_image(game->mlx, game->ground_topright->img);
	mlx_destroy_image(game->mlx, game->ground_left->img);
	mlx_destroy_image(game->mlx, game->ground_right->img);
	mlx_destroy_image(game->mlx, game->ground_bot->img);
	mlx_destroy_image(game->mlx, game->ground_botleft->img);
	mlx_destroy_image(game->mlx, game->ground_botright->img);
	mlx_destroy_image(game->mlx, game->ground_toplr->img);
	mlx_destroy_image(game->mlx, game->ground_lr->img);
	mlx_destroy_image(game->mlx, game->ground_botlr->img);
	mlx_destroy_image(game->mlx, game->ground_leftbt->img);
	mlx_destroy_image(game->mlx, game->ground_bt->img);
	mlx_destroy_image(game->mlx, game->ground_rightbt->img);
	mlx_destroy_image(game->mlx, game->ground_all->img);
	_free_anim(game, game->foam, 8);
	free(game->foam_anim);
	mlx_destroy_image(game->mlx, game->btn_left->img);
	mlx_destroy_image(game->mlx, game->btn_mid->img);
	mlx_destroy_image(game->mlx, game->btn_right->img);
	mlx_destroy_image(game->mlx, game->hl_tl->img);
	mlx_destroy_image(game->mlx, game->hl_tr->img);
	mlx_destroy_image(game->mlx, game->hl_bl->img);
	mlx_destroy_image(game->mlx, game->hl_br->img);
	mlx_destroy_image(game->mlx, game->plus->img);
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
	map_free(game->map);
}
