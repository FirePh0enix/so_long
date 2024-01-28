#!/bin/bash

new-tile()
{
	TILE_SIZE=64
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y "$1" $2
}

new-anim-frame()
{
	TILE_SIZE=192
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y "$1" $2
}

# Extract an full animation
# $1 -> Original file
# $2 -> Animation name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Size of the animation
new-anim()
{
	mkdir -p $2
	for x in $(seq $3 1 $((${5}-1))); do
		ID=$(($x-$3))
		NAME="textures/gen/$2/$ID.png"
		new-anim-frame $1 $NAME $x $4 
	done
}

PLAYER_SHEET="textures/Factions/Knights/Troops/Warrior/Blue/Warrior_Blue.png"

mkdir -p textures/gen

# Player animation
new-anim $PLAYER_SHEET "Player_Idle" 0 0 6

for file in textures/gen/*.png
do
	convert $file "${file%.png}.xpm"
done
