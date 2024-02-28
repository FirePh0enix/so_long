/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/03 21:48:37 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/28 13:02:14 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stddef.h>
# include <stdlib.h>
# include <stdarg.h>

int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);

void		*ft_memset(void *p, int c, size_t n);
void		ft_bzero(void *p, size_t n);
void		*ft_memcpy(void *dest, const void *src, size_t n);
void		*ft_memmove(void *dest, const void *src, size_t n);
void		*ft_memchr(const void *s, int c, size_t n);
int			ft_memcmp(const void *s1, const void *s2, size_t n);

size_t		ft_strlen(const char *s);
int			ft_strcmp(const char *s1, const char *s2);
int			ft_strncmp(const char *s1, const char *s2, size_t n);
char		*ft_strchr(const char *s, int c);
char		*ft_strrchr(const char *s, int c);
char		*ft_strnstr(const char *big, const char *little, size_t n);
size_t		ft_strlcpy(char *dst, const char *src, size_t size);
size_t		ft_strlcat(char *dst, const char *src, size_t size);
char		*ft_strdup(const char *s);

int			ft_atoi(const char *s);

void		*ft_calloc(size_t n, size_t size);
void		*ft_realloc(void *p, size_t old_size, size_t size);

char		*ft_substr(const char *s, unsigned int start, size_t len);
char		*ft_strtrim(const char *s1, const char *set);
char		*ft_strjoin(const char *s1, const char *s2);
char		**ft_split(const char *s, char c);
char		*ft_itoa(int n);
char		*ft_strmapi(const char *s, char (*f)(unsigned int, char));
void		ft_striteri(char *s, void (*f)(unsigned int, char*));
void		ft_putchar_fd(char c, int fd);
void		ft_putstr_fd(char *s, int fd);
void		ft_putendl_fd(char *s, int fd);
void		ft_putnbr_fd(int nb, int fd);

/*
 * Printf functions
 */

int			ft_printf(const char *fmt, ...);
int			ft_sprintf(char *buf, const char *fmt, ...);

/*
 * C++ like vector library.
 */

typedef struct s_vecdata
{
	size_t	size;
	size_t	capacity;
	size_t	el_size;
}	t_vecdata;

void		*ft_vector(size_t el_size, size_t capacity);
/*
 * Free the memory used by the vector. `vec` should be the vector itself.
 */
void		ft_vector_free(void *vec);
/*
 * Add an element at the end of the vector. `elp` is the address of the element
 * to add.
 * `vec` is the address of the vector and not the vector itself, same for all
 * add*, del* functions.
 */
void		ft_vector_add(void *vec, void *elp);
/*
 * Delete the element at `index`. After deletion the order of the remaining
 * elements is preserved.
 */
void		ft_vector_del(void *vec, size_t index);
/*
 * Delete the element at `index`. A less costly version of ft_vector_del but it
 * does not preserve the order of elements.
 */
void		ft_vector_del_swap(void *vec, size_t index);
size_t		ft_vector_size(void *vec);
/*
 * Apply the function `f` on all elements of the vector.
 */
void		ft_vector_iter(void *vec, void (*f)(void*));

t_vecdata	*ft_vector_data(void *vec);

#endif
