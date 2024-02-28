/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   camera.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 14:00:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/27 14:01:57 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "so_long.h"

t_vec2	camera_off(t_game *game, t_vec2 pos)
{
	return ((t_vec2){pos.x - game->camera_pos.x + WIN_WIDTH / 2.0,
		pos.y - game->camera_pos.y + WIN_HEIGHT / 2.0});
}
