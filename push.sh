#!/bin/bash

make fclean
bash spritesheet.sh

mkdir -p push/
cp -r src/ push/
cp -r libft/ push/libft
cp -r mlx/ push/mlx
cp -r maps/ push/maps

mkdir -p push/textures
cp -r textures/gen push/textures/gen

cp Makefile.push push/Makefile
