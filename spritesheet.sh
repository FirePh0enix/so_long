#!/bin/bash

new-tile()
{
	TILE_SIZE=16
	X=$(($3*$TILE_SIZE))
	Y=$(($4*$TILE_SIZE))
	convert -crop ${TILE_SIZE}x${TILE_SIZE}+$X+$Y $1 $2
}

NAME="textures/so_long2_tiles.png"

mkdir -p textures/gen

new-tile $NAME "textures/gen/ground.png" 2 1
new-tile $NAME "textures/gen/solid.png" 1 2

for file in textures/gen/*.png
do
	convert $file "${file%.png}.xpm"
done
