/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   anim.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 16:18:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/01 16:28:08 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "anim.h"
#include "../so_long.h"
#include <sys/select.h>

t_anim	*anim_new(t_sprite **sprites, size_t size, int interval, bool loop)
{
	t_anim	*anim;

	anim = malloc(sizeof(t_anim));
	anim->sprites = sprites;
	anim->size = size;
	anim->frame_interval = interval;
	anim->loop = loop;
	anim->current_frame = 0;
	anim->last_frame = 0;
	return (anim);
}

void	anim_update(t_anim *anim)
{
	suseconds_t	time;

	time = getms();
	if (time - anim->last_frame < anim->frame_interval)
		return ;
	anim->last_frame = time;
	if (anim->current_frame == anim->size - 1 && anim->loop)
		anim->current_frame = 0;
	else if (anim->current_frame < anim->size - 1)
		anim->current_frame++;
}

t_sprite	*anim_get_sprite(t_anim *anim)
{
	return (anim->sprites[anim->current_frame]);
}

