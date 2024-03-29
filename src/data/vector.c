/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vector.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 20:03:45 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/29 11:38:18 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vector.h"
#include "libft.h"
#include <stdlib.h>

void	*vector_new(unsigned int el_size, unsigned int capacity)
{
	t_vec_data	*vec_data;

	if (capacity == 0)
		capacity = 1;
	vec_data = malloc(sizeof(t_vec_data) + capacity * el_size);
	if (!vec_data)
		return (NULL);
	vec_data->capacity = capacity;
	vec_data->el_size = el_size;
	vec_data->size = 0;
	return (((void *)vec_data) + sizeof(t_vec_data));
}

void	vector_add(void **vec, void *elp)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
	if (vec_data->size == vec_data->capacity)
	{
		vec_data = ft_realloc(vec_data, sizeof(t_vec_data)
				+ vec_data->capacity * vec_data->el_size, sizeof(t_vec_data)
				+ vec_data->capacity * 2 * vec_data->el_size);
		if (!vec_data)
		{
			*vec = NULL;
			return ;
		}
		vec_data->capacity *= 2;
		*vec = ((void *)vec_data) + sizeof(t_vec_data);
	}
	ft_memcpy(*vec + vec_data->size * vec_data->el_size, elp,
		vec_data->el_size);
	vec_data->size++;
}

unsigned int	vector_size(void *vec)
{
	t_vec_data	*vec_data;

	if (!vec)
		return (0);
	vec_data = (void *)(vec - sizeof(t_vec_data));
	return (vec_data->size);
}

void	vector_pop(void *vec)
{
	t_vec_data	*vec_data;

	if (!vec)
		return ;
	vec_data = (void *)(vec - sizeof(t_vec_data));
	vec_data->size--;
}
