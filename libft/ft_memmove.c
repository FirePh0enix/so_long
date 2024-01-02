/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 10:33:57 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/16 14:20:04 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	char		*cdst;
	const char	*csrc = src;
	size_t		i;

	i = -1;
	cdst = dest;
	if (dest > src)
		while (n--)
			cdst[n] = csrc[n];
	else
		while (++i < n)
			cdst[i] = csrc[i];
	return (dest);
}
