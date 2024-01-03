/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   box.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 11:46:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 11:55:49 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef BOX_H
# define BOX_H

# include "vec2.h"
# include <stdbool.h>

typedef struct s_box
{
	t_vec2 min;
	t_vec2 max;
}	t_box;

t_box	box_for_position(t_box box, t_vec2 position);
bool	box_collide_with_point(t_box box, int x, int y);

#endif
