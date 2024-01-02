/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 11:30:57 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/16 12:07:58 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stddef.h>

size_t	ft_strlcpy(char *dst, const char *src, size_t size)
{
	size_t	i;

	if (size == 0)
		return (ft_strlen(src));
	i = 0;
	while (src[i] && i < size - 1)
	{
		dst[i] = src[i];
		i++;
	}
	dst[i] = '\0';
	return (ft_strlen(src));
}

// size_t	ft_strlcpy(char *dst, const char *src, size_t size)
// {
// 	size_t	i;
// 	size_t	j;

// 	i = 0;
// 	j = 0;
// 	while (src[i])
// 	{
// 		if ((i < size - 1 && size != 0))
// 		{
// 			dst[i] = src[i];
// 			j++;
// 		}
// 		i++;
// 	}
// 	if (size != 0)
// 		dst[j] = '\0';
// 	return (i);
// }
