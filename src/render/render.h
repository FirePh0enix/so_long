/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 15:17:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/15 14:31:49 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef RENDER_H
# define RENDER_H

# include "../math/vec2.h"
# include <stdbool.h>
# include "mlx_int.h"

typedef struct s_game	t_game;

/*
 * Color manipulation
 */

typedef struct s_trgb
{
	unsigned char	b;
	unsigned char	g;
	unsigned char	r;
	unsigned char	t;
}	t_trgb;

t_trgb		get_pixel_color(t_img *img, int x, int y);
void		set_pixel_color(t_img *img, int x, int y, t_trgb color);

typedef struct s_font
{
	t_img	*chars[256];
}	t_font;

t_font		*font_load(t_game *game, char *path);

typedef enum e_node_type
{
	NODE_SPRITE,
	NODE_TEXT,
	NODE_BLUR,
}	t_node_type;

typedef struct s_node
{
	t_node_type				type;
	struct s_node			*next;
	int						order;
	union
	{
		struct s_node_sprite
		{
			t_img			*ptr;
			t_vec2			pos;
			bool			flipped;
		}	sprite;
		struct s_node_text
		{
			t_font			*font;
			char			*str;
			t_vec2			pos;
			unsigned int	color;
		}	text;
		struct s_node_blur
		{
			int	px;
		}	blur;
	};
}	t_node;

typedef struct s_renderer
{
	t_node			*root;
	unsigned int	*pixels;
}	t_renderer;

t_renderer	*rdr_new(void);
void		rdr_free(t_renderer *rdr);
void		rdr_clear(t_renderer *rdr);
void		rdr_draw(t_renderer *rdr, t_game *game);

typedef struct s_add_sprite
{
	int		order;
	int		level;
	bool	flipped;
}	t_add_sprite;

/*
 * Create a new node representing a sprite.
 */
void		rdr_add_sprite(t_renderer *rdr, t_img *sp, t_vec2 pos,
				t_add_sprite as);

typedef struct s_add_text
{
	int				order;
	int				level;
	t_font			*font;
	unsigned int	color;
}	t_add_text;

void		rdr_add_text(t_renderer *rdr, char *str, t_vec2 pos, t_add_text at);

typedef struct s_draw
{
	int		scale;
	bool	flipped;
}	t_draw;

/*
 * Add a Gaussian blur filter to the whole screen.
 */
void		rdr_add_blur(t_renderer *rdr, int px, int z_index);

typedef struct s_draw_text
{
	t_font			*font;
	unsigned int	color;
}	t_draw_text;

void		rdr_draw_sprite(t_game *game, t_img *sp, t_vec2 pos, t_draw draw);
void		rdr_draw_glyph(t_game *game, char c, t_vec2 pos, t_draw_text draw);
void		rdr_draw_text(t_game *game, char *str, t_vec2 pos,
				t_draw_text draw);
void		rdr_blur_screen(t_game *game, int px);
void		rdr_clear_screen(t_game *game, unsigned int color);

#endif
