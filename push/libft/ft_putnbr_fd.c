/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:34:35 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/08 16:35:03 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putnbr_fd(int nb, int fd)
{
	char	c;
	long	a;
	int		index;
	char	buffer[10];

	a = nb;
	index = 0;
	if (a < 0)
	{
		a *= -1;
		write(fd, "-", 1);
	}
	else if (a == 0)
		write(fd, "0", 1);
	while (a > 0)
	{
		c = '0' + a % 10;
		buffer[index++] = c;
		a /= 10;
	}
	index--;
	while (index >= 0)
	{
		write(fd, &buffer[index--], 1);
	}
}
