/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   anim.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 16:12:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 18:54:40 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ANIM_H
# define ANIM_H

# include <stddef.h>
# include <stdbool.h>
#include <sys/select.h>

typedef struct s_sprite	t_sprite;

typedef struct s_anim
{
	t_sprite 		**sprites;
	size_t		size;
	size_t		current_frame;
	suseconds_t	frame_interval;
	suseconds_t	last_frame;
	bool		loop;
}	t_anim;

t_anim		*anim_new(t_sprite **sprites, size_t size, int interval, bool loop);
void		anim_update(t_anim *anim);
t_sprite*	anim_get_sprite(t_anim *anim);

#endif

