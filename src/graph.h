/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   graph.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:33:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/02 13:57:46 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GRAPH_H
# define GRAPH_H

# include "so_long.h"
# include "math/vec2.h"

enum
{
	NODE_SPRITE,
};

// TODO Re-add effects in the render graph
typedef struct s_effect
{
	int		(*apply)(int, int, int, void *);
	void	*user_data;
}	t_effect;

typedef struct s_node
{
	struct s_node	*next;
	int				type;
	int				order;
	union
	{
		struct s_node_sprite
		{
			t_sprite	*sprite;
			t_vec2		position;
			bool		flipped;
		}	sprite;
	};
}	t_node;

typedef struct s_render_graph
{
	t_node	*root;
}	t_graph;

t_graph			*new_graph(void);
void			graph_reset(t_graph *graph);

void			graph_add_sprite(t_graph *gr, t_sprite *sp, t_vec2 pos, int zi,
	bool flipped);
void			graph_draw(t_graph *graph, t_game *game);

#endif
