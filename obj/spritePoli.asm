;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (CYGWIN)
; This file was generated Fri Oct 23 11:40:25 2015
;--------------------------------------------------------
	.module spritePoli
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _poli
	.globl _poli_tileset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_poli_tileset:
	.dw _poli
_poli:
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x54	; 84	'T'
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x54	; 84	'T'
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x54	; 84	'T'
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x54	; 84	'T'
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xA8	; 168
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.area _INITIALIZER
	.area _CABS (ABS)
