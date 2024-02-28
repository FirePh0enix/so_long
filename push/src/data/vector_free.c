/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vector_free.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 14:03:10 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/26 13:40:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "vector.h"
#include "libft.h"
#include <stdlib.h>

void	vector_free(void *vec)
{
	free(vec - sizeof(t_vec_data));
}

void	vector_free_with(void *vec, void (*func)(void *))
{
	unsigned int	i;

	i = 0;
	while (i < vector_size(vec))
	{
		func(*((void **)vec + i));
		i++;
	}
	vector_free(vec);
}

void	vector_remove(void **vec, unsigned int index)
{
	t_vec_data	*vec_data;

	vec_data = (void *)(*vec - sizeof(t_vec_data));
	if (index >= vec_data->size)
		return ;
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (index + 1) * vec_data->el_size,
		(vec_data->size - index - 1) * vec_data->el_size);
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
