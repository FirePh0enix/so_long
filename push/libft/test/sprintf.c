/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sprintf.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/28 13:12:25 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:48:58 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

void	test_sprintf(void)
{
	char	buffer[128];

	ft_sprintf(buffer, "Hello %d world!", 3);
	printf("%s\n", buffer);
}
