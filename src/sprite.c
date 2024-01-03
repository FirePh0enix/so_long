/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sprite.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:23:35 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 19:49:31 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

t_sprite	*sprite(t_game *game, char *filename)
{
	t_sprite	*sprite;

	sprite = malloc(sizeof(t_sprite));
	sprite->img = mlx_xpm_file_to_image(game->mlx,
			filename, &sprite->width, &sprite->height);
	return (sprite);
}
