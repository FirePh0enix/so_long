# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/02 00:44:50 by ledelbec          #+#    #+#              #
#    Updated: 2024/02/01 16:24:44 by ledelbec         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES = \
	src/main.c \
	src/hooks.c \
	src/graph.c \
	src/draw.c \
	src/sprite.c \
	src/update.c \
	src/utils.c \
	src/anim/anim.c \
	src/map/edit.c \
	src/map/edit_hooks.c \
	src/map/load.c \
	src/map/load_utils.c \
	src/map/save.c \
	src/map/util.c \
	src/entities/enemy.c \
	src/entities/player.c \
	src/entities/gem.c \
	src/math/box.c \
	src/math/vec2_calc.c \
	src/data/vector.c

TEXTURES = \

NAME = so_long

CC = clang
CFLAGS = -Wall -Wextra -Imlx -Ilibft -MMD -g3 -fPIC -O2 -fno-builtin # -Werror
LDFLAGS = -lm -lX11 -lXext

OBJECTS = $(SOURCES:.c=.o)
TEXTURES_XPM = $(TEXTURES:.png=.xpm)

all: $(NAME)

mlx/libmlx.a:
	cd mlx && make

libft/libft.a:
	cd libft && make

$(NAME): mlx/libmlx.a libft/libft.a textures/gen $(TEXTURES_XPM) $(OBJECTS)
	$(CC) -o $(NAME) $(OBJECTS) mlx/libmlx.a libft/libft.a $(LDFLAGS)

%.xpm: %.png
	convert $< $@

-include $(OBJECTS:.o=.d)

textures/gen:
	bash spritesheet.sh

clean:
	rm -rf $(OBJECTS) $(TEXTURES_XPM)
	cd mlx && make clean && rm -f libmlx.a
	cd libft && make fclean

fclean: clean
	rm -f $(NAME)

re: fclean all
