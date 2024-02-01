/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   anim.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 16:12:16 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/01 16:15:43 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ANIM_H
# define ANIM_H

# include <stddef.h>

typedef struct s_sprite	t_sprite;

typedef struct s_anim
{
	t_sprite **sprites;
	size_t	size;
	size_t	currect_step;
}	t_anim;

#endif

