//-----------------------------LICENSE NOTICE------------------------------------
//  This file is part of CPCtelera: An Amstrad CPC Game Engine
//  Copyright (C) 2015 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#include <types.h>

// Define constant sizes
#define TILESIZE     2*4
#define NUMTILES       3
#define MAP_WIDTH     40
#define MAP_HEIGHT    50
#define SCR_HEIGHT   200
#define SCR_WIDTH     80

// Declarations of the 4 different kinds of tiles
extern const u8 g_tile_background[TILESIZE];

extern const u8 g_tile_red       [TILESIZE];

extern const u8 g_tile_puerta       [TILESIZE];
// Declaration of the tileset
extern u8* const g_tilesetum[NUMTILES];

// Declaration of the tilemap
extern const u8 g_tilemap[MAP_WIDTH * MAP_HEIGHT];
extern const u8 g_tilemap2[MAP_WIDTH * MAP_HEIGHT];
extern const u8 g_tilemap3[MAP_WIDTH * MAP_HEIGHT];