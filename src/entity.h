/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   entity.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/02 12:17:29 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/02 23:58:48 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ENTITY_H
# define ENTITY_H

# include "math/vec2.h"
# include "so_long.h"

typedef struct s_entity	t_entity;

typedef void (*t_update)(t_game *, t_entity *);

typedef enum
{
	ETYPE_PLAYER,
	ETYPE_GEM,
}	t_etype;

typedef struct s_entity
{
	t_game		*game;
	t_etype		type;
	t_vec2		pos;
	t_update	update;
	void		*extension;
	t_sprite	*sprite;
	int			z_index;
}	t_entity;

// ----------------------------------------------
// PLAYER

# define PLAYER_SPEED 2

t_entity	*player_new(t_game *game, t_vec2 pos);
void		player_update(t_game *game, t_entity *entity);

// ----------------------------------------------
// GEM

t_entity	*gem_new(t_game *game, t_vec2 pos);
void		gem_update(t_game *game, t_entity *entity);

#endif
