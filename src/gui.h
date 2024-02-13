/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gui.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 14:32:26 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/13 16:06:40 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GUI_H
# define GUI_H

# include "math/vec2.h"
# include "render/render.h"

typedef struct s_game	t_game;
typedef void			(*t_click)(t_game *game);

typedef struct s_btn
{
	int		x;
	int		y;
	int		size;
	char	*label;
	t_img	*img;
	t_click	click;
	bool	pressed;
	bool	disabled;
}	t_btn;

t_btn	btn_new_label(t_vec2i pos, int size, char *label, t_click click);
t_btn	btn_new_img(t_vec2i pos, int size, t_img *img, t_click click);

typedef struct s_gamemenu
{
	t_btn	play;
	t_btn	edit;
}	t_gamemenu;

t_gamemenu	*menu_new(void);
void		draw_menu(t_game *game, t_gamemenu *menu);
void		menu_mouse_click(t_game *game, t_gamemenu *menu, int x, int y);

void		draw_hl(t_game *game, int x, int y, int size);

typedef struct s_draw_inter
{
	int	size;
	int	z_index;
}	t_draw_inter;

void		draw_vertical_inter_tiles(t_renderer *rdr, t_img *img,
				t_vec2i pos, t_draw_inter inter);
void		draw_horizontal_inter_tiles(t_renderer *rdr, t_img *img,
				t_vec2i pos, t_draw_inter inter);

struct s_images
{
	t_img	*topleft;
	t_img	*top;
	t_img	*topright;
	t_img	*left;
	t_img	*mid;
	t_img	*right;
	t_img	*botleft;
	t_img	*bot;
	t_img	*botright;
	int		left_index;
	int		mid_index;
	int		right_index;
};

void		draw_left(t_game *game, t_vec2i pos, t_vec2i size,
				const struct s_images *imgs);
void		draw_right(t_game *game, t_vec2i pos, t_vec2i size,
				const struct s_images *imgs);
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
