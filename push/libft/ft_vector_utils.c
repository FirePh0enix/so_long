/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_vector_utils.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 23:23:51 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/07 19:21:15 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_vector_size(void *vec)
{
	return (((t_vecdata *)vec)->size);
}

void	ft_vector_free(void *vec)
{
	free(vec - sizeof(t_vecdata));
}

t_vecdata	*ft_vector_data(void *vec)
{
	return (vec - sizeof(t_vecdata));
}

void	ft_vector_iter(void *vec, void (*f)(void*))
{
	const unsigned int	size = ft_vector_size(vec);
	unsigned int		i;

	i = 0;
	while (i < size)
	{
		f(vec + i * ft_vector_data(vec)->el_size);
		i++;
	}
}
