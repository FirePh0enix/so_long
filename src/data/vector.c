/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vector.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 20:03:45 by ledelbec          #+#    #+#             */
/*   Updated: 2024/01/03 12:05:22 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vector.h"
#include "libft.h"
#include <stdlib.h>

void	*vector_new(unsigned int el_size, unsigned int capacity)
{
	t_vec_data	*vec_data;

	vec_data = malloc(sizeof(t_vec_data) + capacity * el_size);
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
		if (vec_data->capacity == 0)
			vec_data->capacity = 1;
		vec_data = realloc(vec_data, sizeof(t_vec_data)
				+ vec_data->capacity * 2 * vec_data->el_size);
		vec_data->capacity *= 2;
		*vec = ((void *)vec_data) + sizeof(t_vec_data);
	}
	ft_memcpy(*vec + vec_data->size * vec_data->el_size, elp,
		vec_data->el_size);
	vec_data->size++;
}

void	vector_remove(void **vec, unsigned int index)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (index + 1) * vec_data->el_size,
		(vec_data->size - index) * vec_data->el_size);
	vec_data->size--;
}

void	vector_remove_swap(void **vec, unsigned int index)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (vec_data->size - 1) * vec_data->el_size,
		vec_data->el_size);
	vec_data->size--;
}

unsigned int	vector_size(void *vec)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(vec - sizeof(t_vec_data));
	return (vec_data->size);
}
