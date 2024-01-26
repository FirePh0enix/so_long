#!/bin/bash

new-tile()
{
	TILE_SIZE=32
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y "$1" $2
}

GNAME="textures/TX Tileset Grass.png"
RNAME="textures/TX Tileset Wall.png"
PNAME="textures/TX Props.png"
CNAME="textures/AnimationSheet_Character.png"

mkdir -p textures/gen

new-tile "$GNAME" "textures/gen/ground.png" 0 0

new-tile "$RNAME" "textures/gen/solid.png" 2 4

new-tile "$PNAME" "textures/gen/chest.png" 3 1

new-tile "$CNAME" "textures/gen/player.png" 0 0

for file in textures/gen/*.png
do
	convert $file "${file%.png}.xpm"
done
