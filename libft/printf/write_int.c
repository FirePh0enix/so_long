/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   write_int.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 13:12:20 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/27 14:39:34 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stddef.h>
#include <stdarg.h>
#include <stdio.h>
#include <unistd.h>

static int	write_i32(t_fmt *fmt, long i)
{
	int		n;
	char	buf[32];
	long	num;
	long	len;
	long	len2;

	n = 0;
	if (i == 0)
		return (write_pad_signed_right(fmt, 1, i)
			+ write(1, "0", 1) + write_pad_signed_left(fmt, 1, i));
	num = i;
	if (i < 0)
		num = -i;
	len = 0;
	while (num > 0)
	{
		buf[len++] = "0123456789abcdef"[num % 10];
		num /= 10;
	}
	len2 = len;
	n += write_pad_signed_right(fmt, len, i);
	while (--len >= 0)
		n += write(1, &buf[len], 1);
	n += write_pad_signed_left(fmt, len2, i);
	return (n);
}

static int	write_u64(size_t i, t_fmt *fmt, char **s, char *base_str)
{
	int		n;
	char	buf[32];
	long	len;
	long	len2;

	n = 0;
	*s += 1;
	if (i == 0)
		return (write(1, "0", 1));
	else if (fmt->prefix == 1 && base_str[10] == 'a')
		n += write(1, "0x", 2);
	else if (fmt->prefix == 1 && base_str[10] == 'A')
		n += write(1, "0X", 2);
	len = 0;
	while (i > 0)
	{
		buf[len++] = base_str[i % printf_strlen(base_str)];
		i /= printf_strlen(base_str);
	}
	len2 = len;
	n += write_pad_right(fmt, len);
	while (--len >= 0)
		n += write(1, &buf[len], 1);
	return (n + write_pad_left(fmt, len2));
}

static int	write_ptr(void *p, char **s, t_fmt *fmt)
{
	if (p == NULL)
	{
		*s += 1;
		return (write(1, "(nil)", 5));
	}
	return (write(1, "0x", 2)
		+ write_u64((size_t) p, fmt, s, HEX_L));
}

int	write_int(va_list list, char **s, t_fmt *fmt)
{
	int		n;

	n = 0;
	if ((*s)[0] == 'x')
		return (write_u64(va_arg(list, unsigned int), fmt, s, HEX_L));
	else if ((*s)[0] == 'X')
		return (write_u64(va_arg(list, unsigned int), fmt, s, HEX_U));
	else if ((*s)[0] == 'u')
		return (n + write_u64(va_arg(list, unsigned int), fmt, s, DEC));
	else if ((*s)[0] == 'd' || (*s)[0] == 'i')
	{
		*s += 1;
		return (n + write_i32(fmt, va_arg(list, int)));
	}
	else if ((*s)[0] == 'p')
		return (write_ptr(va_arg(list, void *), s, fmt));
	return (n);
}
