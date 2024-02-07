#!/bin/bash

# $1 -> Original file
# $2 -> Output file name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Frame size
new-tile-with-name()
{
	X=$(($3*$5))
	Y=$(($4*$5))
	convert -crop ${5}x${5}+$X+$Y "$1" $2
}

# $1 -> Original file
# $2 -> Output file name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Frame size
new-tile()
{
	NAME="textures/gen/$2.xpm"
	new-tile-with-name $1 $NAME $3 $4 $5
}

# Extract an full animation.
# Frames of animations are 192x192, but the image inside is ~64x64
# $1 -> Original file
# $2 -> Animation name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Size of the animation
# $6 -> Size of a frame
new-anim()
{
	mkdir -p textures/gen/$2
	ID=0
	for x in $(seq $3 1 $((${3}+${5}-1))); do
		NAME="textures/gen/$2/$ID.xpm"
		new-tile-with-name $1 $NAME $x $4 $6
		ID=$(($ID+1))
	done
}

mkdir -p textures/gen

TILE_SIZE=64
ENTITY_SIZE=192

# Ground tiles
GROUND_SHEET="textures/Terrain/Ground/Tilemap_Flat.png"
new-tile $GROUND_SHEET "TopLeft" 0 0 $TILE_SIZE
new-tile $GROUND_SHEET "Top" 1 0 $TILE_SIZE
new-tile $GROUND_SHEET "TopRight" 2 0 $TILE_SIZE
new-tile $GROUND_SHEET "Left" 0 1 $TILE_SIZE
new-tile $GROUND_SHEET "Mid" 1 1 $TILE_SIZE
new-tile $GROUND_SHEET "Right" 2 1 $TILE_SIZE
new-tile $GROUND_SHEET "BotLeft" 0 2 $TILE_SIZE
new-tile $GROUND_SHEET "Bot" 1 2 $TILE_SIZE
new-tile $GROUND_SHEET "BotRight" 2 2 $TILE_SIZE

new-tile $GROUND_SHEET "TopLR" 3 0 $TILE_SIZE
new-tile $GROUND_SHEET "LR" 3 1 $TILE_SIZE
new-tile $GROUND_SHEET "BotLR" 3 2 $TILE_SIZE

new-tile $GROUND_SHEET "LeftBT" 0 3 $TILE_SIZE
new-tile $GROUND_SHEET "BT" 1 3 $TILE_SIZE
new-tile $GROUND_SHEET "RightBT" 2 3 $TILE_SIZE

new-tile $GROUND_SHEET "All" 3 3 $TILE_SIZE

# Water tiles
new-tile "textures/Terrain/Water/Water.png" "Water" 0 0 $TILE_SIZE
new-anim "textures/Terrain/Water/Foam/Foam.png" "Foam" 0 0 8 $ENTITY_SIZE

# Bridge tiles
BRIDGE_SHEET="textures/Terrain/Bridge/Bridge_All.png"
new-tile $BRIDGE_SHEET "Bridge_Left" 0 0 $TILE_SIZE
new-tile $BRIDGE_SHEET "Bridge_Mid" 1 0 $TILE_SIZE
new-tile $BRIDGE_SHEET "Bridge_Right" 2 0 $TILE_SIZE

# Warrior animations
WARRIOR_SHEET="textures/Factions/Knights/Troops/Warrior/Blue/Warrior_Blue.png"
new-anim $WARRIOR_SHEET "Warrior_Idle" 0 0 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Walk" 0 1 6 $ENTITY_SIZE

new-anim $WARRIOR_SHEET "Warrior_Atk_Side1" 0 2 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Atk_Side2" 0 3 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Atk_Down1" 0 4 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Atk_Down2" 0 5 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Atk_Up1" 0 6 6 $ENTITY_SIZE
new-anim $WARRIOR_SHEET "Warrior_Atk_Up2" 0 7 6 $ENTITY_SIZE

# Goblin animations
GOBLIN_SHEET="textures/Factions/Goblins/Troops/Torch/Red/Torch_Red.png"
new-anim $GOBLIN_SHEET "Goblin_Idle" 0 0 6 $ENTITY_SIZE
new-anim $GOBLIN_SHEET "Goblin_Walk" 0 1 6 $ENTITY_SIZE

new-anim $GOBLIN_SHEET "Goblin_Atk_Side" 0 2 6 $ENTITY_SIZE
new-anim $GOBLIN_SHEET "Goblin_Atk_Down" 0 3 6 $ENTITY_SIZE
new-anim $GOBLIN_SHEET "Goblin_Atk_Up" 0 4 6 $ENTITY_SIZE

# Props sprites
GOLD_SPAWN="textures/Resources/Resources/G_Spawn.png"
new-anim $GOLD_SPAWN "Gold_Spawn" 0 0 7 128

# GUI
BTN_RED="textures/UI/Buttons/Button_Red_3Slides.png"
new-tile $BTN_RED "Btn_Left" 0 0 $TILE_SIZE
new-tile $BTN_RED "Btn_Mid" 1 0 $TILE_SIZE
new-tile $BTN_RED "Btn_Right" 2 0 $TILE_SIZE

new-tile "textures/UI/Pointers/03.png" "hl_tl" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/04.png" "hl_tr" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/05.png" "hl_bl" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/06.png" "hl_br" 0 0 $TILE_SIZE

BNR="textures/UI/Banners/Banner_Horizontal.png"
new-tile $BNR "Bnr_TopLeft" 0 0 $TILE_SIZE
new-tile $BNR "Bnr_Top" 1 0 $TILE_SIZE
new-tile $BNR "Bnr_TopRight" 2 0 $TILE_SIZE
new-tile $BNR "Bnr_Left" 0 1 $TILE_SIZE
new-tile $BNR "Bnr_Mid" 1 1 $TILE_SIZE
new-tile $BNR "Bnr_Right" 2 1 $TILE_SIZE 
new-tile $BNR "Bnr_BotLeft" 0 2 $TILE_SIZE
new-tile $BNR "Bnr_Bot" 1 2 $TILE_SIZE
new-tile $BNR "Bnr_BotRight" 2 2 $TILE_SIZE

new-tile "textures/UI/Icons/Regular_08.png" "Plus" 0 0 $TILE_SIZE

# Font loading
mkdir -p textures/gen/font
