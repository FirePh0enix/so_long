/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:32:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/07 13:20:05 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GUI_H
# define GUI_H

typedef struct s_game	t_game;

typedef void (*t_click)(t_game *game);

typedef struct s_btn
{
	int		x;
	int		y;
	int		size;
	char	*label;
	t_click	click;
}	t_btn;

typedef struct s_gamemenu
{
	t_btn	play;
	t_btn	edit;
}	t_gamemenu;

t_gamemenu	*menu_new();
void		draw_menu(t_game *game, t_gamemenu *menu);
void		menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y);

void		draw_hl(t_game *game, int x, int y, int size);

void		btn_update(t_game *game, t_btn *btn);
void		btn_click(t_game *game, t_btn *btn, int x, int y);

#endif
