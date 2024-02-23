/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   arena_alloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/23 13:30:58 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/23 16:42:18 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "arena_alloc.h"
#include <stdlib.h>
#include <stdbool.h>
#include "libft.h"
#include <stdio.h>

void	arena_init(t_arena *allocator, int el_size, int capacity)
{
	allocator->el_size = el_size;
	allocator->data = ft_calloc(1, el_size * capacity);
	allocator->capacity = capacity;
	allocator->index = 0;
}

void	*arena_alloc(t_arena *allocator)
{
	if (allocator->index == allocator->capacity || allocator->data == NULL)
		return (NULL);
	allocator->index += 1;
	return (allocator->data + (allocator->el_size * (allocator->index - 1)));
}

void	arena_release(t_arena *allocator)
{
	allocator->index = 0;
}

void	arena_free(t_arena *allocator)
{
	free(allocator->data);
}
