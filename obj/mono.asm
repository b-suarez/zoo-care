;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:04:38 2015
;--------------------------------------------------------
	.module mono
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mono
	.globl _mono_tileset
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
_mono_tileset:
	.dw _mono
_mono:
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0xC0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x88	; 136
	.db #0x80	; 128
	.db #0xCC	; 204
	.db #0xC4	; 196
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xC8	; 200
	.db #0xC0	; 192
	.db #0xCC	; 204
	.db #0xC4	; 196
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xC8	; 200
	.db #0x40	; 64
	.db #0x98	; 152
	.db #0xCC	; 204
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xC4	; 196
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xC4	; 196
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0x64	; 100	'd'
	.db #0xC8	; 200
	.db #0xC0	; 192
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0xC8	; 200
	.db #0xC0	; 192
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xC4	; 196
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0xC0	; 192
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0xC4	; 196
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xC0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.area _INITIALIZER
	.area _CABS (ABS)