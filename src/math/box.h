/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   box.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 11:46:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 18:04:23 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef BOX_H
# define BOX_H

# include "vec2.h"
# include <stdbool.h>

typedef struct s_map	t_map;

typedef struct s_box
{
	t_vec2	min;
	t_vec2	max;
}	t_box;

t_box	box_for_position(t_box box, t_vec2 position);
bool	box_collide_with_point(t_box box, int x, int y);
bool	box_collide_with_box(t_box b1, t_box b2);
bool	box_collide_with_map(t_box box, t_map *map);

typedef struct s_boxi
{
	t_vec2i	min;
	t_vec2i	max;
}	t_boxi;

#endif
