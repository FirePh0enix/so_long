/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 15:17:58 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/16 11:43:54 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>

void	*ft_memchr(const void *s, int c, size_t n)
{
	size_t		i;
	const char	*cs = s;

	i = 0;
	while (i < n)
	{
		if (cs[i] == (char) c)
			return ((void *)s + i);
		i++;
	}
	return (NULL);
}
