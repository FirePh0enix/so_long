/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   graph.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 14:33:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 14:38:12 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GRAPH_H
# define GRAPH_H

# include "so_long.h"
# include "math/vec2.h"

enum
{
	NODE_SPRITE,
	//NODE_DEBUG_BOX,
};

typedef struct s_effect
{
	int		(*apply)(int, int, int, void *);
	void	*user_data;
} t_effect;

typedef struct s_node
{
	struct s_node	*next;
	int				type;
	int				order;
	union
	{
		struct
		{
			t_sprite *sprite;
			t_vec2	  position;
		} sprite;
		struct
		{
			t_sprite *sprite;
			t_vec2	  position;
		} ui;
		// struct
		// {
		// 	t_box box;
		// 	int	  color;
		// } debug_box;
	};
	t_effect effect;
} t_node;

typedef struct s_render_graph
{
	t_node *root;
} t_render_graph;

t_render_graph *new_graph();
void			graph_reset(t_render_graph *graph);

void graph_add_sprite(t_render_graph *graph, t_sprite *sprite, t_vec2 pos, int order, t_effect effect);
// void graph_add_debug_box(t_render_graph *graph, t_box box, int color);

void graph_draw(t_render_graph *graph, t_game *game);

#endif
