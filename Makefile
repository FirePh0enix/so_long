# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/02 00:44:50 by ledelbec          #+#    #+#              #
#    Updated: 2024/02/12 16:07:47 by ledelbec         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES = \
	src/main.c \
	src/game_free.c \
	src/load_sprites.c \
	src/hooks.c \
	src/sprite.c \
	src/update.c \
	src/hud.c \
	src/gui.c \
	src/menu.c \
	src/button.c \
	src/banner.c \
	src/banner_utils.c \
	src/ribbon.c \
	src/utils.c \
	src/anim/anim.c \
	src/edit/edit.c \
	src/edit/place.c \
	src/map/load.c \
	src/map/load_utils.c \
	src/map/save.c \
	src/map/util.c \
	src/map/ground_tile.c \
	\
	src/map2/load.c \
	src/map2/draw.c \
	src/map2/collision.c \
	\
	src/entities/knight.c \
	src/entities/player.c \
	src/entities/gem.c \
	src/math/box.c \
	src/math/vec2_basic.c \
	src/math/vec2_calc.c \
	src/math/a_star.c \
	src/data/vector.c \
	src/render/renderer.c \
	src/render/draw_sprite.c \
	src/render/node.c \
	src/render/text.c \
	src/render/pixel.c \
	src/render/blur.c

NAME = so_long

CC = clang
CFLAGS += -Wall -Wextra -Imlx -Ilibft -MMD -g3 -fPIC #-O2 -fno-builtin # -Werror
LDFLAGS = -lm -lX11 -lXext

OBJECTS = $(SOURCES:.c=.o)

all: $(NAME)

mlx/libmlx.a:
	cd mlx && make

libft/libft.a:
	cd libft && make

$(NAME): mlx/libmlx.a libft/libft.a textures/gen $(TEXTURES_XPM) $(OBJECTS)
	$(CC) -o $(NAME) $(OBJECTS) mlx/libmlx.a libft/libft.a $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

-include $(OBJECTS:.o=.d)

textures/gen:
	bash spritesheet.sh

clean:
	rm -rf $(OBJECTS) $(OBJECTS:.o=.d)
	cd mlx && make clean && rm -f libmlx.a
	cd libft && make fclean

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
