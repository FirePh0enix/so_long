/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   write_str.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 15:50:01 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/27 11:41:54 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int	write_str(char *s)
{
	int	len;

	if (s == NULL)
		return (write(1, "(null)", 6));
	len = 0;
	while (s[len])
		len++;
	return (write(1, s, len));
}

int	write_chr(char c)
{
	return (write(1, &c, 1));
}
