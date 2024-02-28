/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vec2i.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 11:33:57 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 13:48:22 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vec2.h"

int	vec2i_length_sqr(t_vec2i a, t_vec2i b)
{
	return ((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
}
