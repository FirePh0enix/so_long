/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:32:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/08 14:54:38 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GUI_H
# define GUI_H

# include "math/vec2.h"
# include "render/render.h"

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
void		draw_banner_h(t_game *game, t_vec2i pos, t_vec2i size);
void		draw_banner_v(t_game *game, t_vec2i pos, t_vec2i size);
void		draw_banner_cl(t_game *game, t_vec2i pos, t_vec2i size);
void		draw_banner_cr(t_game *game, t_vec2i pos, t_vec2i size);

void		draw_ribbon(t_game *game, t_vec2i pos, int size);

void		btn_update(t_game *game, t_btn *btn);
void		btn_click(t_game *game, t_btn *btn, int x, int y);

int			text_center_x(t_font *font, char *s, int px, int pwidth);
int			text_center_y(t_font *font, char *s, int py, int pheight);

#endif
