#!/bin/bash

new-tile()
{
	TILE_SIZE=64
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y "$1" "textures/gen/$2.png"
}

new-anim-frame()
{
	TILE_SIZE=192
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y "$1" $2
}

# Extract an full animation.
# Frames of animations are 192x192, but the image inside is 96x96
# $1 -> Original file
# $2 -> Animation name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Size of the animation
new-anim()
{
	mkdir -p textures/gen/$2
	ID=0
	for x in $(seq $3 1 $((${3}+${5}-1))); do
		NAME="textures/gen/$2/$ID.png"
		new-anim-frame $1 $NAME $x $4 
		ID=$(($ID+1))
	done
}

GROUND_SHEET="textures/Terrain/Ground/Tilemap_Flat.png"
PLAYER_SHEET="textures/Factions/Knights/Troops/Warrior/Blue/Warrior_Blue.png"

mkdir -p textures/gen

# Ground tiles
new-tile $GROUND_SHEET "TopLeft" 0 0
new-tile $GROUND_SHEET "Top" 1 0
new-tile $GROUND_SHEET "TopRight" 2 0
new-tile $GROUND_SHEET "Left" 0 1
new-tile $GROUND_SHEET "Mid" 1 1
new-tile $GROUND_SHEET "Right" 2 1
new-tile $GROUND_SHEET "BotLeft" 0 2
new-tile $GROUND_SHEET "Bot" 1 2
new-tile $GROUND_SHEET "BotRight" 2 2

new-tile $GROUND_SHEET "TopLR" 3 0
new-tile $GROUND_SHEET "LR" 3 1

# Water tiles
new-tile "textures/Terrain/Water/Water.png" "Water" 0 0

# Player animation
new-anim $PLAYER_SHEET "Player_Idle" 0 0 6
new-anim $PLAYER_SHEET "Player_Walk" 0 1 3
new-anim $PLAYER_SHEET "Player_Fall" 3 1 3

new-anim $PLAYER_SHEET "Player_Chrg_Side1" 0 2 3
new-anim $PLAYER_SHEET "Player_Atk_Side1" 3 2 3

new-anim $PLAYER_SHEET "Player_Chrg_Side2" 0 3 3
new-anim $PLAYER_SHEET "Player_Atk_Side2" 3 3 3

new-anim $PLAYER_SHEET "Player_Chrg_Down1" 0 4 3
new-anim $PLAYER_SHEET "Player_Atk_Down1" 3 4 3

new-anim $PLAYER_SHEET "Player_Chrg_Down2" 0 5 3
new-anim $PLAYER_SHEET "Player_Atk_Down2" 3 5 3

new-anim $PLAYER_SHEET "Player_Chrg_Up1" 0 6 3
new-anim $PLAYER_SHEET "Player_Atk_Up1" 3 6 3

new-anim $PLAYER_SHEET "Player_Chrg_Up2" 0 7 3
new-anim $PLAYER_SHEET "Player_Atk_Up2" 3 7 3

for file in textures/gen/**/*.png textures/gen/*.png
do
	convert $file "${file%.png}.xpm"
done
