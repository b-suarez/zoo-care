;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:04:38 2015
;--------------------------------------------------------
	.module mierda
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mierda
	.globl _mierda_tileset
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
_mierda_tileset:
	.dw _mierda
_mierda:
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
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x64	; 100	'd'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xCC	; 204
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x4C	; 76	'L'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x8C	; 140
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x8C	; 140
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x4C	; 76	'L'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x8C	; 140
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x30	; 48	'0'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x4C	; 76	'L'
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x8C	; 140
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.area _INITIALIZER
	.area _CABS (ABS)
