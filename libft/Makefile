# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/07 10:54:05 by ledelbec          #+#    #+#              #
#    Updated: 2023/11/20 11:34:37 by ledelbec         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES=\
	ft_bzero.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_isalnum.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_strlen.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strnstr.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_strdup.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	\
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	\
	printf/ft_printf.c \
	printf/pad.c \
	printf/util.c \
	printf/write_int.c \
	printf/write_str.c \
	\
	gnl/get_next_line.c \
	gnl/get_next_line_utils.c

BONUS_SOURCES=\
	ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c

OBJECTS=$(SOURCES:.c=.o)
BONUS_OBJECTS=$(BONUS_SOURCES:.c=.o)
NAME=libft.a

CC=clang
CFLAGS=-I. -Wall -Wextra -Werror -g3 -fPIE

all: $(NAME)

$(NAME): $(OBJECTS)
	ar r $(NAME) $(OBJECTS)

bonus: $(OBJECTS) $(BONUS_OBJECTS)
	ar r $(NAME) $(OBJECTS) $(BONUS_OBJECTS)

clean:
	rm -f $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
