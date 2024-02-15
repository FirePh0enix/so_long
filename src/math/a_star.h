/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:16:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 15:45:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef A_STAR_H
# define A_STAR_H

# include "../so_long.h"

t_vec2i	*astar_search(t_level *map, t_vec2i start, t_vec2i end);

#endif
