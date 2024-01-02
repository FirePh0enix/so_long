/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 16:34:38 by ledelbec          #+#    #+#             */
/*   Updated: 2023/11/21 12:36:41 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static char *add_remaining(char *str, char *buf, int *offset, int *str_size) {
  *str_size = line_size(&buf[*offset], BUFFER_SIZE - *offset);
  str = realloc_str(str, &buf[*offset], 0, *str_size);
  *offset += *str_size;
  return (str);
}

static char *add_str(char *str, char *buf, int *offset, int *str_size) {
  const int size = line_size(buf, BUFFER_SIZE);

  str = realloc_str(str, buf, *str_size, size);
  *str_size += size;
  *offset = size;
  return (str);
}

static char *maybe_error(char *s, int n) {
  if (n == -1) {
    if (s)
      free(s);
    return (NULL);
  }
  return (s);
}

char *get_next_line(int fd) {
  static char buf[BUFFER_SIZE];
  static int off = 0;
  int n;
  char *str;
  int str_size;

  str = NULL;
  str_size = 0;
  if (off > 0 && line_size(&buf[off], BUFFER_SIZE - off) > 0)
    str = add_remaining(str, buf, &off, &str_size);
  if (line_size(&buf[off], BUFFER_SIZE - off) > 0 &&
      (off < BUFFER_SIZE || str == NULL))
    return (str);
  while (1) {
    n = read(fd, buf, BUFFER_SIZE);
    off = 0;
    if (n == 0 || n == -1)
      return (maybe_error(str, n));
    gnl_memset(&buf[n], 0, BUFFER_SIZE - n);
    str = add_str(str, buf, &off, &str_size);
    if (((off < n || !str) && BUFFER_SIZE > 0) || (buf[n - 1] == '\n'))
      return (str);
  }
}
