#!/bin/bash

make re

rm -rf dist/
mkdir -p dist/

cp so_long dist/so_long

mkdir -p dist/maps/
cp maps/*.ber dist/maps

mkdir -p dist/textures/gen
cp -r textures/gen/. dist/textures/gen

cd dist/ && tar -czvf ../so_long-$(git rev-parse --short HEAD).tar.gz . 2> /dev/null
