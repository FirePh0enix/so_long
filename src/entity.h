/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   entity.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 12:17:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/06 10:55:36 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ENTITY_H
# define ENTITY_H

# include "math/box.h"
# include "math/vec2.h"
# include "so_long.h"

typedef struct s_entity	t_entity;

typedef void			(*t_update)(t_game *, t_entity *);
typedef void			(*t_free)(t_entity *);

typedef enum etype
{
	ETYPE_PLAYER,
	ETYPE_GEM,
	ETYPE_ENEMY
}	t_etype;

typedef enum state
{
	STATE_ALIVE,
	STATE_DEAD,
	STATE_NOT_ALIVE
}	t_state;

typedef struct s_entity
{
	t_game		*game;
	t_etype		type;
	t_vec2		pos;
	t_update	update;
	t_free		free;
	void		*extension;
	t_img		*sprite;
	t_vec2		sprite_offset;
	int			z_index;
	t_box		box;
	t_vec2		vel;
	t_state		state;
	bool		flipped;
	int			health;
	int			max_health;
}	t_entity;

// ----------------------------------------------
// PLAYER

# define PLAYER_SPEED 3

t_entity	*player_new(t_game *game, t_vec2 pos);
void		player_update(t_game *game, t_entity *entity);

// ----------------------------------------------
// GEM

t_entity	*gem_new(t_game *game, t_vec2 pos);
void		gem_update(t_game *game, t_entity *entity);

// ----------------------------------------------
// ENEMY

t_entity	*knight_new(t_game *game, t_vec2 pos);
void		knight_update(t_game *game, t_entity *entity);

#endif
