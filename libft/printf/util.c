/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   util.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 14:36:12 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/27 14:26:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stddef.h>

int	isflag(char c)
{
	return (c == 'd' || c == 'i' || c == 'x' || c == 'X' || c == 'c'
		|| c == 's' || c == '%' || c == 'p' || c == 'u');
}

void	*printf_memset(void *p, int c, int n)
{
	char	*s;
	int		i;

	s = p;
	i = 0;
	while (i < n)
	{
		s[i] = (char) c;
		i++;
	}
	return (p);
}

size_t	printf_strlen(char *s)
{
	size_t	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}

int	printf_atoi(char **s)
{
	int	value;

	value = 0;
	while (**s >= '0' && **s <= '9')
	{
		value = value * 10 + (**s - '0');
		*s += 1;
	}
	*s -= 1;
	return (value);
}
