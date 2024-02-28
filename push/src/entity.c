/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   entity.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/21 14:10:52 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/21 14:13:05 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "entity.h"
#include <stdlib.h>

void	entity_free(t_entity *entity)
{
	if (entity->free)
		entity->free(entity);
	free(entity);
}
