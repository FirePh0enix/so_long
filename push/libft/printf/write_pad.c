/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   write_pad.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 19:40:41 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:43:37 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "printf_int.h"

static int	_write_sign(t_fmt *fmt, int64_t i, t_writer *writer)
{
	if (i < 0)
		return (writer->write(writer, "-", 1));
	else if (i >= 0 && fmt->sign)
		return (writer->write(writer, "+", 1));
	else if (fmt->space)
		return (writer->write(writer, " ", 1));
	return (0);
}

int	write_lpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer)
{
	int	j;
	int	n;

	j = 0;
	n = 0;
	if (!fmt->left_align)
		return (0);
	if (i < 0)
		len += 1;
	while (j++ < fmt->min_width - len)
		n += writer->write(writer, " ", 1);
	return (n);
}

int	write_rpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer)
{
	int	j;
	int	n;

	j = 0;
	n = 0;
	if (fmt->left_align)
		return (_write_sign(fmt, i, writer));
	if (fmt->pad_zero)
	{
		n += _write_sign(fmt, i, writer);
		if (i < 0)
			len++;
		while (j++ < fmt->min_width - len)
			n += writer->write(writer, "0", 1);
	}
	else
	{
		if (i < 0)
			len += 1;
		while (j++ < fmt->min_width - len)
			n += writer->write(writer, " ", 1);
		n += _write_sign(fmt, i, writer);
	}
	return (n);
}

int	write_lpad(t_fmt *fmt, int len, t_writer *writer)
{
	int	j;
	int	n;

	n = 0;
	j = 0;
	if (!fmt->left_align)
		return (0);
	if (fmt->prefix)
		len += 2;
	while (j++ < fmt->min_width - len)
		n += writer->write(writer, " ", 1);
	return (n);
}

int	write_rpad(t_fmt *fmt, int len, t_writer *writer)
{
	int	j;
	int	n;

	n = 0;
	j = 0;
	if (fmt->left_align)
		return (0);
	if (fmt->prefix)
		len += 2;
	if (!fmt->pad_zero)
		while (j++ < fmt->min_width - len)
			n += writer->write(writer, " ", 1);
	else
		while (j++ < fmt->min_width - len)
			n += writer->write(writer, "0", 1);
	return (n);
}
