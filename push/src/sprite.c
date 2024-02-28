/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sprite.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:23:35 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 12:39:02 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

t_img	*sprite(t_game *game, char *filename)
{
	int	width;
	int	height;

	return (mlx_xpm_file_to_image(game->mlx, filename, &width, &height));
}

t_img	**sp(t_game *game)
{
	return (game->sprites);
}
