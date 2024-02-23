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

# $1 -> Original file
# $2 -> Output file name
# $3 -> Tile X
# $4 -> Tile Y
# $5 -> Frame width
# $6 -> Frame height
new-tile-wh()
{
	NAME="textures/gen/$2.xpm"
	X=$(($3*$5))
	Y=$(($4*$5))
	convert -crop ${5}x${6}+$X+$Y "$1" $NAME
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

new-tile $GROUND_SHEET "TopLeftS" 5 0 $TILE_SIZE
new-tile $GROUND_SHEET "TopS" 6 0 $TILE_SIZE
new-tile $GROUND_SHEET "TopRightS" 7 0 $TILE_SIZE
new-tile $GROUND_SHEET "LeftS" 5 1 $TILE_SIZE
new-tile $GROUND_SHEET "MidS" 6 1 $TILE_SIZE
new-tile $GROUND_SHEET "RightS" 7 1 $TILE_SIZE
new-tile $GROUND_SHEET "BotLeftS" 5 2 $TILE_SIZE
new-tile $GROUND_SHEET "BotS" 6 2 $TILE_SIZE
new-tile $GROUND_SHEET "BotRightS" 7 2 $TILE_SIZE
new-tile $GROUND_SHEET "TopLRS" 8 0 $TILE_SIZE
new-tile $GROUND_SHEET "LRS" 8 1 $TILE_SIZE
new-tile $GROUND_SHEET "BotLRS" 8 2 $TILE_SIZE
new-tile $GROUND_SHEET "LeftBTS" 5 3 $TILE_SIZE
new-tile $GROUND_SHEET "BTS" 6 3 $TILE_SIZE
new-tile $GROUND_SHEET "RightBTS" 7 3 $TILE_SIZE
new-tile $GROUND_SHEET "AllS" 8 3 $TILE_SIZE

# Cliff tiles
CLIFF="textures/Terrain/Ground/Tilemap_Elevation.png"
new-tile $CLIFF "Cliff_TopLeft" 0 0 $TILE_SIZE
new-tile $CLIFF "Cliff_Top" 1 0 $TILE_SIZE
new-tile $CLIFF "Cliff_TopRight" 2 0 $TILE_SIZE
new-tile $CLIFF "Cliff_Left" 0 1 $TILE_SIZE
new-tile $CLIFF "Cliff_Mid" 1 1 $TILE_SIZE
new-tile $CLIFF "Cliff_Right" 2 1 $TILE_SIZE
new-tile $CLIFF "Cliff_BotLeft" 0 2 $TILE_SIZE
new-tile $CLIFF "Cliff_Bot" 1 2 $TILE_SIZE
new-tile $CLIFF "Cliff_BotRight" 2 2 $TILE_SIZE
new-tile $CLIFF "Cliff_TopLR" 3 0 $TILE_SIZE
new-tile $CLIFF "Cliff_LR" 3 1 $TILE_SIZE
new-tile $CLIFF "Cliff_BotLR" 3 2 $TILE_SIZE
new-tile $CLIFF "Cliff_LeftBT" 0 4 $TILE_SIZE
new-tile $CLIFF "Cliff_BT" 1 4 $TILE_SIZE
new-tile $CLIFF "Cliff_RightBT" 2 4 $TILE_SIZE
new-tile $CLIFF "Cliff_All" 3 4 $TILE_SIZE

new-tile $CLIFF "Cliff_SideLeft" 0 3 $TILE_SIZE
new-tile $CLIFF "Cliff_SideMid" 1 3 $TILE_SIZE
new-tile $CLIFF "Cliff_SideRight" 2 3 $TILE_SIZE
new-tile $CLIFF "Cliff_SideAll" 3 3 $TILE_SIZE

new-tile $CLIFF "Stair_Left" 0 7 $TILE_SIZE
new-tile $CLIFF "Stair_Mid" 1 7 $TILE_SIZE
new-tile $CLIFF "Stair_Right" 2 7 $TILE_SIZE
new-tile $CLIFF "Stair_All" 3 7 $TILE_SIZE

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

GOBLIN2_SHEET="textures/Factions/Goblins/Troops/Torch/Purple/Torch_Purple.png"
new-anim $GOBLIN2_SHEET "Goblin2_Idle" 0 0 6 $ENTITY_SIZE
new-anim $GOBLIN2_SHEET "Goblin2_Walk" 0 1 6 $ENTITY_SIZE

new-anim $GOBLIN2_SHEET "Goblin2_Atk_Side" 0 2 6 $ENTITY_SIZE
new-anim $GOBLIN2_SHEET "Goblin2_Atk_Down" 0 3 6 $ENTITY_SIZE
new-anim $GOBLIN2_SHEET "Goblin2_Atk_Up" 0 4 6 $ENTITY_SIZE

# Buildings
new-tile-wh "textures/Resources/Gold Mine/GoldMine_Active.png" "GoldMineA" 0 0 192 128
new-tile-wh "textures/Resources/Gold Mine/GoldMine_Inactive.png" "GoldMineI" 0 0 192 128

# Props sprites
GOLD_SPAWN="textures/Resources/Resources/G_Spawn.png"
new-anim $GOLD_SPAWN "Gold_Spawn" 0 0 7 128

# Explosion !
new-anim "textures/Effects/Explosion/Explosions.png" "Explosion" 0 0 9 192

# GUI
BTN_RED="textures/UI/Buttons/Button_Red_3Slides.png"
new-tile $BTN_RED "Btn_Left" 0 0 $TILE_SIZE
new-tile $BTN_RED "Btn_Mid" 1 0 $TILE_SIZE
new-tile $BTN_RED "Btn_Right" 2 0 $TILE_SIZE
new-tile "textures/UI/Buttons/Button_Red.png" "Btn_All" 0 0 $TILE_SIZE

BTN_RED_P="textures/UI/Buttons/Button_Red_3Slides_Pressed.png"
new-tile $BTN_RED_P "Btn_Left_Press" 0 0 $TILE_SIZE
new-tile $BTN_RED_P "Btn_Mid_Press" 1 0 $TILE_SIZE
new-tile $BTN_RED_P "Btn_Right_Press" 2 0 $TILE_SIZE
new-tile "textures/UI/Buttons/Button_Red_Pressed.png" "Btn_All_Press" 0 0 $TILE_SIZE

new-tile "textures/UI/Pointers/03.png" "hl_tl" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/04.png" "hl_tr" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/05.png" "hl_bl" 0 0 $TILE_SIZE
new-tile "textures/UI/Pointers/06.png" "hl_br" 0 0 $TILE_SIZE

# Cursor
new-tile "textures/UI/Pointers/01.png" "Pointer" 0 0 $TILE_SIZE

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

BNRV="textures/UI/Banners/Banner_Vertical.png"
new-tile $BNRV "Bnrv_TopLeft" 0 0 $TILE_SIZE
new-tile $BNRV "Bnrv_Top" 1 0 $TILE_SIZE
new-tile $BNRV "Bnrv_TopRight" 2 0 $TILE_SIZE
new-tile $BNRV "Bnrv_Left" 0 1 $TILE_SIZE
new-tile $BNRV "Bnrv_Mid" 1 1 $TILE_SIZE
new-tile $BNRV "Bnrv_Right" 2 1 $TILE_SIZE 
new-tile $BNRV "Bnrv_BotLeft" 0 2 $TILE_SIZE
new-tile $BNRV "Bnrv_Bot" 1 2 $TILE_SIZE
new-tile $BNRV "Bnrv_BotRight" 2 2 $TILE_SIZE

BNRCL="textures/UI/Banners/Banner_Connection_Right.png"
new-tile $BNRCL "Bnrcl_TopLeft" 0 0 $TILE_SIZE
new-tile $BNRCL "Bnrcl_Top" 1 0 $TILE_SIZE
new-tile $BNRCL "Bnrcl_TopRight" 2 0 $TILE_SIZE
new-tile $BNRCL "Bnrcl_Left" 0 1 $TILE_SIZE
new-tile $BNRCL "Bnrcl_Mid" 1 1 $TILE_SIZE
new-tile $BNRCL "Bnrcl_Right" 2 1 $TILE_SIZE 
new-tile $BNRCL "Bnrcl_BotLeft" 0 2 $TILE_SIZE
new-tile $BNRCL "Bnrcl_Bot" 1 2 $TILE_SIZE
new-tile $BNRCL "Bnrcl_BotRight" 2 2 $TILE_SIZE

BNRCR="textures/UI/Banners/Banner_Connection_Left.png"
new-tile $BNRCR "Bnrcr_TopLeft" 0 0 $TILE_SIZE
new-tile $BNRCR "Bnrcr_Top" 1 0 $TILE_SIZE
new-tile $BNRCR "Bnrcr_TopRight" 2 0 $TILE_SIZE
new-tile $BNRCR "Bnrcr_Left" 0 1 $TILE_SIZE
new-tile $BNRCR "Bnrcr_Mid" 1 1 $TILE_SIZE
new-tile $BNRCR "Bnrcr_Right" 2 1 $TILE_SIZE 
new-tile $BNRCR "Bnrcr_BotLeft" 0 2 $TILE_SIZE
new-tile $BNRCR "Bnrcr_Bot" 1 2 $TILE_SIZE
new-tile $BNRCR "Bnrcr_BotRight" 2 2 $TILE_SIZE

RIBBON="textures/UI/Ribbons/Ribbon_Red_3Slides.png"
new-tile $RIBBON "Rbn_Left" 0 0 $TILE_SIZE
new-tile $RIBBON "Rbn_Mid" 1 0 $TILE_SIZE
new-tile $RIBBON "Rbn_Right" 2 0 $TILE_SIZE

new-tile "textures/UI/Icons/Regular_08.png" "Plus" 0 0 $TILE_SIZE
new-tile "textures/UI/Icons/Regular_04.png" "One" 0 0 $TILE_SIZE
new-tile "textures/UI/Icons/Regular_05.png" "Two" 0 0 $TILE_SIZE
new-tile "textures/UI/Icons/Regular_06.png" "Three" 0 0 $TILE_SIZE
new-tile "textures/UI/Icons/Regular_10.png" "Lock" 0 0 $TILE_SIZE

# Font loading

letter()
{
	FONT="textures/Merchant Copy.ttf"
	convert -font "$FONT" -pointsize $2 -background "#00000000" label:$1 textures/gen/$3/$1.xpm
}

font()
{
	ALPHABET="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrtsuvwxyz0123456789'=<>()!?.@"
	for letter in $(echo "$ALPHABET" | sed -e 's/\(.\)/\1\n/g'); do
		letter "$letter" $2 $1
	done
}

mkdir -p textures/gen/regular
font "regular" 55
mkdir -p textures/gen/small
font "small" 35
