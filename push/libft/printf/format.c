/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   format.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 19:23:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:44:56 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"
#include "printf_int.h"
#include <stdio.h>

int	handle_str(va_list list, const char **fmt, t_writer *w)
{
	char	c;
	char	*str;

	if ((*fmt)[0] == 'c')
	{
		c = va_arg(list, int);
		*fmt += 1;
		return (w->write(w, &c, 1));
	}
	else if ((*fmt)[0] == 's')
	{
		*fmt += 1;
		str = va_arg(list, char *);
		return (w->write(w, str, ft_strlen(str)));
	}
	return (0);
}

static int	_parse_num(const char **fmt)
{
	int	i;

	i = 0;
	while (**fmt >= '0' && **fmt <= '9')
	{
		i = i * 10 + (**fmt - '0');
		*fmt += 1;
	}
	*fmt += 1;
	return (i);
}

int	handle_int(va_list list, const char **fmt, t_writer *w)
{
	t_fmt	f;
	char	*s2;

	ft_bzero(&f, sizeof(t_fmt));
	s2 = (char *) *fmt;
	while (!isflag(**fmt))
	{
		if (**fmt == '#')
			f.prefix = true;
		else if (**fmt == '+')
			f.sign = true;
		else if (**fmt == ' ')
			f.space = true;
		else if (**fmt == '-')
			f.left_align = 1;
		else if (**fmt == '0' && !f.pad_zero)
			f.pad_zero = true;
		else if (**fmt >= '0' && **fmt <= '9')
			f.min_width = _parse_num(fmt);
		*fmt += 1;
	}
	if (!isflag(**fmt))
		return (w->write(w, "%", 1) + w->write(w, s2, (*fmt - s2)));
	*fmt += 1;
	return (handle_number(list, (char *)*fmt - 1, &f, w));
}

int	handle_flags(va_list list, const char **fmt, t_writer *w)
{
	if ((*fmt)[0] == '%' || (*fmt)[0] == '\0')
	{
		*fmt += 1;
		return (w->write(w, "%", 1));
	}
	else if ((*fmt)[0] == 'c' || (*fmt)[0] == 's')
		return (handle_str(list, fmt, w));
	else
		return (handle_int(list, fmt, w));
}

int	format(const char *fmt, va_list list, t_writer *w)
{
	int	n;

	if (!fmt)
		return (-1);
	n = 0;
	while (*fmt)
	{
		if (*fmt == '%')
		{
			fmt++;
			n += handle_flags(list, &fmt, w);
		}
		else
		{
			n += w->write(w, fmt, 1);
			fmt++;
		}
	}
	return (n);
}
