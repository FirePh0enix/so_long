/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 13:40:26 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/14 17:48:40 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	const unsigned char	*us1 = (const unsigned char *) s1;
	const unsigned char	*us2 = (const unsigned char *) s2;
	size_t				i;

	i = 0;
	while (i < n && (us1[i] || us2[i]))
	{
		if (us1[i] < us2[i])
			return (-1);
		else if (us1[i] > us2[i])
			return (1);
		i += 1;
	}
	return (0);
}
