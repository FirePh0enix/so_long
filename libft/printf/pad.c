/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pad.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/27 13:11:37 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/27 14:34:26 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stddef.h>
#include <unistd.h>

static int	write_sign(t_fmt *fmt, int v)
{
	if (v < 0)
		return (write(1, "-", 1));
	else if (v >= 0 && fmt->sign)
		return (write(1, "+", 1));
	else if (fmt->space)
		return (write(1, " ", 1));
	return (0);
}

int	write_pad_signed_right(t_fmt *fmt, int len, int v)
{
	int	i;
	int	n;

	i = 0;
	n = 0;
	if (fmt->left_align)
		return (write_sign(fmt, v));
	if (fmt->pad_zero)
	{
		n += write_sign(fmt, v);
		if (v < 0)
			len++;
		while (i++ < fmt->min_width - len)
			n += write(1, "0", 1);
	}
	else
	{
		if (v < 0)
			len += 1;
		while (i++ < fmt->min_width - len)
			n += write(1, " ", 1);
		n += write_sign(fmt, v);
	}
	return (n);
}

int	write_pad_signed_left(t_fmt *fmt, int len, int v)
{
	int	i;
	int	n;

	i = 0;
	n = 0;
	if (!fmt->left_align)
		return (0);
	if (v < 0)
		len += 1;
	while (i++ < fmt->min_width - len)
		n += write(1, " ", 1);
	return (n);
}

int	write_pad_right(t_fmt *fmt, int len)
{
	int	i;
	int	n;

	n = 0;
	i = 0;
	if (fmt->left_align)
		return (0);
	if (fmt->prefix)
		len += 2;
	if (!fmt->pad_zero)
		while (i++ < fmt->min_width - len)
			n += write(1, " ", 1);
	else
		while (i++ < fmt->min_width - len)
			n += write(1, "0", 1);
	return (n);
}

int	write_pad_left(t_fmt *fmt, int len)
{
	int	i;
	int	n;

	n = 0;
	i = 0;
	if (!fmt->left_align)
		return (0);
	if (fmt->prefix)
		len += 2;
	while (i++ < fmt->min_width - len)
		n += write(1, " ", 1);
	return (n);
}
