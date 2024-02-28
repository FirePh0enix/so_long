/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   write_ints.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 19:32:43 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:47:55 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"
#include "printf_int.h"
#include <stdio.h>

int	write_int(t_fmt *fmt, int64_t i, t_writer *w)
{
	char	buf[32];
	int		n;
	int64_t	num;
	int		len;
	int		len2;

	n = 0;
	if (i == 0)
		return (write_rpad_sign(fmt, 1, i, w)
			+ w->write(w, "0", 1) + write_lpad_sign(fmt, 1, i, w));
	num = i;
	if (i < 0)
		num = -i;
	len = 0;
	while (num > 0)
	{
		buf[len++] = "0123456789"[num % 10];
		num /= 10;
	}
	len2 = len;
	n += write_rpad_sign(fmt, len, i, w);
	while (--len >= 0)
		n += w->write(w, &buf[len], 1);
	n += write_lpad_sign(fmt, len2, i, w);
	return (n);
}

int	write_uint(t_fmt *fmt, uint64_t i, char *base, t_writer *w)
{
	const int	base_len = ft_strlen(base);
	char		buf[32];
	int			n;
	int			len;
	int			len2;

	n = 0;
	if (i == 0)
		return (w->write(w, "0", 1));
	if (fmt->prefix && base[10] == 'a')
		n += w->write(w, "0x", 2);
	else if (fmt->prefix && base[10] == 'A')
		n += w->write(w, "0X", 2);
	len = 0;
	while (i > 0)
	{
		buf[len++] = base[i % base_len];
		i /= base_len;
	}
	len2 = len;
	n += write_rpad(fmt, len, w);
	while (--len >= 0)
		n += w->write(w, &buf[len], 1);
	return (n += write_lpad(fmt, len2, w));
}

int	write_ptr(t_fmt *fmt, uintptr_t ptr, t_writer *w)
{
	if (ptr == 0)
		return (w->write(w, "(nil)", 5));
	return (w->write(w, "0x", 2) + write_uint(fmt, ptr, "0123456789abcdef", w));
}

int	handle_number(va_list list, char *s, t_fmt *fmt, t_writer *w)
{
	int	n;

	n = 0;
	if (s[0] == 'x')
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789abcdef", w));
	else if (s[0] == 'X')
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789ABCDEF", w));
	else if (s[0] == 'u')
		return (write_uint(fmt, va_arg(list, uint32_t), "0123456789", w));
	else if (s[0] == 'd' || s[0] == 'i')
		return (write_int(fmt, va_arg(list, int32_t), w));
	else if (s[0] == 'p')
		return (write_ptr(fmt, va_arg(list, uintptr_t), w));
	return (n);
}
