/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vec2.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 12:19:17 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 11:37:02 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef VEC2_H
# define VEC2_H

# include <stdbool.h>

typedef struct s_vec2
{
	float	x;
	float	y;
}	t_vec2;

t_vec2	vec2_add(t_vec2 v1, t_vec2 v2);
t_vec2	vec2_sub(t_vec2 v1, t_vec2 v2);
t_vec2	vec2_mul(t_vec2 v, float scale);

float	vec2_length(t_vec2 v);
t_vec2	vec2_normalized(t_vec2 v);

bool	vec2_equals(t_vec2 v1, t_vec2 v2, float approx);

typedef struct s_vec2i
{
	int	x;
	int	y;
}	t_vec2i;

int		vec2i_length_sqr(t_vec2i a, t_vec2i b);

#endif
