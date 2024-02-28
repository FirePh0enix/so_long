/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_int.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/07 19:30:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:40:13 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PRINTF_INT_H
# define PRINTF_INT_H

# include <stdint.h>
# include <stdbool.h>
# include "../libft.h"

typedef struct s_fmt
{
	bool	prefix;
	bool	sign;
	bool	space;
	int		min_width;
	bool	left_align;
	bool	pad_zero;
}	t_fmt;

struct		s_writer;
typedef int	(*t_write)(struct s_writer *w, const char *s, int len);

typedef struct s_writer
{
	t_write	write;
	void	*p;
}	t_writer;

int		write_int(t_fmt *fmt, int64_t i, t_writer *writer);
int		write_uint(t_fmt *fmt, uint64_t i, char *base, t_writer *writer);
int		write_ptr(t_fmt *fmt, uintptr_t ptr, t_writer *writer);

int		handle_number(va_list list, char *s, t_fmt *fmt, t_writer *writer);

int		write_lpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer);
int		write_rpad_sign(t_fmt *fmt, int len, int64_t i, t_writer *writer);
int		write_lpad(t_fmt *fmt, int len, t_writer *writer);
int		write_rpad(t_fmt *fmt, int len, t_writer *writer);

int		format(const char *fmt, va_list list, t_writer *writer);

bool	isflag(char c);

#endif
