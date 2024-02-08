/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pixel.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/08 11:09:12 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 11:23:52 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

unsigned char	get_red(unsigned int color)
{
	return ((color >> 16) & 0xFF);
}

unsigned char	get_green(unsigned int color)
{
	return ((color >> 8) & 0xFF);
}

unsigned char	get_blue(unsigned int color)
{
	return (color & 0xFF);
}

unsigned char	get_alpha(unsigned int color)
{
	return ((color >> 24) & 0xFF);
}
