/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   a_star.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 18:16:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 13:41:38 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef A_STAR_H
# define A_STAR_H

# include "../so_long.h"

/*
 * g - distance between the current node and the start node.
 * h - distance between the current node and the end node.
 * f = g + h
 */
typedef struct s_anode
{
	struct s_anode	*parent;
	int				g;
	int				h;
	int				f;
	t_vec2i			pos;
}	t_anode;

t_vec2i	*astar_search(t_level *map, t_vec2i start, t_vec2i end);
t_anode	*new_node(t_anode *parent, t_vec2i pos);
bool	node_equals(t_anode *n1, t_anode *n2);
bool	contains_node(t_anode **nodes, t_anode *n);
void	add_node(t_anode ***list, t_anode *anode);
t_vec2i	*construct_path(t_anode *current_node, t_anode **open_list,
			t_anode **close_list);

#endif
