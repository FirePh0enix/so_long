/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vec2_calc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 12:21:13 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/09 16:19:41 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vec2.h"
#include <math.h>

static int	_abs(int a)
{
	if (a < 0)
		return (-a);
	return (a);
}

bool	vec2_equals(t_vec2 v1, t_vec2 v2, float approx)
{
	return (_abs(v1.x - v2.x) <= approx && _abs(v1.y - v2.y) <= approx);
}

float	vec2_length(t_vec2 v)
{
	return (sqrtf(v.x * v.x + v.y * v.y));
}

t_vec2	vec2_normalized(t_vec2 v)
{
	const float	length = vec2_length(v);

	return ((t_vec2){v.x / length, v.y / length});
}
