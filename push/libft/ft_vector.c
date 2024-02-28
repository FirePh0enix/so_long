/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_vector.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 22:57:13 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 12:38:55 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_vector(size_t el_size, size_t capacity)
{
	t_vecdata	*data;

	data = malloc(sizeof(t_vecdata) + capacity * el_size);
	data->el_size = el_size;
	data->capacity = capacity;
	data->size = 0;
	return (data + 1);
}

void	ft_vector_add(void *_vec, void *elp)
{
	t_vecdata	*vec_data;
	void		**vec;

	vec = _vec;
	vec_data = (void *)(*vec - sizeof(t_vecdata));
	if (vec_data->size == vec_data->capacity)
	{
		if (vec_data->capacity == 0)
			vec_data->capacity = 1;
		vec_data = realloc(vec_data, sizeof(t_vecdata)
				+ vec_data->capacity * 2 * vec_data->el_size);
		vec_data->capacity *= 2;
		*vec = ((void *)vec_data) + sizeof(t_vecdata);
	}
	ft_memcpy(*vec + vec_data->size * vec_data->el_size, elp,
		vec_data->el_size);
	vec_data->size++;
}

void	ft_vector_del(void *_vec, size_t index)
{
	t_vecdata	*vec_data;
	void		**vec;

	vec = _vec;
	vec_data = (void *)(*vec - sizeof(t_vecdata));
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (index + 1) * vec_data->el_size,
		(vec_data->size - index) * vec_data->el_size);
	vec_data->size--;
}

void	ft_vector_del_swap(void *_vec, size_t index)
{
	t_vecdata	*vec_data;
	void		**vec;

	vec = _vec;
	vec_data = (void *)(*vec - sizeof(t_vecdata));
	ft_memcpy(*vec + index * vec_data->el_size,
		*vec + (vec_data->size - 1) * vec_data->el_size,
		vec_data->el_size);
	vec_data->size--;
}
