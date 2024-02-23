/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   arena_alloc.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/23 13:23:19 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 16:42:31 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ARENA_ALLOC_H
# define ARENA_ALLOC_H

typedef struct s_arena
{
	int		el_size;
	void	*data;
	int		capacity;
	int		index;
}	t_arena;

void	arena_init(t_arena *allocator, int el_size, int capacity);
void	*arena_alloc(t_arena *allocator);
void	arena_release(t_arena *allocator);
void	arena_free(t_arena *allocator);

#endif
