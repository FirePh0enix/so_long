/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   box.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 11:48:45 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 11:55:48 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "box.h"

t_box	box_for_position(t_box box, t_vec2 pos)
{
	return ((t_box){{box.min.x + pos.x, box.min.y + pos.y},
		{box.max.x + pos.x, box.max.y + pos.y}});
}

bool	box_collide_with_point(t_box box, int x, int y)
{
	return (x >= box.min.x && x <= box.max.x && y >= box.min.y && y <= box.max.y);
}
