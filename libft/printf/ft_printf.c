/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 11:28:21 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/27 14:25:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdarg.h>
#include <stdio.h>
#include <unistd.h>

static int	format_str(va_list list, char **s)
{
	char	c;

	if ((*s)[0] == 'c')
	{
		c = (char) va_arg(list, int);
		*s += 1;
		return (write(1, &c, 1));
	}
	else if ((*s)[0] == 's')
	{
		*s += 1;
		return (write_str(va_arg(list, char *)));
	}
	return (0);
}

static int	format_int(va_list list, char **s)
{
	t_fmt	fmt;
	char	*s2;

	printf_memset(&fmt, 0, sizeof(t_fmt));
	s2 = *s;
	while (!isflag(**s))
	{
		if ((*s)[0] == '#')
			fmt.prefix = 1;
		else if ((*s)[0] == '+')
			fmt.sign = 1;
		else if ((*s)[0] == ' ')
			fmt.space = 1;
		else if ((*s)[0] == '-')
			fmt.left_align = 1;
		else if ((*s)[0] == '0')
			fmt.pad_zero = 1;
		else if ((*s)[0] > '0' && (*s)[0] < '9')
			fmt.min_width = printf_atoi(s);
		*s += 1;
	}
	if (!isflag((*s)[0]))
		return (write(1, "%", 1) + write(1, s2, (*s - s2)));
	return (write_int(list, s, &fmt));
}

static int	format(va_list list, char **s)
{
	if ((*s)[0] == '%')
	{
		*s += 1;
		return (write(1, "%", 1));
	}
	else if ((*s)[0] == '\0')
	{
		return (write(1, "%", 1));
	}
	else if ((*s)[0] == 'c' || (*s)[0] == 's')
		return (format_str(list, s));
	else
		return (format_int(list, s));
	return (0);
}

int	ft_printf(const char *fmt, ...)
{
	va_list	list;
	int		n;

	if (!fmt)
		return (-1);
	va_start(list, fmt);
	n = 0;
	while (*fmt)
	{
		if (*fmt == '%')
		{
			fmt++;
			n += format(list, (char **)&fmt);
		}
		else
		{
			n += write(1, fmt, 1);
			fmt++;
		}
	}
	va_end(list);
	return (n);
}
