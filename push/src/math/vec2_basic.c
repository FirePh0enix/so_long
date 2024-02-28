/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vec2_basic.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/09 16:18:45 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 16:29:19 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vec2.h"

t_vec2	vec2_add(t_vec2 v1, t_vec2 v2)
{
	return ((t_vec2){v1.x + v2.x, v1.y + v2.y});
}

t_vec2	vec2_sub(t_vec2 v1, t_vec2 v2)
{
	return ((t_vec2){v1.x - v2.x, v1.y - v2.y});
}

t_vec2	vec2_mul(t_vec2 v, float scale)
{
	return ((t_vec2){v.x * scale, v.y * scale});
}
