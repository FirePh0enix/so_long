/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 14:11:11 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/16 13:35:50 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

static int	is_in_str(char c, const char *s)
{
	while (*s)
	{
		if (*s == c)
			return (1);
		s++;
	}
	return (0);
}

char	*ft_strtrim(const char *s1, const char *set)
{
	int		start;
	int		end;
	char	*str;

	if (!s1 || !set)
		return (NULL);
	start = 0;
	while (s1[start] && is_in_str(s1[start], set))
		start++;
	end = ft_strlen(s1);
	while (end > start && is_in_str(s1[end - 1], set))
		end--;
	str = ft_calloc(end - start + 1, 1);
	if (!str)
		return (NULL);
	ft_memcpy(str, &s1[start], end - start);
	return (str);
}
