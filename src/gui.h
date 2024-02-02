/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:32:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/02 15:45:19 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GUI_H
# define GUI_H

typedef struct s_game	t_game;

typedef struct s_gamemenu
{
}	t_gamemenu;

t_gamemenu	*menu_new();
void		draw_menu(t_game *game, t_gamemenu *menu);
void		menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y);

#endif
