# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/07 10:54:05 by ledelbec          #+#    #+#              #
#    Updated: 2024/02/28 13:17:12 by ledelbec         ###   ########.fr        #
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
	ft_realloc.c \
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
	ft_vector.c \
	ft_vector_utils.c \
	\
	printf/printf.c \
	printf/format.c \
	printf/write_ints.c \
	printf/write_pad.c \
	printf/util.c \

TEST_SOURCES=\
	test/test.c \
	test/sprintf.c

OBJECTS=$(SOURCES:.c=.o)
TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
NAME=libft.a

CC=clang
CFLAGS=-I. -Wall -Wextra -Werror -g3 -fPIE

all: $(NAME)

$(NAME): $(OBJECTS)
	ar r $(NAME) $(OBJECTS)

test.out: $(TEST_OBJECTS) $(NAME)
	$(CC) -o test.out $(TEST_OBJECTS) libft.a

run-test: test.out
	./test.out

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SOURCES)
	gcc -nostartfiles -shared -o libft.so $(OBJECTS)

bonus: $(OBJECTS) $(BONUS_OBJECTS)
	ar r $(NAME) $(OBJECTS) $(BONUS_OBJECTS)

clean:
	rm -f $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
