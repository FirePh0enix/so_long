/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sprite.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:23:35 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 15:05:37 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

t_img	*sprite(t_game *game, char *filename)
{
	int	width;
	int	height;

	return (mlx_xpm_file_to_image(game->mlx, filename, &width, &height));
}
