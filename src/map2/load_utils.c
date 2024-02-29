/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 14:24:56 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/29 11:43:20 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <unistd.h>
#include "libft.h"

static int	_open(char *filename, int mode)
{
	int	fd;

	fd = open(filename, mode | O_DIRECTORY);
	if (fd != -1)
		return (close(fd), -1);
	fd = open(filename, mode);
	return (fd);
}

char	*read_to_string(char *filename)
{
	int		fd;
	char	*str;
	char	buffer[4096];
	int		str_size;
	int		n;

	fd = _open(filename, O_RDONLY);
	if (fd == -1)
		return (NULL);
	str = NULL;
	str_size = 0;
	n = 4096;
	while (n == 4096)
	{
		n = read(fd, buffer, 4096);
		if (n == -1)
			return (NULL);
		str = ft_realloc(str, str_size + 1, str_size + n + 1);
		if (!str)
			return (close(fd), NULL);
		ft_memcpy(str + str_size, buffer, n);
		str[str_size + n] = '\0';
		str_size += n;
	}
	return (close(fd), str);
}
