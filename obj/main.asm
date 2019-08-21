;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
; This file was generated Fri Oct 23 23:57:56 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _actualizarPower
	.globl _menu
	.globl _ComprobarColision
	.globl _IA
	.globl _distancia
	.globl _respawn
	.globl _DibujarEntidades
	.globl _ComprobarTeclado
	.globl _mapActPosition
	.globl _myTile
	.globl _BorrarEntidades
	.globl _iniciar
	.globl _CargarLevel
	.globl _score
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_akp_SFXInit
	.globl _cpct_akp_musicPlay
	.globl _cpct_akp_musicInit
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM0
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_isAnyKeyPressed_f
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _cpct_disableFirmware
	.globl _Mierda
	.globl _Power
	.globl _Enemy
	.globl _Personaje
	.globl _g_palette
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
;src/main.c:157: void score(){
;	---------------------------------
; Function score
; ---------------------------------
_score::
;src/main.c:159: puntMem = cpct_getScreenPtr(MemVideo,5,5);
	ld	hl,#0x0505
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:160: if(Personaje.lives==3){
	ld	hl, #(_Personaje + 0x0011) + 0
	ld	c,(hl)
;src/main.c:161: cpct_drawStringM0("Vidas: 3",puntMem,g_palette[1],0);
;src/main.c:160: if(Personaje.lives==3){
	ld	a,c
	sub	a, #0x03
	jr	NZ,00107$
;src/main.c:161: cpct_drawStringM0("Vidas: 3",puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_0
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
00107$:
;src/main.c:162: }else if(Personaje.lives==2){
	ld	a,c
	sub	a, #0x02
	jr	NZ,00104$
;src/main.c:163: cpct_drawStringM0("Vidas: 2",puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	c,(hl)
	xor	a, a
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	push	de
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
00104$:
;src/main.c:164: }else if(Personaje.lives==1){
	dec	c
	ret	NZ
;src/main.c:165: cpct_drawStringM0("Vidas: 1",puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
_g_palette:
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x0E	; 14
_Personaje:
	.db #0x02	; 2
	.db #0x3C	; 60
	.db #0x02	; 2
	.db #0x3C	; 60
	.db #0x0A	; 10
	.db #0x14	; 20
	.dw _pers
	.dw _espada
	.db #0x02	; 2
	.db #0x44	; 68	'D'
	.db #0x02	; 2
	.db #0x44	; 68	'D'
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
_Enemy:
	.db #0x38	; 56	'8'
	.db #0x8C	; 140
	.db #0x38	; 56	'8'
	.db #0x8C	; 140
	.db #0x0A	; 10
	.db #0x14	; 20
	.dw _komodo
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
_Power:
	.db #0x05	; 5
	.db #0x96	; 150
	.db #0x0A	; 10
	.db #0x14	; 20
	.dw _latigo
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_Mierda:
	.db #0x78	; 120	'x'
	.db #0x8C	; 140
	.db #0x0A	; 10
	.db #0x14	; 20
	.dw _mierda
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
___str_0:
	.ascii "Vidas: 3"
	.db 0x00
___str_1:
	.ascii "Vidas: 2"
	.db 0x00
___str_2:
	.ascii "Vidas: 1"
	.db 0x00
;src/main.c:170: void CargarLevel(u8 nivel){
;	---------------------------------
; Function CargarLevel
; ---------------------------------
_CargarLevel::
;src/main.c:172: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:174: if(nivel==1){
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	dec	a
	jr	NZ,00102$
;src/main.c:176: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
	ld	hl,#0x0505
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:180: 40, MemVideo, g_tilemap);
	ld	hl,#_g_tilemap
;src/main.c:178: cpct_etm_drawTileBox2x4(0, 0, 
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2832
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
00102$:
;src/main.c:182: if(nivel==2){
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ,00104$
;src/main.c:184: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
	ld	hl,#0x0505
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:188: 40, MemVideo, g_tilemap2);
	ld	hl,#_g_tilemap2
;src/main.c:186: cpct_etm_drawTileBox2x4(0, 0, 
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2832
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
00104$:
;src/main.c:190: if(nivel==3){
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ,00106$
;src/main.c:192: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
	ld	hl,#0x0505
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:196: 40, MemVideo, g_tilemap3);
	ld	hl,#_g_tilemap3
;src/main.c:194: cpct_etm_drawTileBox2x4(0, 0, 
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x2832
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
00106$:
;src/main.c:201: score();
	call	_score
	ret
;src/main.c:206: void iniciar(){ 
;	---------------------------------
; Function iniciar
; ---------------------------------
_iniciar::
;src/main.c:208: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:209: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:211: cpct_setPalette(g_palette,5);
	ld	de,#_g_palette
	ld	a,#0x05
	push	af
	inc	sp
	push	de
	call	_cpct_setPalette
	pop	af
	inc	sp
;src/main.c:212: cpct_setBorder(g_palette[0]);    // Set the border to the background colour (colour 0)
	ld	a, (#_g_palette + 0)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:213: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:216: cpct_akp_musicInit(G_CancionRetro);    // Initialize the music
	ld	hl,#_G_CancionRetro
	push	hl
	call	_cpct_akp_musicInit
;src/main.c:217: cpct_akp_SFXInit(G_CancionRetro);
	ld	hl, #_G_CancionRetro
	ex	(sp),hl
	call	_cpct_akp_SFXInit
	pop	af
	ret
;src/main.c:230: void BorrarEntidades(){
;	---------------------------------
; Function BorrarEntidades
; ---------------------------------
_BorrarEntidades::
;src/main.c:234: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:237: if(Personaje.change || Personaje.dirAtaque!=No_Ataque ){
	ld	a,(#_Personaje + 18)
	or	a, a
	jr	NZ,00103$
	ld	a, (#(_Personaje + 0x0010) + 0)
	or	a, a
	jr	Z,00104$
00103$:
;src/main.c:239: puntMem= cpct_getScreenPtr(MemVideo,Personaje.x,Personaje.y );
	ld	hl, #_Personaje + 1
	ld	d,(hl)
	ld	a, (#_Personaje + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:240: cpct_drawSolidBox(puntMem,0,Personaje.w,Personaje.h);
	ld	hl, #_Personaje + 5
	ld	b,(hl)
	ld	a, (#_Personaje + 4)
	push	bc
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/main.c:243: if(Personaje.dirAtaque!=No_Ataque){
	ld	a, (#(_Personaje + 0x0010) + 0)
	or	a, a
	jr	Z,00104$
;src/main.c:245: puntMem = cpct_getScreenPtr(MemVideo,Personaje.eantx,Personaje.eanty);
	ld	hl, #_Personaje + 13
	ld	d,(hl)
	ld	a, (#_Personaje + 12)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:246: cpct_drawSolidBox(puntMem,0,Personaje.ew,Personaje.eh);
	ld	hl, #_Personaje + 15
	ld	b,(hl)
	ld	a, (#_Personaje + 14)
	push	bc
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00104$:
;src/main.c:256: if(Enemy.change ){
	ld	a, (#_Enemy + 9)
	or	a, a
	jr	Z,00107$
;src/main.c:257: puntMem= cpct_getScreenPtr(MemVideo,Enemy.x,Enemy.y);
	ld	hl, #_Enemy + 1
	ld	d,(hl)
	ld	a, (#_Enemy + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:258: cpct_drawSolidBox(puntMem,0,Enemy.w,Enemy.h);
	ld	hl, #_Enemy + 5
	ld	b,(hl)
	ld	a, (#_Enemy + 4)
	push	bc
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00107$:
;src/main.c:261: if(Power.cogido && !Power.borrado){
	ld	de,#_Power+0
	ld	a, (#_Power + 8)
	or	a, a
	jr	Z,00109$
	ld	a, (#_Power + 7)
	or	a, a
	jr	NZ,00109$
;src/main.c:262: puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
	ld	hl, #_Power + 1
	ld	b,(hl)
	ld	a,(de)
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/main.c:263: cpct_drawSolidBox(puntMem,0,Power.w,Power.h);
	ld	a, (#_Power + 3)
	ex	de,hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	d,a
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00109$:
;src/main.c:265: if(Mierda.cogido && !Mierda.borrado){
	ld	de,#_Mierda+0
	ld	a, (#_Mierda + 8)
	or	a, a
	ret	Z
	ld	a, (#_Mierda + 7)
	or	a, a
	ret	NZ
;src/main.c:266: puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
	ld	hl, #_Mierda + 1
	ld	b,(hl)
	ld	a,(de)
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/main.c:267: cpct_drawSolidBox(puntMem,0,Mierda.w,Mierda.h);
	ld	a, (#_Mierda + 3)
	ex	de,hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	d,a
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
;src/main.c:277: u16 myTile(u8 x, u8 y) {
;	---------------------------------
; Function myTile
; ---------------------------------
_myTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:278: u8 tx = x / 2;
	ld	e,4 (ix)
	srl	e
;src/main.c:279: u8 ty = y / 4;
	ld	a,5 (ix)
	rrca
	rrca
	and	a,#0x3F
;src/main.c:280: return ty*40 + tx;
	ld	c,a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	d,#0x00
	add	hl,de
	pop	ix
	ret
;src/main.c:283: u8 mapActPosition(u16 position){
;	---------------------------------
; Function mapActPosition
; ---------------------------------
_mapActPosition::
	dec	sp
;src/main.c:286: if(Personaje.nivel==1){
	ld	hl,#_Personaje+19
	ld	c,(hl)
	ld	a,c
	dec	a
	jr	NZ,00107$
;src/main.c:288: pos=g_tilemap[position];
	ld	a,#<(_g_tilemap)
	ld	hl,#3
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_g_tilemap)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	a,(de)
	jr	00108$
00107$:
;src/main.c:290: }else if(Personaje.nivel==2){
	ld	a,c
	sub	a, #0x02
	jr	NZ,00104$
;src/main.c:292: pos=g_tilemap2[position];
	ld	a,#<(_g_tilemap2)
	ld	hl,#3
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_g_tilemap2)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	a,(de)
	jr	00108$
00104$:
;src/main.c:294: }else if(Personaje.nivel==3){
	ld	a,c
	sub	a, #0x03
	jr	NZ,00108$
;src/main.c:296: pos=g_tilemap3[position];
	ld	a,#<(_g_tilemap3)
	ld	hl,#3
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_g_tilemap3)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	a,(de)
00108$:
;src/main.c:299: return pos;
	ld	l,a
	inc	sp
	ret
;src/main.c:306: void ComprobarTeclado(TEntity *player){
;	---------------------------------
; Function ComprobarTeclado
; ---------------------------------
_ComprobarTeclado::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;src/main.c:310: player->change=0;
	ld	a,4 (ix)
	ld	-12 (ix),a
	ld	a,5 (ix)
	ld	-11 (ix),a
	ld	a,-12 (ix)
	add	a, #0x12
	ld	-4 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;src/main.c:311: player->x=player->nx;
	ld	a,-12 (ix)
	add	a, #0x02
	ld	-10 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	pop	hl
	push	hl
	ld	(hl),a
;src/main.c:312: player->y=player->ny;
	pop	de
	push	de
	inc	de
	ld	a,-12 (ix)
	add	a, #0x03
	ld	-2 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	(de),a
;src/main.c:313: player->eantx=player->ex;
	ld	a,-12 (ix)
	add	a, #0x0C
	ld	e,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	d,a
	ld	a,-12 (ix)
	add	a, #0x0A
	ld	-6 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,(hl)
	ld	(de),a
;src/main.c:314: player->eanty=player->ey;
	ld	a,-12 (ix)
	add	a, #0x0D
	ld	e,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	d,a
	ld	a,-12 (ix)
	add	a, #0x0B
	ld	-8 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	(de),a
;src/main.c:317: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/main.c:318: if(cpct_isAnyKeyPressed_f()){
	call	_cpct_isAnyKeyPressed_f
	ld	a, l
	or	a, a
	jp	Z,00157$
;src/main.c:321: if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==2 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==2 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==2 && Personaje.nivel==1){
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00102$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x0005
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	sub	a, #0x02
	jr	NZ,00102$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x0055
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	sub	a, #0x02
	jr	NZ,00102$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00A5
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	sub	a, #0x02
	jr	NZ,00102$
	ld	de,#_Personaje + 19
	ld	a,(de)
	dec	a
	jr	NZ,00102$
;src/main.c:323: player->nivel=2;
	ld	a,-12 (ix)
	add	a, #0x13
	ld	l,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x02
;src/main.c:324: CargarLevel(Personaje.nivel);
	ld	a,(de)
	push	af
	inc	sp
	call	_CargarLevel
	inc	sp
00102$:
;src/main.c:328: if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==0 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==0){
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00113$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x0005
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00113$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x0055
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00113$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00A5
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00113$
;src/main.c:329: player->nx+=2;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),a
;src/main.c:330: player->change=1;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x01
	jr	00114$
00113$:
;src/main.c:333: else if(cpct_isKeyPressed(Key_CursorLeft) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-1)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+79)==0  && mapActPosition(myTile(Personaje.nx,Personaje.ny)+159)==0 ){
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00114$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	dec	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00114$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x004F
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00114$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x009F
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00114$
;src/main.c:334: player->nx-=2;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),a
;src/main.c:335: player->change=1;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x01
00114$:
;src/main.c:338: if(cpct_isKeyPressed(Key_CursorUp) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-40)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-38)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-36)==0){
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00124$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	a,l
	add	a,#0xD8
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00124$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	a,l
	add	a,#0xDA
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00124$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	e,(hl)
	ld	d,a
	push	de
	call	_myTile
	pop	af
	ld	a,l
	add	a,#0xDC
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00124$
;src/main.c:339: player->ny-=4;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	add	a,#0xFC
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;src/main.c:340: player->change=1;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x01
	jr	00125$
00124$:
;src/main.c:343: else if(cpct_isKeyPressed(Key_CursorDown) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+200)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+202)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+204)==0 ){
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00125$
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Personaje + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00C8
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00125$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00CA
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00125$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	e,(hl)
	ld	d,a
	push	de
	call	_myTile
	pop	af
	ld	bc,#0x00CC
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00125$
;src/main.c:344: player->ny+=4;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	add	a, #0x04
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;src/main.c:345: player->change=1;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x01
00125$:
;src/main.c:347: if(cpct_isKeyPressed(Key_W) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny-8))==0){
	ld	hl,#0x0807
	call	_cpct_isKeyPressed
;src/main.c:348: if(player->senpuesto==0){
	ld	a,-12 (ix)
	add	a, #0x14
	ld	e,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	d,a
;src/main.c:349: player->ex = player->nx + (player->w/2) - 1; 
	ld	a,-12 (ix)
	add	a, #0x04
	ld	-4 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
;src/main.c:350: player->ey = player->ny - (player->h/2)+2 ;
	ld	a,-12 (ix)
	add	a, #0x05
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
;src/main.c:347: if(cpct_isKeyPressed(Key_W) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny-8))==0){
	ld	a,l
	or	a, a
	jr	Z,00152$
	ld	a, (#_Personaje + 3)
	add	a,#0xF8
	ld	b,a
	ld	a, (#_Personaje + 2)
	add	a, #0x04
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00152$
;src/main.c:348: if(player->senpuesto==0){
	ld	a,(de)
	or	a, a
	jp	NZ,00157$
;src/main.c:349: player->ex = player->nx + (player->w/2) - 1; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l,(hl)
	srl	l
	add	hl, bc
	ld	b,l
	dec	b
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),b
;src/main.c:350: player->ey = player->ny - (player->h/2)+2 ;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	pop	hl
	push	hl
	ld	h,(hl)
	srl	h
	ld	a,b
	sub	a, h
	add	a, #0x02
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),a
;src/main.c:351: player->senpuesto=1;
	ld	a,#0x01
	ld	(de),a
	jp	00157$
00152$:
;src/main.c:353: }else if(cpct_isKeyPressed(Key_A) && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+8))==0 && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+12))==0 ){
	push	de
	ld	hl,#0x2008
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00147$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x08
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a,#0xFE
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00147$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x0C
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a,#0xFE
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00147$
;src/main.c:354: if(player->senpuesto==0){
	ld	a,(de)
	or	a, a
	jp	NZ,00157$
;src/main.c:355: player->ex = player->nx - (player->w/2)+1 ; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	b,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	h,(hl)
	srl	h
	ld	a,b
	sub	a, h
	inc	a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),a
;src/main.c:356: player->ey = player->ny + (player->h/2) - 1;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	pop	hl
	push	hl
	ld	l,(hl)
	srl	l
	add	hl, bc
	ld	b,l
	dec	b
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),b
;src/main.c:357: player->senpuesto=1;
	ld	a,#0x01
	ld	(de),a
	jp	00157$
00147$:
;src/main.c:360: else if(cpct_isKeyPressed(Key_S) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny+20))==0  &&  mapActPosition(myTile(Personaje.nx+4,Personaje.ny+24))==0){
	push	de
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00142$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x14
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a, #0x04
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00142$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x18
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a, #0x04
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00142$
;src/main.c:361: if(player->senpuesto==0){
	ld	a,(de)
	or	a, a
	jp	NZ,00157$
;src/main.c:362: player->ex = player->nx + (player->w/2) - 1; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l,(hl)
	srl	l
	add	hl, bc
	ld	b,l
	dec	b
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),b
;src/main.c:363: player->ey = player->ny + player->h +2 ;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	pop	hl
	push	hl
	ld	h,(hl)
	ld	a,b
	add	a, h
	add	a, #0x02
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),a
;src/main.c:364: player->senpuesto=1;
	ld	a,#0x01
	ld	(de),a
	jp	00157$
00142$:
;src/main.c:367: else if(cpct_isKeyPressed(Key_D) &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+8))==0 &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+12))==0){
	push	de
	ld	hl,#0x2007
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00157$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x08
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a, #0x0A
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00157$
	ld	a, (#(_Personaje + 0x0003) + 0)
	add	a, #0x0C
	ld	b,a
	ld	a, (#(_Personaje + 0x0002) + 0)
	add	a, #0x0A
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	NZ,00157$
;src/main.c:368: if(player->senpuesto==0){
	ld	a,(de)
	or	a, a
	jr	NZ,00157$
;src/main.c:369: player->ex = player->nx + player->w +1 ; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l,(hl)
	ld	a,c
	add	a, l
	inc	a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),a
;src/main.c:370: player->ey = player->ny + (player->h/2) - 1;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	pop	hl
	push	hl
	ld	l,(hl)
	srl	l
	add	hl, bc
	ld	b,l
	dec	b
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),b
;src/main.c:371: player->senpuesto=1;
	ld	a,#0x01
	ld	(de),a
00157$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:384: void DibujarEntidades(){
;	---------------------------------
; Function DibujarEntidades
; ---------------------------------
_DibujarEntidades::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:390: if(Personaje.change  || Personaje.dirAtaque!=No_Ataque ){
	ld	a, (#_Personaje + 18)
	or	a, a
	jr	NZ,00101$
	ld	a, (#_Personaje + 16)
	or	a, a
	jr	Z,00102$
00101$:
;src/main.c:391: puntMem = cpct_getScreenPtr(MemVideo,Personaje.nx,Personaje.ny );
	ld	hl, #_Personaje + 3
	ld	d,(hl)
	ld	a, (#_Personaje + 2)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:392: cpct_drawSprite(Personaje.sprite, puntMem, Personaje.w, Personaje.h);
	ld	hl, #_Personaje + 5
	ld	c,(hl)
	ld	hl, #_Personaje + 4
	ld	b,(hl)
	ld	hl, (#_Personaje + 6)
	push	hl
	pop	iy
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	push	iy
	call	_cpct_drawSprite
00102$:
;src/main.c:399: if(Personaje.senpuesto==1){
	ld	a, (#_Personaje + 20)
	dec	a
	jr	NZ,00105$
;src/main.c:400: puntMem= cpct_getScreenPtr(MemVideo,Personaje.ex,Personaje.ey);
	ld	hl, #_Personaje + 11
	ld	d,(hl)
	ld	a, (#_Personaje + 10)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:401: cpct_drawSprite(&filete, puntMem, Enemy.w, Enemy.h);
	ld	hl, #_Enemy + 5
	ld	c,(hl)
	ld	hl, #_Enemy + 4
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#_filete
	push	hl
	call	_cpct_drawSprite
00105$:
;src/main.c:405: if(Enemy.change){
	ld	a, (#_Enemy + 9)
	or	a, a
	jr	Z,00107$
;src/main.c:407: puntMem= cpct_getScreenPtr(MemVideo,Enemy.nx,Enemy.ny);
	ld	hl, #_Enemy + 3
	ld	d,(hl)
	ld	a, (#_Enemy + 2)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:408: cpct_drawSprite(Enemy.sprite, puntMem, Enemy.w, Enemy.h);
	ld	hl, #_Enemy + 5
	ld	c,(hl)
	ld	hl, #_Enemy + 4
	ld	b,(hl)
	ld	hl, (#_Enemy + 6)
	push	hl
	pop	iy
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	push	iy
	call	_cpct_drawSprite
00107$:
;src/main.c:411: if(!Mierda.dibujado ){
	ld	a, (#_Mierda + 6)
	or	a, a
	jr	NZ,00109$
;src/main.c:412: puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
	ld	hl, #_Mierda + 1
	ld	d,(hl)
	ld	a, (#_Mierda + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:413: cpct_drawSprite(Mierda.sprite, puntMem, Mierda.w, Mierda.h);
	ld	hl, #_Mierda + 3
	ld	c,(hl)
	ld	a,(#_Mierda + 2)
	ld	-1 (ix),a
	ld	hl, (#_Mierda + 4)
	push	hl
	pop	iy
	ld	a,c
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	de
	push	iy
	call	_cpct_drawSprite
00109$:
;src/main.c:416: if(!Power.dibujado ){
	ld	a, (#_Power + 6)
	or	a, a
	jr	NZ,00112$
;src/main.c:417: puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
	ld	hl, #_Power + 1
	ld	d,(hl)
	ld	a, (#_Power + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:418: cpct_drawSprite(Power.sprite, puntMem, Power.w, Power.h);
	ld	hl, #_Power + 3
	ld	c,(hl)
	ld	a,(#_Power + 2)
	ld	-1 (ix),a
	ld	hl, (#_Power + 4)
	push	hl
	pop	iy
	ld	a,c
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	de
	push	iy
	call	_cpct_drawSprite
00112$:
	inc	sp
	pop	ix
	ret
;src/main.c:428: void respawn(TEntity *personaje, EnemyEntity *enemigo){
;	---------------------------------
; Function respawn
; ---------------------------------
_respawn::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:430: personaje->change=1;
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x01
;src/main.c:431: enemigo->change=1;
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
;src/main.c:432: personaje->lives-=1;
	ld	hl,#0x0011
	add	hl,bc
	ld	a,(hl)
	add	a,#0xFF
	ld	(hl),a
;src/main.c:433: score();
	push	bc
	push	de
	call	_score
	call	_BorrarEntidades
	pop	de
	pop	bc
;src/main.c:435: personaje->x = PosXini;
	ld	a,#0x02
	ld	(bc),a
;src/main.c:436: personaje->y = PosYini;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x3C
;src/main.c:437: personaje->nx = PosXini;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x02
;src/main.c:438: personaje->ny = PosYini;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x3C
;src/main.c:439: personaje->ex = PosEspXini;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x2B
;src/main.c:440: personaje->ey = PosEspYini;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x2D
;src/main.c:442: enemigo->x = EnemiX;
	ld	a,#0x38
	ld	(de),a
;src/main.c:443: enemigo->y = EnemiY;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x8C
;src/main.c:444: enemigo->nx = EnemiX;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#0x38
;src/main.c:445: enemigo->ny = EnemiY;
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x8C
	pop	ix
	ret
;src/main.c:450: u8 distancia(){
;	---------------------------------
; Function distancia
; ---------------------------------
_distancia::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;src/main.c:456: if(((Personaje.nx>Enemy.nx-30 &&  Personaje.nx<=Enemy.nx) || (Personaje.nx<Enemy.nx + 30 && Personaje.nx>=Enemy.nx )) && ((Personaje.ny>Enemy.ny-50 &&  Personaje.ny<=Enemy.ny) || (Personaje.ny<Enemy.ny + 50 && Personaje.ny>=Enemy.ny )) ) distancia=1;
	ld	a,(#_Personaje + 2)
	ld	-8 (ix),a
	ld	a,(#_Enemy + 2)
	ld	-7 (ix), a
	ld	-12 (ix),a
	ld	-11 (ix),#0x00
	ld	a,-12 (ix)
	add	a,#0xE2
	ld	h,a
	ld	a,-11 (ix)
	adc	a,#0xFF
	ld	l,a
	ld	a,-8 (ix)
	ld	-10 (ix),a
	ld	-9 (ix),#0x00
	ld	a,h
	sub	a, -10 (ix)
	ld	a,l
	sbc	a, -9 (ix)
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P,00106$
	ld	a,-7 (ix)
	sub	a, -8 (ix)
	jr	NC,00110$
00106$:
	ld	a,-12 (ix)
	add	a, #0x1E
	ld	h,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	l,a
	ld	a,-10 (ix)
	sub	a, h
	ld	a,-9 (ix)
	sbc	a, l
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P,00102$
	ld	a,-8 (ix)
	sub	a, -7 (ix)
	jp	C,00102$
00110$:
	ld	a,(#_Personaje + 3)
	ld	-10 (ix),a
	ld	hl, #_Enemy + 3
	ld	a,(hl)
	ld	-12 (ix), a
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	add	a,#0xCE
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-3 (ix),a
	ld	a,-10 (ix)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	ld	a,-4 (ix)
	sub	a, -6 (ix)
	ld	a,-3 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P,00109$
	ld	a,-12 (ix)
	sub	a, -10 (ix)
	jr	NC,00101$
00109$:
	ld	a,-2 (ix)
	add	a, #0x32
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	a,-6 (ix)
	sub	a, -4 (ix)
	ld	a,-5 (ix)
	sbc	a, -3 (ix)
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	P,00102$
	ld	a,-10 (ix)
	sub	a, -12 (ix)
	jr	C,00102$
00101$:
	ld	-13 (ix),#0x01
	jr	00103$
00102$:
;src/main.c:457: else distancia = 10;
	ld	-13 (ix),#0x0A
00103$:
;src/main.c:459: return distancia;
	ld	l,-13 (ix)
	ld	sp, ix
	pop	ix
	ret
;src/main.c:463: void IA(EnemyEntity *enemigo, TEntity *player){
;	---------------------------------
; Function IA
; ---------------------------------
_IA::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;src/main.c:465: enemigo->change=0;
	ld	a,4 (ix)
	ld	-8 (ix),a
	ld	a,5 (ix)
	ld	-7 (ix),a
	ld	a,-8 (ix)
	add	a, #0x09
	ld	-10 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x00
;src/main.c:466: enemigo->x=enemigo->nx;
	ld	a,-8 (ix)
	add	a, #0x02
	ld	-15 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),a
;src/main.c:467: enemigo->y=enemigo->ny;
	ld	a,-8 (ix)
	add	a, #0x01
	ld	-2 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	a,-8 (ix)
	add	a, #0x03
	ld	-12 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
;src/main.c:469: if(Personaje.senpuesto==1){
	ld	a,(#_Personaje + 20)
	ld	-6 (ix),a
;src/main.c:484: enemigo->estado=Vigilar;
	ld	a,-8 (ix)
	add	a, #0x0B
	ld	-2 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
;src/main.c:469: if(Personaje.senpuesto==1){
	ld	a,-6 (ix)
	dec	a
	jp	NZ,00202$
;src/main.c:470: if(Personaje.ex < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
	ld	a,(#(_Personaje + 0x000a) + 0)
	ld	-6 (ix),a
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-13 (ix),a
	ld	a,-6 (ix)
	sub	a, -13 (ix)
	jr	NC,00122$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	ld	a,-13 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	dec	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00122$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x004F
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00122$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x009F
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00122$
;src/main.c:471: enemigo->nx-=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	d,(hl)
	dec	d
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),d
;src/main.c:472: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00204$
00122$:
;src/main.c:473: }else if(Personaje.ey > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	hl, #(_Personaje + 0x000b) + 0
	ld	e,(hl)
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,d
	sub	a, e
	jp	NC,00116$
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-13 (ix),a
	push	de
	inc	sp
	ld	a,-13 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0xC8
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00116$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0xCA
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00116$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0xCC
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00116$
;src/main.c:474: enemigo->ny+=1;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	inc	(hl)
;src/main.c:475: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00204$
00116$:
;src/main.c:476: }else if(Personaje.ey < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ) {
	ld	hl, #(_Personaje + 0x000b) + 0
	ld	e,(hl)
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,e
	sub	a, d
	jr	NC,00111$
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a,#0xDA
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a,#0xFF
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00111$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a,#0xDC
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a,#0xFF
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00111$
;src/main.c:477: enemigo->ny-=1;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	d,(hl)
	dec	d
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),d
;src/main.c:478: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00204$
00111$:
;src/main.c:479: }else if(Personaje.ex > Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)!=1 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
	ld	hl, #(_Personaje + 0x000a) + 0
	ld	e,(hl)
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	ld	a,d
	sub	a, e
	jp	NC,00105$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0x05
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00105$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0x55
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	dec	l
	jr	Z,00105$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	a, l
	add	a, #0xA5
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00105$
;src/main.c:480: enemigo->nx+=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	inc	(hl)
;src/main.c:481: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00204$
00105$:
;src/main.c:482: }else if(Enemy.ny == Personaje.ey && Enemy.nx == Personaje.ex){
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	hl, #(_Personaje + 0x000b) + 0
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jp	NZ,00204$
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	ld	hl, #(_Personaje + 0x000a) + 0
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jp	NZ,00204$
;src/main.c:483: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;src/main.c:484: enemigo->estado=Vigilar;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:485: player->senpuesto=0;
	ld	a,6 (ix)
	ld	-5 (ix),a
	ld	a,7 (ix)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	add	a, #0x14
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),#0x00
	jp	00204$
00202$:
;src/main.c:489: else if(Enemy.estado==Vigilar){
	ld	a,(#_Enemy + 11)
;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
;src/main.c:489: else if(Enemy.estado==Vigilar){
	ld	-5 (ix), a
	or	a, a
	jp	NZ,00199$
;src/main.c:491: if(Enemy.vigilancia){
	ld	a,(#_Enemy + 8)
	ld	-13 (ix),a
;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-6 (ix),a
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-3 (ix),a
;src/main.c:498: enemigo->vigilancia=0;
	ld	a,-8 (ix)
	add	a, #0x08
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
;src/main.c:491: if(Enemy.vigilancia){
	ld	a,-13 (ix)
	or	a, a
	jp	Z,00146$
;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	h,-6 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	a,l
	add	a, #0xC8
	ld	-17 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00132$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00132$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00132$
;src/main.c:493: enemigo->ny+=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:494: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00147$
00132$:
;src/main.c:495: }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ){
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xD8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00147$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00147$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00147$
;src/main.c:496: enemigo->ny-=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:497: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;src/main.c:498: enemigo->vigilancia=0;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
	jp	00147$
00146$:
;src/main.c:502: if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0  ){
	ld	h,-6 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xD8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	-17 (ix), l
	ld	a, l
	or	a, a
	jp	NZ,00141$
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-17 (ix),a
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-3 (ix),a
	ld	h,-17 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00141$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00141$
;src/main.c:503: enemigo->ny-=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:504: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00147$
00141$:
;src/main.c:505: }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0&& mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xC8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00147$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00147$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00147$
;src/main.c:506: enemigo->ny+=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:507: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
;src/main.c:508: enemigo->vigilancia=1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x01
00147$:
;src/main.c:514: if(distancia()<5)enemigo->estado=Atacar;
	call	_distancia
	ld	a,l
	sub	a, #0x05
	jp	NC,00204$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x01
	jp	00204$
00199$:
;src/main.c:520: if(Personaje.nx < Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0 ){
;src/main.c:522: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
;src/main.c:518: }else if(Enemy.estado==Atacar){
	ld	a,-5 (ix)
	dec	a
	jp	NZ,00196$
;src/main.c:520: if(Personaje.nx < Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0 ){
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	ld	a,d
	sub	a, -17 (ix)
	jp	NC,00151$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix),l
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00151$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x4F
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00151$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x9F
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00151$
;src/main.c:521: enemigo->nx-=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	d,(hl)
	dec	d
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),d
00151$:
;src/main.c:522: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	e,(hl)
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,d
	sub	a, e
	jr	NC,00156$
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00C8
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00156$
	ld	a, (#(_Enemy + 0x0003) + 0)
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00CA
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00156$
	ld	a, (#(_Enemy + 0x0003) + 0)
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	bc,#0x00CC
	add	hl,bc
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00156$
;src/main.c:523: enemigo->ny+=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
00156$:
;src/main.c:524: }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-17 (ix),a
	ld	a,d
	sub	a, -17 (ix)
	jp	NC,00161$
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	ld	a,-17 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xD8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00161$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00161$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00161$
;src/main.c:525: enemigo->ny-=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
00161$:
;src/main.c:526: }if(Personaje.nx > Enemy.nx  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix), a
	sub	a, d
	jp	NC,00166$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x05
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00166$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x55
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00166$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xA5
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00166$
;src/main.c:527: enemigo->nx+=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	inc	(hl)
00166$:
;src/main.c:529: if(distancia()>5)enemigo->estado=Vigilar;
	call	_distancia
	ld	a,#0x05
	sub	a, l
	jr	NC,00171$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
00171$:
;src/main.c:530: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
	jp	00204$
00196$:
;src/main.c:532: }else if(Enemy.estado==Huir && distancia()<5 ){
	ld	a,-5 (ix)
	sub	a, #0x02
	jp	NZ,00204$
	call	_distancia
	ld	a,l
	sub	a, #0x05
	jp	NC,00204$
;src/main.c:534: if(Personaje.nx < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0){
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	ld	a,d
	sub	a, -17 (ix)
	jp	NC,00173$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x05
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00173$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x55
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00173$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xA5
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00173$
;src/main.c:535: enemigo->nx+=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	inc	a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),a
;src/main.c:536: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
00173$:
;src/main.c:537: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-17 (ix), a
	sub	a, d
	jp	NC,00178$
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-3 (ix),a
	ld	h,-17 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xD8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00178$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00178$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_Enemy + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a,#0xDC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0xFF
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00178$
;src/main.c:538: enemigo->ny-=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a,#0xFE
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:539: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
00178$:
;src/main.c:540: }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
	ld	hl, #(_Personaje + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-17 (ix),a
	ld	a,d
	sub	a, -17 (ix)
	jp	NC,00183$
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-3 (ix),a
	ld	h,-17 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xC8
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00183$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCA
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00183$
	ld	hl, #(_Enemy + 0x0003) + 0
	ld	d,(hl)
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-17 (ix),a
	push	de
	inc	sp
	ld	a,-17 (ix)
	push	af
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0xCC
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00183$
;src/main.c:541: enemigo->ny+=2;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	add	a, #0x02
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),a
;src/main.c:542: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
00183$:
;src/main.c:543: }if(Personaje.nx > Enemy.nx  &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
	ld	hl, #(_Personaje + 0x0002) + 0
	ld	d,(hl)
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	b,(hl)
	ld	a,b
	sub	a, d
	jp	NC,00204$
	ld	a, (#(_Enemy + 0x0003) + 0)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix),l
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	a,l
	or	a, a
	jp	NZ,00204$
	ld	a, (#(_Enemy + 0x0003) + 0)
	ld	hl, #(_Enemy + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x4F
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	-17 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00204$
	ld	a,(#(_Enemy + 0x0003) + 0)
	ld	-17 (ix),a
	ld	a,(#(_Enemy + 0x0002) + 0)
	ld	-3 (ix),a
	ld	h,-17 (ix)
	ld	l,-3 (ix)
	push	hl
	call	_myTile
	pop	af
	ld	-16 (ix),h
	ld	-17 (ix), l
	ld	a, l
	add	a, #0x9F
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	pop	hl
	push	hl
	push	hl
	call	_mapActPosition
	pop	af
	ld	-17 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00204$
;src/main.c:544: enemigo->nx-=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	d,(hl)
	dec	d
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),d
;src/main.c:545: enemigo->change=1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x01
00204$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:559: void ComprobarColision(TEntity *personaje, PoderEntity *poder, EnemyEntity *enemigo, mierdaEntity *mierda){
;	---------------------------------
; Function ComprobarColision
; ---------------------------------
_ComprobarColision::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:571: if(Personaje.nx+Personaje.w > Enemy.nx && Personaje.nx < Enemy.nx+Enemy.w && Personaje.ny+Personaje.h > Enemy.ny && Personaje.ny < Enemy.ny+Enemy.h){
	ld	a, (#(_Personaje + 0x0002) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0004) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Enemy + 2)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00166$
	xor	a, #0x80
00166$:
	jp	P,00102$
	ld	a, (#_Enemy + 4)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00167$
	xor	a, #0x80
00167$:
	jp	P,00102$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0005) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Enemy + 3)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P,00102$
	ld	a, (#_Enemy + 5)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00169$
	xor	a, #0x80
00169$:
	jp	P,00102$
;src/main.c:572: respawn(personaje,enemigo);
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_respawn
	pop	af
	pop	af
00102$:
;src/main.c:576: if(Personaje.nx+Personaje.w > Power.x && Personaje.nx < Power.x+Power.w && Personaje.ny+Personaje.h > Power.y && Personaje.ny < Power.y+Power.h){
	ld	a, (#(_Personaje + 0x0002) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0004) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Power + 0)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P,00107$
	ld	a, (#_Power + 2)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00171$
	xor	a, #0x80
00171$:
	jp	P,00107$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0005) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Power + 1)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00172$
	xor	a, #0x80
00172$:
	jp	P,00107$
	ld	a, (#_Power + 3)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00173$
	xor	a, #0x80
00173$:
	jp	P,00107$
;src/main.c:577: poder->cogido=1;
	ld	l,6 (ix)
	ld	h,7 (ix)
	ld	bc,#0x0008
	add	hl,bc
	ld	(hl),#0x01
;src/main.c:578: enemigo->estado=Huir;
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	bc,#0x000B
	add	hl,bc
	ld	(hl),#0x02
00107$:
;src/main.c:580: if(Personaje.nx+Personaje.w > Mierda.x && Personaje.nx < Mierda.x+Mierda.w && Personaje.ny+Personaje.h > Mierda.y && Personaje.ny < Mierda.y+Mierda.h){
	ld	a, (#(_Personaje + 0x0002) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0004) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Mierda + 0)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00174$
	xor	a, #0x80
00174$:
	jp	P,00116$
	ld	a, (#_Mierda + 2)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00175$
	xor	a, #0x80
00175$:
	jp	P,00116$
	ld	a, (#(_Personaje + 0x0003) + 0)
	ld	e,a
	ld	d,#0x00
	ld	a, (#(_Personaje + 0x0005) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ex	(sp), hl
	ld	a, (#_Mierda + 1)
	ld	c,a
	ld	b,#0x00
	ld	a,c
	sub	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	jp	PO, 00176$
	xor	a, #0x80
00176$:
	jp	P,00116$
	ld	a, (#_Mierda + 3)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00177$
	xor	a, #0x80
00177$:
	jp	P,00116$
;src/main.c:581: mierda->cogido=1;
	ld	l,10 (ix)
	ld	h,11 (ix)
	ld	bc,#0x0008
	add	hl,bc
	ld	(hl),#0x01
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:589: u8 menu(){
;	---------------------------------
; Function menu
; ---------------------------------
_menu::
;src/main.c:592: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:598: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
	ld	hl,#0x0A00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:599: cpct_drawStringM0("Welcome to Scape", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:603: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
	ld	hl,#0x5000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:604: cpct_drawStringM0("Pulse 'I' para ver ", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:606: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
	ld	hl,#0x5F00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:607: cpct_drawStringM0("controles", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:611: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
	ld	hl,#0x7800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:612: cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:614: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
	ld	hl,#0x8700
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:615: cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_7
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:619: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
	ld	hl,#0xA000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:620: cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_8
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:622: while(1){
00110$:
;src/main.c:623: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/main.c:625: if(cpct_isKeyPressed(Key_E) ){
	ld	hl,#0x0407
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00102$
;src/main.c:626: return 2;
	ld	l,#0x02
	ret
00102$:
;src/main.c:629: if(cpct_isKeyPressed(Key_V) ){
	ld	hl,#0x8006
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00104$
;src/main.c:631: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:633: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
	ld	hl,#0x0A00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:634: cpct_drawStringM0("Welcome to Zoo clean", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_9
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:638: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
	ld	hl,#0x5000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:639: cpct_drawStringM0("Recoge los excrementos", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_10
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:641: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
	ld	hl,#0x5F00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:642: cpct_drawStringM0("para abrir las jaulas", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_11
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:646: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
	ld	hl,#0x7800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:647: cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:649: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
	ld	hl,#0x8700
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:650: cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_7
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:654: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
	ld	hl,#0xA000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:655: cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_8
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00104$:
;src/main.c:659: if(cpct_isKeyPressed(Key_I) ){
	ld	hl,#0x0804
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z,00106$
;src/main.c:661: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:663: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
	ld	hl,#0x0A00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:664: cpct_drawStringM0("Controles Scape", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_12
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:668: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
	ld	hl,#0x5000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:669: cpct_drawStringM0("Flechas de direccion", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_13
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:671: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
	ld	hl,#0x5F00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:672: cpct_drawStringM0("para mover", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_14
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:676: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
	ld	hl,#0x7800
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:677: cpct_drawStringM0("WASD para dejar señuelos", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_15
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:679: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
	ld	hl,#0x8700
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:680: cpct_drawStringM0("dejar señuelo", puntMem ,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_16
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:684: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
	ld	hl,#0xA000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:685: cpct_drawStringM0("Pulse 'V' para", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_17
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:687: puntMem = cpct_getScreenPtr(MemVideo,0,175 );
	ld	hl,#0xAF00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	e, l
	ld	d, h
;src/main.c:688: cpct_drawStringM0("volver", puntMem,g_palette[1],0);
	ld	hl, #(_g_palette + 0x0001) + 0
	ld	b,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	ld	hl,#___str_18
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00106$:
;src/main.c:692: if(cpct_isKeyPressed(Key_Space)){
	ld	hl,#0x8005
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00110$
;src/main.c:693: return 1;
	ld	l,#0x01
	ret
___str_3:
	.ascii "Welcome to Scape"
	.db 0x00
___str_4:
	.ascii "Pulse 'I' para ver "
	.db 0x00
___str_5:
	.ascii "controles"
	.db 0x00
___str_6:
	.ascii "Pulse Espacio"
	.db 0x00
___str_7:
	.ascii "para jugar"
	.db 0x00
___str_8:
	.ascii "Pulse 'E' para salir"
	.db 0x00
___str_9:
	.ascii "Welcome to Zoo clean"
	.db 0x00
___str_10:
	.ascii "Recoge los excrementos"
	.db 0x00
___str_11:
	.ascii "para abrir las jaulas"
	.db 0x00
___str_12:
	.ascii "Controles Scape"
	.db 0x00
___str_13:
	.ascii "Flechas de direccion"
	.db 0x00
___str_14:
	.ascii "para mover"
	.db 0x00
___str_15:
	.ascii "WASD para dejar se"
	.db 0xC3
	.db 0xB1
	.ascii "uelos"
	.db 0x00
___str_16:
	.ascii "dejar se"
	.db 0xC3
	.db 0xB1
	.ascii "uelo"
	.db 0x00
___str_17:
	.ascii "Pulse 'V' para"
	.db 0x00
___str_18:
	.ascii "volver"
	.db 0x00
;src/main.c:699: void actualizarPower(PoderEntity *poder, mierdaEntity *mierda){
;	---------------------------------
; Function actualizarPower
; ---------------------------------
_actualizarPower::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:701: if(!Power.dibujado)poder->dibujado=1;
	ld	hl, #_Power + 6
	ld	h,(hl)
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	a,h
	or	a, a
	jr	NZ,00102$
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x01
00102$:
;src/main.c:702: if(Power.cogido && !Power.borrado)poder->borrado=1;
	ld	a, (#_Power + 8)
	or	a, a
	jr	Z,00104$
	ld	a, (#_Power + 7)
	or	a, a
	jr	NZ,00104$
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x01
00104$:
;src/main.c:704: if(!Mierda.dibujado)mierda->dibujado=1;
	ld	hl, #_Mierda + 6
	ld	h,(hl)
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	a,h
	or	a, a
	jr	NZ,00107$
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x01
00107$:
;src/main.c:705: if(Mierda.cogido && !Mierda.borrado)mierda->borrado=1;
	ld	a, (#_Mierda + 8)
	or	a, a
	jr	Z,00111$
	ld	a, (#_Mierda + 7)
	or	a, a
	jr	NZ,00111$
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x01
00111$:
	pop	ix
	ret
;src/main.c:712: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:725: TEntity *player=&Personaje;
;src/main.c:726: EnemyEntity *enemigo=&Enemy;
;src/main.c:727: PoderEntity *poder = &Power;
;src/main.c:728: mierdaEntity *mierda = &Mierda;
;src/main.c:729: u8 resultado_menu=0;
	ld	-1 (ix),#0x00
;src/main.c:734: iniciar();
	call	_iniciar
;src/main.c:740: while (resultado_menu!=2){
00111$:
	ld	a,-1 (ix)
	sub	a, #0x02
	jp	Z,00114$
;src/main.c:746: if(resultado_menu==0){
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00104$
;src/main.c:747: resultado_menu =  menu();
	call	_menu
;src/main.c:748: if(resultado_menu!=2){
	ld	-1 (ix), l
	ld	a, l
	sub	a, #0x02
	jr	Z,00104$
;src/main.c:749: player->lives=3;
	ld	hl,#_Personaje + 17
	ld	(hl),#0x03
;src/main.c:750: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:752: cpct_etm_setTileset2x4(g_tilesetum);
	ld	hl,#_g_tilesetum
	call	_cpct_etm_setTileset2x4
;src/main.c:753: CargarLevel(Personaje.nivel);
	ld	a, (#_Personaje + 19)
	push	af
	inc	sp
	call	_CargarLevel
	inc	sp
00104$:
;src/main.c:759: if(resultado_menu==1){
	ld	a,-1 (ix)
	dec	a
	jr	NZ,00111$
;src/main.c:761: cpct_akp_musicPlay();
	call	_cpct_akp_musicPlay
;src/main.c:762: cpct_setBorder(g_palette[1]);
	ld	a, (#_g_palette + 1)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:764: BorrarEntidades();
	call	_BorrarEntidades
;src/main.c:765: cpct_setBorder(g_palette[2]);
	ld	a, (#_g_palette + 2)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:767: DibujarEntidades();
	call	_DibujarEntidades
;src/main.c:771: cpct_setBorder(g_palette[0]);
	ld	a, (#_g_palette + 0)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:774: cpct_setBorder(g_palette[0]);
	ld	a, (#_g_palette + 0)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:775: actualizarPower(poder,mierda);
	ld	hl,#_Mierda
	push	hl
	ld	hl,#_Power
	push	hl
	call	_actualizarPower
	pop	af
	pop	af
;src/main.c:776: ComprobarTeclado(player);
	ld	hl,#_Personaje
	push	hl
	call	_ComprobarTeclado
;src/main.c:777: IA(enemigo,player);
	ld	hl, #_Personaje
	ex	(sp),hl
	ld	hl,#_Enemy
	push	hl
	call	_IA
	pop	af
;src/main.c:778: ComprobarColision(player,poder,enemigo,mierda);
	ld	hl, #_Mierda
	ex	(sp),hl
	ld	hl,#_Enemy
	push	hl
	ld	hl,#_Power
	push	hl
	ld	hl,#_Personaje
	push	hl
	call	_ComprobarColision
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/main.c:780: if (cpct_akp_songLoopTimes > 0)
	ld	a,(#_cpct_akp_songLoopTimes + 0)
	or	a, a
	jr	Z,00106$
;src/main.c:781: cpct_akp_musicInit(G_CancionRetro);
	ld	hl,#_G_CancionRetro
	push	hl
	call	_cpct_akp_musicInit
	pop	af
00106$:
;src/main.c:783: if(Personaje.lives==0)resultado_menu=0;
	ld	a, (#_Personaje + 17)
	or	a, a
	jp	NZ,00111$
	ld	-1 (ix),#0x00
	jp	00111$
00114$:
	inc	sp
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
