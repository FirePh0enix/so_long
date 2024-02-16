/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/04 15:51:55 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/16 11:21:57 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef EDIT_H
# define EDIT_H

# include "../gui.h"

typedef struct s_game	t_game;

typedef enum item
{
	ITEM_EMPTY,
	ITEM_SOLID,
	ITEM_DOOR,
	ITEM_COLLECT,
	ITEM_PLAYER,
	ITEM_ENEMY,
}	t_item;

typedef struct s_editor
{
	t_item	item;
	t_btn	save;
	t_btn	quit;

	t_btn	l1;
	t_btn	l2;
	t_btn	l3;

	int		level;
}	t_editor;

void	edit_init(t_editor *editor, t_game *g);
void	edit_update(t_game *game);
void	edit_click_hook(t_game *game, int x, int y, int btn);
void	edit_place(t_game *game, int btn, int x, int y);

void	edit_save(t_game *game);
void	edit_quit(t_game *game);
void	edit_l1(t_game *game);
void	edit_l2(t_game *game);
void	edit_l3(t_game *game);

#endif
