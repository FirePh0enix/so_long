/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   edit_hooks.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ledelbec <ledelbec@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/03 19:51:30 by ledelbec          #+#    #+#             */
/*   Updated: 2024/02/03 16:45:27 by ledelbec         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../entity.h"
#include "../so_long.h"
#include "../data/vector.h"
#include "../render/render.h"

static void	_handle_keypress(t_game *game)
{
	if (game->keys['1'])
		game->editor.item = ITEM_EMPTY;
	else if (game->keys['2'])
		game->editor.item = ITEM_SOLID;
	else if (game->keys['3'])
		game->editor.item = ITEM_DOOR;
	else if (game->keys['4'])
		game->editor.item = ITEM_COLLECT;
	else if (game->keys['5'])
		game->editor.item = ITEM_PLAYER;
	else if (game->keys['6'])
		game->editor.item = ITEM_ENEMY;
}

static void	_draw_editor_item(t_game *game)
{
	const int	x = 16;
	const int	y = 680;
	t_renderer	*rdr;
	t_sprite	*sprite;
	t_vec2		offset;

	rdr = game->rdr;
	offset = (t_vec2){};
	sprite = NULL;
	if (game->editor.item == ITEM_EMPTY)
		sprite = game->ground_all;
	else if (game->editor.item == ITEM_SOLID)
		sprite = game->solid;
	else if (game->editor.item == ITEM_DOOR)
		sprite = game->door;
	else if (game->editor.item == ITEM_COLLECT)
	{
		sprite = game->money_spawn[6];
		offset.x = -32;
		offset.y = -32;
	}
	else if (game->editor.item == ITEM_PLAYER)
	{
		sprite = game->goblin_idle[0];
		offset.x = -64;
		offset.y = -64;
	}
	else if (game->editor.item == ITEM_ENEMY)
	{
		sprite = game->warrior_idle[0];
		offset.x = -64;
		offset.y = -64;
	}
	rdr_add_sprite(rdr, sprite, vec2_add((t_vec2){x, y - 56}, offset), (t_add_sprite){999, false});
}

int	edit_update_hook(t_game *game)
{
	suseconds_t		time;
	unsigned int	i;
	t_entity		*entity;

	time = getms();
	if (time - game->last_update < UPDATE_INTERVAL)
		return (0);
	game->last_update = time;
	_handle_keypress(game);
	_draw_editor_item(game);
	i = 0;
	while (i < vector_size(game->entities))
	{
		entity = game->entities[i];
		rdr_add_sprite(game->rdr, entity->sprite, vec2_add(entity->pos,
			entity->sprite_offset), (t_add_sprite){entity->z_index, false});
		i++;
	}
	map_render(game->map, game, game->rdr);
	rdr_clear_screen(game, 0x1);
	rdr_draw(game->rdr, game);
	mlx_put_image_to_window(game->mlx, game->win, game->canvas, 0, 0);
	rdr_clear(game->rdr);
	return (0);
}
