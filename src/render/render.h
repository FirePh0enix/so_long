/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 15:17:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 17:25:32 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef RENDER_H
# define RENDER_H

# include "../math/vec2.h"
# include <stdbool.h>

typedef struct s_sprite	t_sprite;
typedef struct s_game	t_game;

typedef enum
{
	NODE_SPRITE,
}	t_node_type;

typedef struct s_node
{
	t_node_type		type;
	struct s_node	*next;
	int				order;
	union
	{
		struct s_node_sprite
		{
			t_sprite	*ptr;
			t_vec2		pos;
			bool		flipped;
		}	sprite;
	};
}	t_node;

typedef struct s_renderer
{
	t_node	*root;
}	t_renderer;

t_renderer	*rdr_new();
void		rdr_free(t_renderer *rdr);
void		rdr_clear(t_renderer *rdr);
void		rdr_draw(t_renderer *rdr, t_game *game);

typedef struct s_add_sprite
{
	int		order;
	bool	flipped;
}	t_add_sprite;

/*
 * Create a new node representing a sprite.
 */
void	rdr_add_sprite(t_renderer *rdr, t_sprite *sp, t_vec2 pos, t_add_sprite);

typedef struct	s_draw
{
	int		scale;
	bool	flipped;
}	t_draw;

void	rdr_draw_sprite(t_game *game, t_sprite *sp, t_vec2 pos, t_draw draw);
void	rdr_clear_screan(t_game *game, unsigned int color);

#endif
