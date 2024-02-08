/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pixel.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 11:09:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 18:24:03 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "render.h"

t_trgb	get_pixel_color(t_img *img, int x, int y)
{
	return (((t_trgb*)img->data)[x + y * img->width]);
}

void	set_pixel_color(t_img *img, int x, int y, t_trgb color)
{
	((t_trgb *)img->data)[x + y  * img->width] = color;
}
