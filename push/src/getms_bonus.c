/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   getms_bonus.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/28 15:33:28 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 15:34:08 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <sys/select.h>
#include <sys/time.h>
#include <stddef.h>

suseconds_t	getms(void)
{
	struct timeval	val;

	gettimeofday(&val, NULL);
	return ((val.tv_sec * 1000000 + val.tv_usec) / 1000);
}
