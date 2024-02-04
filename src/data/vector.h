/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vector.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 20:03:50 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/04 00:18:40 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef VECTOR_H
# define VECTOR_H

typedef struct s_vec_data
{
	unsigned int	size;
	unsigned int	capacity;
	unsigned int	el_size;
}	t_vec_data;

void			*vector_new(unsigned int el_size, unsigned int capacity);
void			vector_add(void **vec, void *elp);
void			vector_remove(void **vec, unsigned int index);
void			vector_remove_swap(void **vec, unsigned int index);
unsigned int	vector_size(void *vec);
void			vector_free(void *vec);
void			vector_free_with(void *vec, void (*func)(void *));

#endif
