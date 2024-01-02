/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 15:25:27 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/16 13:41:55 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

static char	*ft_strrev(char *s, int len)
{
	int		i;
	int		j;
	char	c;

	i = 0;
	j = len - 1;
	while (i < j)
	{
		c = s[i];
		s[i] = s[j];
		s[j] = c;
		i++;
		j--;
	}
	return (s);
}

static int	str_size(int n)
{
	int				len;
	unsigned int	un;

	len = 0;
	un = n;
	if (n == 0)
		return (1);
	if (n < 0)
	{
		un = -n;
		len++;
	}
	while (un > 0)
	{
		len++;
		un /= 10;
	}
	return (len);
}

char	*ft_itoa(int n)
{
	char			*s;
	unsigned int	un;
	int				i;
	const int		len = str_size(n) + 1;

	s = ft_calloc(len, 1);
	if (!s)
		return (NULL);
	un = n;
	if (n < 0)
		un = -n;
	else if (n == 0)
		s[0] = '0';
	i = 0;
	while (un > 0)
	{
		s[i++] = '0' + un % 10;
		un /= 10;
	}
	if (n < 0)
		s[i++] = '-';
	ft_strrev(s, i);
	return (s);
}
