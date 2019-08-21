                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 22 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 23:57:56 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _actualizarPower
                             14 	.globl _menu
                             15 	.globl _ComprobarColision
                             16 	.globl _IA
                             17 	.globl _distancia
                             18 	.globl _respawn
                             19 	.globl _DibujarEntidades
                             20 	.globl _ComprobarTeclado
                             21 	.globl _mapActPosition
                             22 	.globl _myTile
                             23 	.globl _BorrarEntidades
                             24 	.globl _iniciar
                             25 	.globl _CargarLevel
                             26 	.globl _score
                             27 	.globl _cpct_etm_setTileset2x4
                             28 	.globl _cpct_etm_drawTileBox2x4
                             29 	.globl _cpct_akp_SFXInit
                             30 	.globl _cpct_akp_musicPlay
                             31 	.globl _cpct_akp_musicInit
                             32 	.globl _cpct_getScreenPtr
                             33 	.globl _cpct_setPALColour
                             34 	.globl _cpct_setPalette
                             35 	.globl _cpct_waitVSYNC
                             36 	.globl _cpct_setVideoMode
                             37 	.globl _cpct_drawStringM0
                             38 	.globl _cpct_drawSolidBox
                             39 	.globl _cpct_drawSprite
                             40 	.globl _cpct_isAnyKeyPressed_f
                             41 	.globl _cpct_isKeyPressed
                             42 	.globl _cpct_scanKeyboard_f
                             43 	.globl _cpct_memset
                             44 	.globl _cpct_disableFirmware
                             45 	.globl _Mierda
                             46 	.globl _Power
                             47 	.globl _Enemy
                             48 	.globl _Personaje
                             49 	.globl _g_palette
                             50 ;--------------------------------------------------------
                             51 ; special function registers
                             52 ;--------------------------------------------------------
                             53 ;--------------------------------------------------------
                             54 ; ram data
                             55 ;--------------------------------------------------------
                             56 	.area _DATA
                             57 ;--------------------------------------------------------
                             58 ; ram data
                             59 ;--------------------------------------------------------
                             60 	.area _INITIALIZED
                             61 ;--------------------------------------------------------
                             62 ; absolute external ram data
                             63 ;--------------------------------------------------------
                             64 	.area _DABS (ABS)
                             65 ;--------------------------------------------------------
                             66 ; global & static initialisations
                             67 ;--------------------------------------------------------
                             68 	.area _HOME
                             69 	.area _GSINIT
                             70 	.area _GSFINAL
                             71 	.area _GSINIT
                             72 ;--------------------------------------------------------
                             73 ; Home
                             74 ;--------------------------------------------------------
                             75 	.area _HOME
                             76 	.area _HOME
                             77 ;--------------------------------------------------------
                             78 ; code
                             79 ;--------------------------------------------------------
                             80 	.area _CODE
                             81 ;src/main.c:157: void score(){
                             82 ;	---------------------------------
                             83 ; Function score
                             84 ; ---------------------------------
   61DE                      85 _score::
                             86 ;src/main.c:159: puntMem = cpct_getScreenPtr(MemVideo,5,5);
   61DE 21 05 05      [10]   87 	ld	hl,#0x0505
   61E1 E5            [11]   88 	push	hl
   61E2 21 00 C0      [10]   89 	ld	hl,#0xC000
   61E5 E5            [11]   90 	push	hl
   61E6 CD 1E 91      [17]   91 	call	_cpct_getScreenPtr
   61E9 EB            [ 4]   92 	ex	de,hl
                             93 ;src/main.c:160: if(Personaje.lives==3){
   61EA 21 56 62      [10]   94 	ld	hl, #(_Personaje + 0x0011) + 0
   61ED 4E            [ 7]   95 	ld	c,(hl)
                             96 ;src/main.c:161: cpct_drawStringM0("Vidas: 3",puntMem,g_palette[1],0);
                             97 ;src/main.c:160: if(Personaje.lives==3){
   61EE 79            [ 4]   98 	ld	a,c
   61EF D6 03         [ 7]   99 	sub	a, #0x03
   61F1 20 17         [12]  100 	jr	NZ,00107$
                            101 ;src/main.c:161: cpct_drawStringM0("Vidas: 3",puntMem,g_palette[1],0);
   61F3 21 41 62      [10]  102 	ld	hl, #(_g_palette + 0x0001) + 0
   61F6 46            [ 7]  103 	ld	b,(hl)
   61F7 AF            [ 4]  104 	xor	a, a
   61F8 F5            [11]  105 	push	af
   61F9 33            [ 6]  106 	inc	sp
   61FA C5            [11]  107 	push	bc
   61FB 33            [ 6]  108 	inc	sp
   61FC D5            [11]  109 	push	de
   61FD 21 78 62      [10]  110 	ld	hl,#___str_0
   6200 E5            [11]  111 	push	hl
   6201 CD AF 8D      [17]  112 	call	_cpct_drawStringM0
   6204 21 06 00      [10]  113 	ld	hl,#6
   6207 39            [11]  114 	add	hl,sp
   6208 F9            [ 6]  115 	ld	sp,hl
   6209 C9            [10]  116 	ret
   620A                     117 00107$:
                            118 ;src/main.c:162: }else if(Personaje.lives==2){
   620A 79            [ 4]  119 	ld	a,c
   620B D6 02         [ 7]  120 	sub	a, #0x02
   620D 20 18         [12]  121 	jr	NZ,00104$
                            122 ;src/main.c:163: cpct_drawStringM0("Vidas: 2",puntMem,g_palette[1],0);
   620F 21 41 62      [10]  123 	ld	hl, #(_g_palette + 0x0001) + 0
   6212 4E            [ 7]  124 	ld	c,(hl)
   6213 AF            [ 4]  125 	xor	a, a
   6214 F5            [11]  126 	push	af
   6215 33            [ 6]  127 	inc	sp
   6216 79            [ 4]  128 	ld	a,c
   6217 F5            [11]  129 	push	af
   6218 33            [ 6]  130 	inc	sp
   6219 D5            [11]  131 	push	de
   621A 21 81 62      [10]  132 	ld	hl,#___str_1
   621D E5            [11]  133 	push	hl
   621E CD AF 8D      [17]  134 	call	_cpct_drawStringM0
   6221 21 06 00      [10]  135 	ld	hl,#6
   6224 39            [11]  136 	add	hl,sp
   6225 F9            [ 6]  137 	ld	sp,hl
   6226 C9            [10]  138 	ret
   6227                     139 00104$:
                            140 ;src/main.c:164: }else if(Personaje.lives==1){
   6227 0D            [ 4]  141 	dec	c
   6228 C0            [11]  142 	ret	NZ
                            143 ;src/main.c:165: cpct_drawStringM0("Vidas: 1",puntMem,g_palette[1],0);
   6229 21 41 62      [10]  144 	ld	hl, #(_g_palette + 0x0001) + 0
   622C 46            [ 7]  145 	ld	b,(hl)
   622D AF            [ 4]  146 	xor	a, a
   622E F5            [11]  147 	push	af
   622F 33            [ 6]  148 	inc	sp
   6230 C5            [11]  149 	push	bc
   6231 33            [ 6]  150 	inc	sp
   6232 D5            [11]  151 	push	de
   6233 21 8A 62      [10]  152 	ld	hl,#___str_2
   6236 E5            [11]  153 	push	hl
   6237 CD AF 8D      [17]  154 	call	_cpct_drawStringM0
   623A 21 06 00      [10]  155 	ld	hl,#6
   623D 39            [11]  156 	add	hl,sp
   623E F9            [ 6]  157 	ld	sp,hl
   623F C9            [10]  158 	ret
   6240                     159 _g_palette:
   6240 14                  160 	.db #0x14	; 20
   6241 15                  161 	.db #0x15	; 21
   6242 13                  162 	.db #0x13	; 19
   6243 16                  163 	.db #0x16	; 22
   6244 0E                  164 	.db #0x0E	; 14
   6245                     165 _Personaje:
   6245 02                  166 	.db #0x02	; 2
   6246 3C                  167 	.db #0x3C	; 60
   6247 02                  168 	.db #0x02	; 2
   6248 3C                  169 	.db #0x3C	; 60
   6249 0A                  170 	.db #0x0A	; 10
   624A 14                  171 	.db #0x14	; 20
   624B CC 40               172 	.dw _pers
   624D BE 61               173 	.dw _espada
   624F 02                  174 	.db #0x02	; 2
   6250 44                  175 	.db #0x44	; 68	'D'
   6251 02                  176 	.db #0x02	; 2
   6252 44                  177 	.db #0x44	; 68	'D'
   6253 02                  178 	.db #0x02	; 2
   6254 08                  179 	.db #0x08	; 8
   6255 00                  180 	.db #0x00	; 0
   6256 03                  181 	.db #0x03	; 3
   6257 01                  182 	.db #0x01	; 1
   6258 01                  183 	.db #0x01	; 1
   6259 00                  184 	.db #0x00	; 0
   625A                     185 _Enemy:
   625A 38                  186 	.db #0x38	; 56	'8'
   625B 8C                  187 	.db #0x8C	; 140
   625C 38                  188 	.db #0x38	; 56	'8'
   625D 8C                  189 	.db #0x8C	; 140
   625E 0A                  190 	.db #0x0A	; 10
   625F 14                  191 	.db #0x14	; 20
   6260 F0 80               192 	.dw _komodo
   6262 00                  193 	.db #0x00	; 0
   6263 01                  194 	.db #0x01	; 1
   6264 01                  195 	.db #0x01	; 1
   6265 00                  196 	.db #0x00	; 0
   6266                     197 _Power:
   6266 05                  198 	.db #0x05	; 5
   6267 96                  199 	.db #0x96	; 150
   6268 0A                  200 	.db #0x0A	; 10
   6269 14                  201 	.db #0x14	; 20
   626A 02 40               202 	.dw _latigo
   626C 00                  203 	.db #0x00	; 0
   626D 00                  204 	.db #0x00	; 0
   626E 00                  205 	.db #0x00	; 0
   626F                     206 _Mierda:
   626F 78                  207 	.db #0x78	; 120	'x'
   6270 8C                  208 	.db #0x8C	; 140
   6271 0A                  209 	.db #0x0A	; 10
   6272 14                  210 	.db #0x14	; 20
   6273 84 82               211 	.dw _mierda
   6275 00                  212 	.db #0x00	; 0
   6276 00                  213 	.db #0x00	; 0
   6277 00                  214 	.db #0x00	; 0
   6278                     215 ___str_0:
   6278 56 69 64 61 73 3A   216 	.ascii "Vidas: 3"
        20 33
   6280 00                  217 	.db 0x00
   6281                     218 ___str_1:
   6281 56 69 64 61 73 3A   219 	.ascii "Vidas: 2"
        20 32
   6289 00                  220 	.db 0x00
   628A                     221 ___str_2:
   628A 56 69 64 61 73 3A   222 	.ascii "Vidas: 1"
        20 31
   6292 00                  223 	.db 0x00
                            224 ;src/main.c:170: void CargarLevel(u8 nivel){
                            225 ;	---------------------------------
                            226 ; Function CargarLevel
                            227 ; ---------------------------------
   6293                     228 _CargarLevel::
                            229 ;src/main.c:172: cpct_clearScreen(0);
   6293 21 00 40      [10]  230 	ld	hl,#0x4000
   6296 E5            [11]  231 	push	hl
   6297 AF            [ 4]  232 	xor	a, a
   6298 F5            [11]  233 	push	af
   6299 33            [ 6]  234 	inc	sp
   629A 26 C0         [ 7]  235 	ld	h, #0xC0
   629C E5            [11]  236 	push	hl
   629D CD 23 90      [17]  237 	call	_cpct_memset
                            238 ;src/main.c:174: if(nivel==1){
   62A0 21 02 00      [10]  239 	ld	hl, #2+0
   62A3 39            [11]  240 	add	hl, sp
   62A4 7E            [ 7]  241 	ld	a, (hl)
   62A5 3D            [ 4]  242 	dec	a
   62A6 20 20         [12]  243 	jr	NZ,00102$
                            244 ;src/main.c:176: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
   62A8 21 05 05      [10]  245 	ld	hl,#0x0505
   62AB E5            [11]  246 	push	hl
   62AC 21 00 C0      [10]  247 	ld	hl,#0xC000
   62AF E5            [11]  248 	push	hl
   62B0 CD 1E 91      [17]  249 	call	_cpct_getScreenPtr
                            250 ;src/main.c:180: 40, MemVideo, g_tilemap);
   62B3 21 B2 41      [10]  251 	ld	hl,#_g_tilemap
                            252 ;src/main.c:178: cpct_etm_drawTileBox2x4(0, 0, 
   62B6 E5            [11]  253 	push	hl
   62B7 21 00 C0      [10]  254 	ld	hl,#0xC000
   62BA E5            [11]  255 	push	hl
   62BB 21 32 28      [10]  256 	ld	hl,#0x2832
   62BE E5            [11]  257 	push	hl
   62BF 2E 00         [ 7]  258 	ld	l, #0x00
   62C1 E5            [11]  259 	push	hl
   62C2 AF            [ 4]  260 	xor	a, a
   62C3 F5            [11]  261 	push	af
   62C4 33            [ 6]  262 	inc	sp
   62C5 CD 78 8E      [17]  263 	call	_cpct_etm_drawTileBox2x4
   62C8                     264 00102$:
                            265 ;src/main.c:182: if(nivel==2){
   62C8 21 02 00      [10]  266 	ld	hl, #2+0
   62CB 39            [11]  267 	add	hl, sp
   62CC 7E            [ 7]  268 	ld	a, (hl)
   62CD D6 02         [ 7]  269 	sub	a, #0x02
   62CF 20 20         [12]  270 	jr	NZ,00104$
                            271 ;src/main.c:184: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
   62D1 21 05 05      [10]  272 	ld	hl,#0x0505
   62D4 E5            [11]  273 	push	hl
   62D5 21 00 C0      [10]  274 	ld	hl,#0xC000
   62D8 E5            [11]  275 	push	hl
   62D9 CD 1E 91      [17]  276 	call	_cpct_getScreenPtr
                            277 ;src/main.c:188: 40, MemVideo, g_tilemap2);
   62DC 21 82 49      [10]  278 	ld	hl,#_g_tilemap2
                            279 ;src/main.c:186: cpct_etm_drawTileBox2x4(0, 0, 
   62DF E5            [11]  280 	push	hl
   62E0 21 00 C0      [10]  281 	ld	hl,#0xC000
   62E3 E5            [11]  282 	push	hl
   62E4 21 32 28      [10]  283 	ld	hl,#0x2832
   62E7 E5            [11]  284 	push	hl
   62E8 2E 00         [ 7]  285 	ld	l, #0x00
   62EA E5            [11]  286 	push	hl
   62EB AF            [ 4]  287 	xor	a, a
   62EC F5            [11]  288 	push	af
   62ED 33            [ 6]  289 	inc	sp
   62EE CD 78 8E      [17]  290 	call	_cpct_etm_drawTileBox2x4
   62F1                     291 00104$:
                            292 ;src/main.c:190: if(nivel==3){
   62F1 21 02 00      [10]  293 	ld	hl, #2+0
   62F4 39            [11]  294 	add	hl, sp
   62F5 7E            [ 7]  295 	ld	a, (hl)
   62F6 D6 03         [ 7]  296 	sub	a, #0x03
   62F8 20 20         [12]  297 	jr	NZ,00106$
                            298 ;src/main.c:192: puntMem = cpct_getScreenPtr(MemVideo,5,5 );
   62FA 21 05 05      [10]  299 	ld	hl,#0x0505
   62FD E5            [11]  300 	push	hl
   62FE 21 00 C0      [10]  301 	ld	hl,#0xC000
   6301 E5            [11]  302 	push	hl
   6302 CD 1E 91      [17]  303 	call	_cpct_getScreenPtr
                            304 ;src/main.c:196: 40, MemVideo, g_tilemap3);
   6305 21 52 51      [10]  305 	ld	hl,#_g_tilemap3
                            306 ;src/main.c:194: cpct_etm_drawTileBox2x4(0, 0, 
   6308 E5            [11]  307 	push	hl
   6309 21 00 C0      [10]  308 	ld	hl,#0xC000
   630C E5            [11]  309 	push	hl
   630D 21 32 28      [10]  310 	ld	hl,#0x2832
   6310 E5            [11]  311 	push	hl
   6311 2E 00         [ 7]  312 	ld	l, #0x00
   6313 E5            [11]  313 	push	hl
   6314 AF            [ 4]  314 	xor	a, a
   6315 F5            [11]  315 	push	af
   6316 33            [ 6]  316 	inc	sp
   6317 CD 78 8E      [17]  317 	call	_cpct_etm_drawTileBox2x4
   631A                     318 00106$:
                            319 ;src/main.c:201: score();
   631A CD DE 61      [17]  320 	call	_score
   631D C9            [10]  321 	ret
                            322 ;src/main.c:206: void iniciar(){ 
                            323 ;	---------------------------------
                            324 ; Function iniciar
                            325 ; ---------------------------------
   631E                     326 _iniciar::
                            327 ;src/main.c:208: cpct_disableFirmware();
   631E CD 34 90      [17]  328 	call	_cpct_disableFirmware
                            329 ;src/main.c:209: cpct_setVideoMode(0);
   6321 AF            [ 4]  330 	xor	a, a
   6322 F5            [11]  331 	push	af
   6323 33            [ 6]  332 	inc	sp
   6324 CD F6 8F      [17]  333 	call	_cpct_setVideoMode
   6327 33            [ 6]  334 	inc	sp
                            335 ;src/main.c:211: cpct_setPalette(g_palette,5);
   6328 11 40 62      [10]  336 	ld	de,#_g_palette
   632B 3E 05         [ 7]  337 	ld	a,#0x05
   632D F5            [11]  338 	push	af
   632E 33            [ 6]  339 	inc	sp
   632F D5            [11]  340 	push	de
   6330 CD E0 84      [17]  341 	call	_cpct_setPalette
   6333 F1            [10]  342 	pop	af
   6334 33            [ 6]  343 	inc	sp
                            344 ;src/main.c:212: cpct_setBorder(g_palette[0]);    // Set the border to the background colour (colour 0)
   6335 3A 40 62      [13]  345 	ld	a, (#_g_palette + 0)
   6338 57            [ 4]  346 	ld	d,a
   6339 1E 10         [ 7]  347 	ld	e,#0x10
   633B D5            [11]  348 	push	de
   633C CD 7A 85      [17]  349 	call	_cpct_setPALColour
                            350 ;src/main.c:213: cpct_clearScreen(0);
   633F 21 00 40      [10]  351 	ld	hl,#0x4000
   6342 E5            [11]  352 	push	hl
   6343 AF            [ 4]  353 	xor	a, a
   6344 F5            [11]  354 	push	af
   6345 33            [ 6]  355 	inc	sp
   6346 26 C0         [ 7]  356 	ld	h, #0xC0
   6348 E5            [11]  357 	push	hl
   6349 CD 23 90      [17]  358 	call	_cpct_memset
                            359 ;src/main.c:216: cpct_akp_musicInit(G_CancionRetro);    // Initialize the music
   634C 21 00 20      [10]  360 	ld	hl,#_G_CancionRetro
   634F E5            [11]  361 	push	hl
   6350 CD 8B 8C      [17]  362 	call	_cpct_akp_musicInit
                            363 ;src/main.c:217: cpct_akp_SFXInit(G_CancionRetro);
   6353 21 00 20      [10]  364 	ld	hl, #_G_CancionRetro
   6356 E3            [19]  365 	ex	(sp),hl
   6357 CD 17 8D      [17]  366 	call	_cpct_akp_SFXInit
   635A F1            [10]  367 	pop	af
   635B C9            [10]  368 	ret
                            369 ;src/main.c:230: void BorrarEntidades(){
                            370 ;	---------------------------------
                            371 ; Function BorrarEntidades
                            372 ; ---------------------------------
   635C                     373 _BorrarEntidades::
                            374 ;src/main.c:234: cpct_waitVSYNC();
   635C CD EE 8F      [17]  375 	call	_cpct_waitVSYNC
                            376 ;src/main.c:237: if(Personaje.change || Personaje.dirAtaque!=No_Ataque ){
   635F 3A 57 62      [13]  377 	ld	a,(#_Personaje + 18)
   6362 B7            [ 4]  378 	or	a, a
   6363 20 06         [12]  379 	jr	NZ,00103$
   6365 3A 55 62      [13]  380 	ld	a, (#(_Personaje + 0x0010) + 0)
   6368 B7            [ 4]  381 	or	a, a
   6369 28 56         [12]  382 	jr	Z,00104$
   636B                     383 00103$:
                            384 ;src/main.c:239: puntMem= cpct_getScreenPtr(MemVideo,Personaje.x,Personaje.y );
   636B 21 46 62      [10]  385 	ld	hl, #_Personaje + 1
   636E 56            [ 7]  386 	ld	d,(hl)
   636F 3A 45 62      [13]  387 	ld	a, (#_Personaje + 0)
   6372 D5            [11]  388 	push	de
   6373 33            [ 6]  389 	inc	sp
   6374 F5            [11]  390 	push	af
   6375 33            [ 6]  391 	inc	sp
   6376 21 00 C0      [10]  392 	ld	hl,#0xC000
   6379 E5            [11]  393 	push	hl
   637A CD 1E 91      [17]  394 	call	_cpct_getScreenPtr
   637D EB            [ 4]  395 	ex	de,hl
                            396 ;src/main.c:240: cpct_drawSolidBox(puntMem,0,Personaje.w,Personaje.h);
   637E 21 4A 62      [10]  397 	ld	hl, #_Personaje + 5
   6381 46            [ 7]  398 	ld	b,(hl)
   6382 3A 49 62      [13]  399 	ld	a, (#_Personaje + 4)
   6385 C5            [11]  400 	push	bc
   6386 33            [ 6]  401 	inc	sp
   6387 F5            [11]  402 	push	af
   6388 33            [ 6]  403 	inc	sp
   6389 AF            [ 4]  404 	xor	a, a
   638A F5            [11]  405 	push	af
   638B 33            [ 6]  406 	inc	sp
   638C D5            [11]  407 	push	de
   638D CD 45 90      [17]  408 	call	_cpct_drawSolidBox
   6390 F1            [10]  409 	pop	af
   6391 F1            [10]  410 	pop	af
   6392 33            [ 6]  411 	inc	sp
                            412 ;src/main.c:243: if(Personaje.dirAtaque!=No_Ataque){
   6393 3A 55 62      [13]  413 	ld	a, (#(_Personaje + 0x0010) + 0)
   6396 B7            [ 4]  414 	or	a, a
   6397 28 28         [12]  415 	jr	Z,00104$
                            416 ;src/main.c:245: puntMem = cpct_getScreenPtr(MemVideo,Personaje.eantx,Personaje.eanty);
   6399 21 52 62      [10]  417 	ld	hl, #_Personaje + 13
   639C 56            [ 7]  418 	ld	d,(hl)
   639D 3A 51 62      [13]  419 	ld	a, (#_Personaje + 12)
   63A0 D5            [11]  420 	push	de
   63A1 33            [ 6]  421 	inc	sp
   63A2 F5            [11]  422 	push	af
   63A3 33            [ 6]  423 	inc	sp
   63A4 21 00 C0      [10]  424 	ld	hl,#0xC000
   63A7 E5            [11]  425 	push	hl
   63A8 CD 1E 91      [17]  426 	call	_cpct_getScreenPtr
   63AB EB            [ 4]  427 	ex	de,hl
                            428 ;src/main.c:246: cpct_drawSolidBox(puntMem,0,Personaje.ew,Personaje.eh);
   63AC 21 54 62      [10]  429 	ld	hl, #_Personaje + 15
   63AF 46            [ 7]  430 	ld	b,(hl)
   63B0 3A 53 62      [13]  431 	ld	a, (#_Personaje + 14)
   63B3 C5            [11]  432 	push	bc
   63B4 33            [ 6]  433 	inc	sp
   63B5 F5            [11]  434 	push	af
   63B6 33            [ 6]  435 	inc	sp
   63B7 AF            [ 4]  436 	xor	a, a
   63B8 F5            [11]  437 	push	af
   63B9 33            [ 6]  438 	inc	sp
   63BA D5            [11]  439 	push	de
   63BB CD 45 90      [17]  440 	call	_cpct_drawSolidBox
   63BE F1            [10]  441 	pop	af
   63BF F1            [10]  442 	pop	af
   63C0 33            [ 6]  443 	inc	sp
   63C1                     444 00104$:
                            445 ;src/main.c:256: if(Enemy.change ){
   63C1 3A 63 62      [13]  446 	ld	a, (#_Enemy + 9)
   63C4 B7            [ 4]  447 	or	a, a
   63C5 28 28         [12]  448 	jr	Z,00107$
                            449 ;src/main.c:257: puntMem= cpct_getScreenPtr(MemVideo,Enemy.x,Enemy.y);
   63C7 21 5B 62      [10]  450 	ld	hl, #_Enemy + 1
   63CA 56            [ 7]  451 	ld	d,(hl)
   63CB 3A 5A 62      [13]  452 	ld	a, (#_Enemy + 0)
   63CE D5            [11]  453 	push	de
   63CF 33            [ 6]  454 	inc	sp
   63D0 F5            [11]  455 	push	af
   63D1 33            [ 6]  456 	inc	sp
   63D2 21 00 C0      [10]  457 	ld	hl,#0xC000
   63D5 E5            [11]  458 	push	hl
   63D6 CD 1E 91      [17]  459 	call	_cpct_getScreenPtr
   63D9 EB            [ 4]  460 	ex	de,hl
                            461 ;src/main.c:258: cpct_drawSolidBox(puntMem,0,Enemy.w,Enemy.h);
   63DA 21 5F 62      [10]  462 	ld	hl, #_Enemy + 5
   63DD 46            [ 7]  463 	ld	b,(hl)
   63DE 3A 5E 62      [13]  464 	ld	a, (#_Enemy + 4)
   63E1 C5            [11]  465 	push	bc
   63E2 33            [ 6]  466 	inc	sp
   63E3 F5            [11]  467 	push	af
   63E4 33            [ 6]  468 	inc	sp
   63E5 AF            [ 4]  469 	xor	a, a
   63E6 F5            [11]  470 	push	af
   63E7 33            [ 6]  471 	inc	sp
   63E8 D5            [11]  472 	push	de
   63E9 CD 45 90      [17]  473 	call	_cpct_drawSolidBox
   63EC F1            [10]  474 	pop	af
   63ED F1            [10]  475 	pop	af
   63EE 33            [ 6]  476 	inc	sp
   63EF                     477 00107$:
                            478 ;src/main.c:261: if(Power.cogido && !Power.borrado){
   63EF 11 66 62      [10]  479 	ld	de,#_Power+0
   63F2 3A 6E 62      [13]  480 	ld	a, (#_Power + 8)
   63F5 B7            [ 4]  481 	or	a, a
   63F6 28 2D         [12]  482 	jr	Z,00109$
   63F8 3A 6D 62      [13]  483 	ld	a, (#_Power + 7)
   63FB B7            [ 4]  484 	or	a, a
   63FC 20 27         [12]  485 	jr	NZ,00109$
                            486 ;src/main.c:262: puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
   63FE 21 67 62      [10]  487 	ld	hl, #_Power + 1
   6401 46            [ 7]  488 	ld	b,(hl)
   6402 1A            [ 7]  489 	ld	a,(de)
   6403 D5            [11]  490 	push	de
   6404 C5            [11]  491 	push	bc
   6405 33            [ 6]  492 	inc	sp
   6406 F5            [11]  493 	push	af
   6407 33            [ 6]  494 	inc	sp
   6408 21 00 C0      [10]  495 	ld	hl,#0xC000
   640B E5            [11]  496 	push	hl
   640C CD 1E 91      [17]  497 	call	_cpct_getScreenPtr
   640F D1            [10]  498 	pop	de
   6410 4D            [ 4]  499 	ld	c, l
   6411 44            [ 4]  500 	ld	b, h
                            501 ;src/main.c:263: cpct_drawSolidBox(puntMem,0,Power.w,Power.h);
   6412 3A 69 62      [13]  502 	ld	a, (#_Power + 3)
   6415 EB            [ 4]  503 	ex	de,hl
   6416 23            [ 6]  504 	inc	hl
   6417 23            [ 6]  505 	inc	hl
   6418 5E            [ 7]  506 	ld	e,(hl)
   6419 57            [ 4]  507 	ld	d,a
   641A D5            [11]  508 	push	de
   641B AF            [ 4]  509 	xor	a, a
   641C F5            [11]  510 	push	af
   641D 33            [ 6]  511 	inc	sp
   641E C5            [11]  512 	push	bc
   641F CD 45 90      [17]  513 	call	_cpct_drawSolidBox
   6422 F1            [10]  514 	pop	af
   6423 F1            [10]  515 	pop	af
   6424 33            [ 6]  516 	inc	sp
   6425                     517 00109$:
                            518 ;src/main.c:265: if(Mierda.cogido && !Mierda.borrado){
   6425 11 6F 62      [10]  519 	ld	de,#_Mierda+0
   6428 3A 77 62      [13]  520 	ld	a, (#_Mierda + 8)
   642B B7            [ 4]  521 	or	a, a
   642C C8            [11]  522 	ret	Z
   642D 3A 76 62      [13]  523 	ld	a, (#_Mierda + 7)
   6430 B7            [ 4]  524 	or	a, a
   6431 C0            [11]  525 	ret	NZ
                            526 ;src/main.c:266: puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
   6432 21 70 62      [10]  527 	ld	hl, #_Mierda + 1
   6435 46            [ 7]  528 	ld	b,(hl)
   6436 1A            [ 7]  529 	ld	a,(de)
   6437 D5            [11]  530 	push	de
   6438 C5            [11]  531 	push	bc
   6439 33            [ 6]  532 	inc	sp
   643A F5            [11]  533 	push	af
   643B 33            [ 6]  534 	inc	sp
   643C 21 00 C0      [10]  535 	ld	hl,#0xC000
   643F E5            [11]  536 	push	hl
   6440 CD 1E 91      [17]  537 	call	_cpct_getScreenPtr
   6443 D1            [10]  538 	pop	de
   6444 4D            [ 4]  539 	ld	c, l
   6445 44            [ 4]  540 	ld	b, h
                            541 ;src/main.c:267: cpct_drawSolidBox(puntMem,0,Mierda.w,Mierda.h);
   6446 3A 72 62      [13]  542 	ld	a, (#_Mierda + 3)
   6449 EB            [ 4]  543 	ex	de,hl
   644A 23            [ 6]  544 	inc	hl
   644B 23            [ 6]  545 	inc	hl
   644C 5E            [ 7]  546 	ld	e,(hl)
   644D 57            [ 4]  547 	ld	d,a
   644E D5            [11]  548 	push	de
   644F AF            [ 4]  549 	xor	a, a
   6450 F5            [11]  550 	push	af
   6451 33            [ 6]  551 	inc	sp
   6452 C5            [11]  552 	push	bc
   6453 CD 45 90      [17]  553 	call	_cpct_drawSolidBox
   6456 F1            [10]  554 	pop	af
   6457 F1            [10]  555 	pop	af
   6458 33            [ 6]  556 	inc	sp
   6459 C9            [10]  557 	ret
                            558 ;src/main.c:277: u16 myTile(u8 x, u8 y) {
                            559 ;	---------------------------------
                            560 ; Function myTile
                            561 ; ---------------------------------
   645A                     562 _myTile::
   645A DD E5         [15]  563 	push	ix
   645C DD 21 00 00   [14]  564 	ld	ix,#0
   6460 DD 39         [15]  565 	add	ix,sp
                            566 ;src/main.c:278: u8 tx = x / 2;
   6462 DD 5E 04      [19]  567 	ld	e,4 (ix)
   6465 CB 3B         [ 8]  568 	srl	e
                            569 ;src/main.c:279: u8 ty = y / 4;
   6467 DD 7E 05      [19]  570 	ld	a,5 (ix)
   646A 0F            [ 4]  571 	rrca
   646B 0F            [ 4]  572 	rrca
   646C E6 3F         [ 7]  573 	and	a,#0x3F
                            574 ;src/main.c:280: return ty*40 + tx;
   646E 4F            [ 4]  575 	ld	c,a
   646F 06 00         [ 7]  576 	ld	b,#0x00
   6471 69            [ 4]  577 	ld	l, c
   6472 60            [ 4]  578 	ld	h, b
   6473 29            [11]  579 	add	hl, hl
   6474 29            [11]  580 	add	hl, hl
   6475 09            [11]  581 	add	hl, bc
   6476 29            [11]  582 	add	hl, hl
   6477 29            [11]  583 	add	hl, hl
   6478 29            [11]  584 	add	hl, hl
   6479 16 00         [ 7]  585 	ld	d,#0x00
   647B 19            [11]  586 	add	hl,de
   647C DD E1         [14]  587 	pop	ix
   647E C9            [10]  588 	ret
                            589 ;src/main.c:283: u8 mapActPosition(u16 position){
                            590 ;	---------------------------------
                            591 ; Function mapActPosition
                            592 ; ---------------------------------
   647F                     593 _mapActPosition::
   647F 3B            [ 6]  594 	dec	sp
                            595 ;src/main.c:286: if(Personaje.nivel==1){
   6480 21 58 62      [10]  596 	ld	hl,#_Personaje+19
   6483 4E            [ 7]  597 	ld	c,(hl)
   6484 79            [ 4]  598 	ld	a,c
   6485 3D            [ 4]  599 	dec	a
   6486 20 10         [12]  600 	jr	NZ,00107$
                            601 ;src/main.c:288: pos=g_tilemap[position];
   6488 3E B2         [ 7]  602 	ld	a,#<(_g_tilemap)
   648A 21 03 00      [10]  603 	ld	hl,#3
   648D 39            [11]  604 	add	hl,sp
   648E 86            [ 7]  605 	add	a, (hl)
   648F 5F            [ 4]  606 	ld	e,a
   6490 3E 41         [ 7]  607 	ld	a,#>(_g_tilemap)
   6492 23            [ 6]  608 	inc	hl
   6493 8E            [ 7]  609 	adc	a, (hl)
   6494 57            [ 4]  610 	ld	d,a
   6495 1A            [ 7]  611 	ld	a,(de)
   6496 18 28         [12]  612 	jr	00108$
   6498                     613 00107$:
                            614 ;src/main.c:290: }else if(Personaje.nivel==2){
   6498 79            [ 4]  615 	ld	a,c
   6499 D6 02         [ 7]  616 	sub	a, #0x02
   649B 20 10         [12]  617 	jr	NZ,00104$
                            618 ;src/main.c:292: pos=g_tilemap2[position];
   649D 3E 82         [ 7]  619 	ld	a,#<(_g_tilemap2)
   649F 21 03 00      [10]  620 	ld	hl,#3
   64A2 39            [11]  621 	add	hl,sp
   64A3 86            [ 7]  622 	add	a, (hl)
   64A4 5F            [ 4]  623 	ld	e,a
   64A5 3E 49         [ 7]  624 	ld	a,#>(_g_tilemap2)
   64A7 23            [ 6]  625 	inc	hl
   64A8 8E            [ 7]  626 	adc	a, (hl)
   64A9 57            [ 4]  627 	ld	d,a
   64AA 1A            [ 7]  628 	ld	a,(de)
   64AB 18 13         [12]  629 	jr	00108$
   64AD                     630 00104$:
                            631 ;src/main.c:294: }else if(Personaje.nivel==3){
   64AD 79            [ 4]  632 	ld	a,c
   64AE D6 03         [ 7]  633 	sub	a, #0x03
   64B0 20 0E         [12]  634 	jr	NZ,00108$
                            635 ;src/main.c:296: pos=g_tilemap3[position];
   64B2 3E 52         [ 7]  636 	ld	a,#<(_g_tilemap3)
   64B4 21 03 00      [10]  637 	ld	hl,#3
   64B7 39            [11]  638 	add	hl,sp
   64B8 86            [ 7]  639 	add	a, (hl)
   64B9 5F            [ 4]  640 	ld	e,a
   64BA 3E 51         [ 7]  641 	ld	a,#>(_g_tilemap3)
   64BC 23            [ 6]  642 	inc	hl
   64BD 8E            [ 7]  643 	adc	a, (hl)
   64BE 57            [ 4]  644 	ld	d,a
   64BF 1A            [ 7]  645 	ld	a,(de)
   64C0                     646 00108$:
                            647 ;src/main.c:299: return pos;
   64C0 6F            [ 4]  648 	ld	l,a
   64C1 33            [ 6]  649 	inc	sp
   64C2 C9            [10]  650 	ret
                            651 ;src/main.c:306: void ComprobarTeclado(TEntity *player){
                            652 ;	---------------------------------
                            653 ; Function ComprobarTeclado
                            654 ; ---------------------------------
   64C3                     655 _ComprobarTeclado::
   64C3 DD E5         [15]  656 	push	ix
   64C5 DD 21 00 00   [14]  657 	ld	ix,#0
   64C9 DD 39         [15]  658 	add	ix,sp
   64CB 21 F4 FF      [10]  659 	ld	hl,#-12
   64CE 39            [11]  660 	add	hl,sp
   64CF F9            [ 6]  661 	ld	sp,hl
                            662 ;src/main.c:310: player->change=0;
   64D0 DD 7E 04      [19]  663 	ld	a,4 (ix)
   64D3 DD 77 F4      [19]  664 	ld	-12 (ix),a
   64D6 DD 7E 05      [19]  665 	ld	a,5 (ix)
   64D9 DD 77 F5      [19]  666 	ld	-11 (ix),a
   64DC DD 7E F4      [19]  667 	ld	a,-12 (ix)
   64DF C6 12         [ 7]  668 	add	a, #0x12
   64E1 DD 77 FC      [19]  669 	ld	-4 (ix),a
   64E4 DD 7E F5      [19]  670 	ld	a,-11 (ix)
   64E7 CE 00         [ 7]  671 	adc	a, #0x00
   64E9 DD 77 FD      [19]  672 	ld	-3 (ix),a
   64EC DD 6E FC      [19]  673 	ld	l,-4 (ix)
   64EF DD 66 FD      [19]  674 	ld	h,-3 (ix)
   64F2 36 00         [10]  675 	ld	(hl),#0x00
                            676 ;src/main.c:311: player->x=player->nx;
   64F4 DD 7E F4      [19]  677 	ld	a,-12 (ix)
   64F7 C6 02         [ 7]  678 	add	a, #0x02
   64F9 DD 77 F6      [19]  679 	ld	-10 (ix),a
   64FC DD 7E F5      [19]  680 	ld	a,-11 (ix)
   64FF CE 00         [ 7]  681 	adc	a, #0x00
   6501 DD 77 F7      [19]  682 	ld	-9 (ix),a
   6504 DD 6E F6      [19]  683 	ld	l,-10 (ix)
   6507 DD 66 F7      [19]  684 	ld	h,-9 (ix)
   650A 7E            [ 7]  685 	ld	a,(hl)
   650B E1            [10]  686 	pop	hl
   650C E5            [11]  687 	push	hl
   650D 77            [ 7]  688 	ld	(hl),a
                            689 ;src/main.c:312: player->y=player->ny;
   650E D1            [10]  690 	pop	de
   650F D5            [11]  691 	push	de
   6510 13            [ 6]  692 	inc	de
   6511 DD 7E F4      [19]  693 	ld	a,-12 (ix)
   6514 C6 03         [ 7]  694 	add	a, #0x03
   6516 DD 77 FE      [19]  695 	ld	-2 (ix),a
   6519 DD 7E F5      [19]  696 	ld	a,-11 (ix)
   651C CE 00         [ 7]  697 	adc	a, #0x00
   651E DD 77 FF      [19]  698 	ld	-1 (ix),a
   6521 DD 6E FE      [19]  699 	ld	l,-2 (ix)
   6524 DD 66 FF      [19]  700 	ld	h,-1 (ix)
   6527 7E            [ 7]  701 	ld	a,(hl)
   6528 12            [ 7]  702 	ld	(de),a
                            703 ;src/main.c:313: player->eantx=player->ex;
   6529 DD 7E F4      [19]  704 	ld	a,-12 (ix)
   652C C6 0C         [ 7]  705 	add	a, #0x0C
   652E 5F            [ 4]  706 	ld	e,a
   652F DD 7E F5      [19]  707 	ld	a,-11 (ix)
   6532 CE 00         [ 7]  708 	adc	a, #0x00
   6534 57            [ 4]  709 	ld	d,a
   6535 DD 7E F4      [19]  710 	ld	a,-12 (ix)
   6538 C6 0A         [ 7]  711 	add	a, #0x0A
   653A DD 77 FA      [19]  712 	ld	-6 (ix),a
   653D DD 7E F5      [19]  713 	ld	a,-11 (ix)
   6540 CE 00         [ 7]  714 	adc	a, #0x00
   6542 DD 77 FB      [19]  715 	ld	-5 (ix),a
   6545 DD 6E FA      [19]  716 	ld	l,-6 (ix)
   6548 DD 66 FB      [19]  717 	ld	h,-5 (ix)
   654B 7E            [ 7]  718 	ld	a,(hl)
   654C 12            [ 7]  719 	ld	(de),a
                            720 ;src/main.c:314: player->eanty=player->ey;
   654D DD 7E F4      [19]  721 	ld	a,-12 (ix)
   6550 C6 0D         [ 7]  722 	add	a, #0x0D
   6552 5F            [ 4]  723 	ld	e,a
   6553 DD 7E F5      [19]  724 	ld	a,-11 (ix)
   6556 CE 00         [ 7]  725 	adc	a, #0x00
   6558 57            [ 4]  726 	ld	d,a
   6559 DD 7E F4      [19]  727 	ld	a,-12 (ix)
   655C C6 0B         [ 7]  728 	add	a, #0x0B
   655E DD 77 F8      [19]  729 	ld	-8 (ix),a
   6561 DD 7E F5      [19]  730 	ld	a,-11 (ix)
   6564 CE 00         [ 7]  731 	adc	a, #0x00
   6566 DD 77 F9      [19]  732 	ld	-7 (ix),a
   6569 DD 6E F8      [19]  733 	ld	l,-8 (ix)
   656C DD 66 F9      [19]  734 	ld	h,-7 (ix)
   656F 7E            [ 7]  735 	ld	a,(hl)
   6570 12            [ 7]  736 	ld	(de),a
                            737 ;src/main.c:317: cpct_scanKeyboard_f();
   6571 CD 10 85      [17]  738 	call	_cpct_scanKeyboard_f
                            739 ;src/main.c:318: if(cpct_isAnyKeyPressed_f()){
   6574 CD 08 90      [17]  740 	call	_cpct_isAnyKeyPressed_f
   6577 7D            [ 4]  741 	ld	a, l
   6578 B7            [ 4]  742 	or	a, a
   6579 CA EC 69      [10]  743 	jp	Z,00157$
                            744 ;src/main.c:321: if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==2 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==2 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==2 && Personaje.nivel==1){
   657C 21 00 02      [10]  745 	ld	hl,#0x0200
   657F CD 04 85      [17]  746 	call	_cpct_isKeyPressed
   6582 7D            [ 4]  747 	ld	a,l
   6583 B7            [ 4]  748 	or	a, a
   6584 28 73         [12]  749 	jr	Z,00102$
   6586 21 48 62      [10]  750 	ld	hl, #(_Personaje + 0x0003) + 0
   6589 56            [ 7]  751 	ld	d,(hl)
   658A 3A 47 62      [13]  752 	ld	a, (#(_Personaje + 0x0002) + 0)
   658D D5            [11]  753 	push	de
   658E 33            [ 6]  754 	inc	sp
   658F F5            [11]  755 	push	af
   6590 33            [ 6]  756 	inc	sp
   6591 CD 5A 64      [17]  757 	call	_myTile
   6594 F1            [10]  758 	pop	af
   6595 01 05 00      [10]  759 	ld	bc,#0x0005
   6598 09            [11]  760 	add	hl,bc
   6599 E5            [11]  761 	push	hl
   659A CD 7F 64      [17]  762 	call	_mapActPosition
   659D F1            [10]  763 	pop	af
   659E 7D            [ 4]  764 	ld	a,l
   659F D6 02         [ 7]  765 	sub	a, #0x02
   65A1 20 56         [12]  766 	jr	NZ,00102$
   65A3 21 48 62      [10]  767 	ld	hl, #(_Personaje + 0x0003) + 0
   65A6 56            [ 7]  768 	ld	d,(hl)
   65A7 3A 47 62      [13]  769 	ld	a, (#(_Personaje + 0x0002) + 0)
   65AA D5            [11]  770 	push	de
   65AB 33            [ 6]  771 	inc	sp
   65AC F5            [11]  772 	push	af
   65AD 33            [ 6]  773 	inc	sp
   65AE CD 5A 64      [17]  774 	call	_myTile
   65B1 F1            [10]  775 	pop	af
   65B2 01 55 00      [10]  776 	ld	bc,#0x0055
   65B5 09            [11]  777 	add	hl,bc
   65B6 E5            [11]  778 	push	hl
   65B7 CD 7F 64      [17]  779 	call	_mapActPosition
   65BA F1            [10]  780 	pop	af
   65BB 7D            [ 4]  781 	ld	a,l
   65BC D6 02         [ 7]  782 	sub	a, #0x02
   65BE 20 39         [12]  783 	jr	NZ,00102$
   65C0 21 48 62      [10]  784 	ld	hl, #(_Personaje + 0x0003) + 0
   65C3 56            [ 7]  785 	ld	d,(hl)
   65C4 3A 47 62      [13]  786 	ld	a, (#(_Personaje + 0x0002) + 0)
   65C7 D5            [11]  787 	push	de
   65C8 33            [ 6]  788 	inc	sp
   65C9 F5            [11]  789 	push	af
   65CA 33            [ 6]  790 	inc	sp
   65CB CD 5A 64      [17]  791 	call	_myTile
   65CE F1            [10]  792 	pop	af
   65CF 01 A5 00      [10]  793 	ld	bc,#0x00A5
   65D2 09            [11]  794 	add	hl,bc
   65D3 E5            [11]  795 	push	hl
   65D4 CD 7F 64      [17]  796 	call	_mapActPosition
   65D7 F1            [10]  797 	pop	af
   65D8 7D            [ 4]  798 	ld	a,l
   65D9 D6 02         [ 7]  799 	sub	a, #0x02
   65DB 20 1C         [12]  800 	jr	NZ,00102$
   65DD 11 58 62      [10]  801 	ld	de,#_Personaje + 19
   65E0 1A            [ 7]  802 	ld	a,(de)
   65E1 3D            [ 4]  803 	dec	a
   65E2 20 15         [12]  804 	jr	NZ,00102$
                            805 ;src/main.c:323: player->nivel=2;
   65E4 DD 7E F4      [19]  806 	ld	a,-12 (ix)
   65E7 C6 13         [ 7]  807 	add	a, #0x13
   65E9 6F            [ 4]  808 	ld	l,a
   65EA DD 7E F5      [19]  809 	ld	a,-11 (ix)
   65ED CE 00         [ 7]  810 	adc	a, #0x00
   65EF 67            [ 4]  811 	ld	h,a
   65F0 36 02         [10]  812 	ld	(hl),#0x02
                            813 ;src/main.c:324: CargarLevel(Personaje.nivel);
   65F2 1A            [ 7]  814 	ld	a,(de)
   65F3 F5            [11]  815 	push	af
   65F4 33            [ 6]  816 	inc	sp
   65F5 CD 93 62      [17]  817 	call	_CargarLevel
   65F8 33            [ 6]  818 	inc	sp
   65F9                     819 00102$:
                            820 ;src/main.c:328: if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==0 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==0){
   65F9 21 00 02      [10]  821 	ld	hl,#0x0200
   65FC CD 04 85      [17]  822 	call	_cpct_isKeyPressed
   65FF 7D            [ 4]  823 	ld	a, l
   6600 B7            [ 4]  824 	or	a, a
   6601 28 6E         [12]  825 	jr	Z,00113$
   6603 21 48 62      [10]  826 	ld	hl, #(_Personaje + 0x0003) + 0
   6606 56            [ 7]  827 	ld	d,(hl)
   6607 3A 47 62      [13]  828 	ld	a, (#(_Personaje + 0x0002) + 0)
   660A D5            [11]  829 	push	de
   660B 33            [ 6]  830 	inc	sp
   660C F5            [11]  831 	push	af
   660D 33            [ 6]  832 	inc	sp
   660E CD 5A 64      [17]  833 	call	_myTile
   6611 F1            [10]  834 	pop	af
   6612 01 05 00      [10]  835 	ld	bc,#0x0005
   6615 09            [11]  836 	add	hl,bc
   6616 E5            [11]  837 	push	hl
   6617 CD 7F 64      [17]  838 	call	_mapActPosition
   661A F1            [10]  839 	pop	af
   661B 7D            [ 4]  840 	ld	a,l
   661C B7            [ 4]  841 	or	a, a
   661D 20 52         [12]  842 	jr	NZ,00113$
   661F 21 48 62      [10]  843 	ld	hl, #(_Personaje + 0x0003) + 0
   6622 56            [ 7]  844 	ld	d,(hl)
   6623 3A 47 62      [13]  845 	ld	a, (#(_Personaje + 0x0002) + 0)
   6626 D5            [11]  846 	push	de
   6627 33            [ 6]  847 	inc	sp
   6628 F5            [11]  848 	push	af
   6629 33            [ 6]  849 	inc	sp
   662A CD 5A 64      [17]  850 	call	_myTile
   662D F1            [10]  851 	pop	af
   662E 01 55 00      [10]  852 	ld	bc,#0x0055
   6631 09            [11]  853 	add	hl,bc
   6632 E5            [11]  854 	push	hl
   6633 CD 7F 64      [17]  855 	call	_mapActPosition
   6636 F1            [10]  856 	pop	af
   6637 7D            [ 4]  857 	ld	a,l
   6638 B7            [ 4]  858 	or	a, a
   6639 20 36         [12]  859 	jr	NZ,00113$
   663B 21 48 62      [10]  860 	ld	hl, #(_Personaje + 0x0003) + 0
   663E 56            [ 7]  861 	ld	d,(hl)
   663F 3A 47 62      [13]  862 	ld	a, (#(_Personaje + 0x0002) + 0)
   6642 D5            [11]  863 	push	de
   6643 33            [ 6]  864 	inc	sp
   6644 F5            [11]  865 	push	af
   6645 33            [ 6]  866 	inc	sp
   6646 CD 5A 64      [17]  867 	call	_myTile
   6649 F1            [10]  868 	pop	af
   664A 01 A5 00      [10]  869 	ld	bc,#0x00A5
   664D 09            [11]  870 	add	hl,bc
   664E E5            [11]  871 	push	hl
   664F CD 7F 64      [17]  872 	call	_mapActPosition
   6652 F1            [10]  873 	pop	af
   6653 7D            [ 4]  874 	ld	a,l
   6654 B7            [ 4]  875 	or	a, a
   6655 20 1A         [12]  876 	jr	NZ,00113$
                            877 ;src/main.c:329: player->nx+=2;
   6657 DD 6E F6      [19]  878 	ld	l,-10 (ix)
   665A DD 66 F7      [19]  879 	ld	h,-9 (ix)
   665D 7E            [ 7]  880 	ld	a,(hl)
   665E C6 02         [ 7]  881 	add	a, #0x02
   6660 DD 6E F6      [19]  882 	ld	l,-10 (ix)
   6663 DD 66 F7      [19]  883 	ld	h,-9 (ix)
   6666 77            [ 7]  884 	ld	(hl),a
                            885 ;src/main.c:330: player->change=1;
   6667 DD 6E FC      [19]  886 	ld	l,-4 (ix)
   666A DD 66 FD      [19]  887 	ld	h,-3 (ix)
   666D 36 01         [10]  888 	ld	(hl),#0x01
   666F 18 73         [12]  889 	jr	00114$
   6671                     890 00113$:
                            891 ;src/main.c:333: else if(cpct_isKeyPressed(Key_CursorLeft) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-1)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+79)==0  && mapActPosition(myTile(Personaje.nx,Personaje.ny)+159)==0 ){
   6671 21 01 01      [10]  892 	ld	hl,#0x0101
   6674 CD 04 85      [17]  893 	call	_cpct_isKeyPressed
   6677 7D            [ 4]  894 	ld	a,l
   6678 B7            [ 4]  895 	or	a, a
   6679 28 69         [12]  896 	jr	Z,00114$
   667B 21 48 62      [10]  897 	ld	hl, #(_Personaje + 0x0003) + 0
   667E 56            [ 7]  898 	ld	d,(hl)
   667F 3A 47 62      [13]  899 	ld	a, (#(_Personaje + 0x0002) + 0)
   6682 D5            [11]  900 	push	de
   6683 33            [ 6]  901 	inc	sp
   6684 F5            [11]  902 	push	af
   6685 33            [ 6]  903 	inc	sp
   6686 CD 5A 64      [17]  904 	call	_myTile
   6689 F1            [10]  905 	pop	af
   668A 2B            [ 6]  906 	dec	hl
   668B E5            [11]  907 	push	hl
   668C CD 7F 64      [17]  908 	call	_mapActPosition
   668F F1            [10]  909 	pop	af
   6690 7D            [ 4]  910 	ld	a,l
   6691 B7            [ 4]  911 	or	a, a
   6692 20 50         [12]  912 	jr	NZ,00114$
   6694 21 48 62      [10]  913 	ld	hl, #(_Personaje + 0x0003) + 0
   6697 56            [ 7]  914 	ld	d,(hl)
   6698 3A 47 62      [13]  915 	ld	a, (#(_Personaje + 0x0002) + 0)
   669B D5            [11]  916 	push	de
   669C 33            [ 6]  917 	inc	sp
   669D F5            [11]  918 	push	af
   669E 33            [ 6]  919 	inc	sp
   669F CD 5A 64      [17]  920 	call	_myTile
   66A2 F1            [10]  921 	pop	af
   66A3 01 4F 00      [10]  922 	ld	bc,#0x004F
   66A6 09            [11]  923 	add	hl,bc
   66A7 E5            [11]  924 	push	hl
   66A8 CD 7F 64      [17]  925 	call	_mapActPosition
   66AB F1            [10]  926 	pop	af
   66AC 7D            [ 4]  927 	ld	a,l
   66AD B7            [ 4]  928 	or	a, a
   66AE 20 34         [12]  929 	jr	NZ,00114$
   66B0 21 48 62      [10]  930 	ld	hl, #(_Personaje + 0x0003) + 0
   66B3 56            [ 7]  931 	ld	d,(hl)
   66B4 3A 47 62      [13]  932 	ld	a, (#(_Personaje + 0x0002) + 0)
   66B7 D5            [11]  933 	push	de
   66B8 33            [ 6]  934 	inc	sp
   66B9 F5            [11]  935 	push	af
   66BA 33            [ 6]  936 	inc	sp
   66BB CD 5A 64      [17]  937 	call	_myTile
   66BE F1            [10]  938 	pop	af
   66BF 01 9F 00      [10]  939 	ld	bc,#0x009F
   66C2 09            [11]  940 	add	hl,bc
   66C3 E5            [11]  941 	push	hl
   66C4 CD 7F 64      [17]  942 	call	_mapActPosition
   66C7 F1            [10]  943 	pop	af
   66C8 7D            [ 4]  944 	ld	a,l
   66C9 B7            [ 4]  945 	or	a, a
   66CA 20 18         [12]  946 	jr	NZ,00114$
                            947 ;src/main.c:334: player->nx-=2;
   66CC DD 6E F6      [19]  948 	ld	l,-10 (ix)
   66CF DD 66 F7      [19]  949 	ld	h,-9 (ix)
   66D2 7E            [ 7]  950 	ld	a,(hl)
   66D3 C6 FE         [ 7]  951 	add	a,#0xFE
   66D5 DD 6E F6      [19]  952 	ld	l,-10 (ix)
   66D8 DD 66 F7      [19]  953 	ld	h,-9 (ix)
   66DB 77            [ 7]  954 	ld	(hl),a
                            955 ;src/main.c:335: player->change=1;
   66DC DD 6E FC      [19]  956 	ld	l,-4 (ix)
   66DF DD 66 FD      [19]  957 	ld	h,-3 (ix)
   66E2 36 01         [10]  958 	ld	(hl),#0x01
   66E4                     959 00114$:
                            960 ;src/main.c:338: if(cpct_isKeyPressed(Key_CursorUp) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-40)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-38)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-36)==0){
   66E4 21 00 01      [10]  961 	ld	hl,#0x0100
   66E7 CD 04 85      [17]  962 	call	_cpct_isKeyPressed
   66EA 7D            [ 4]  963 	ld	a,l
   66EB B7            [ 4]  964 	or	a, a
   66EC 28 78         [12]  965 	jr	Z,00124$
   66EE 21 48 62      [10]  966 	ld	hl, #(_Personaje + 0x0003) + 0
   66F1 56            [ 7]  967 	ld	d,(hl)
   66F2 3A 47 62      [13]  968 	ld	a, (#(_Personaje + 0x0002) + 0)
   66F5 D5            [11]  969 	push	de
   66F6 33            [ 6]  970 	inc	sp
   66F7 F5            [11]  971 	push	af
   66F8 33            [ 6]  972 	inc	sp
   66F9 CD 5A 64      [17]  973 	call	_myTile
   66FC F1            [10]  974 	pop	af
   66FD 7D            [ 4]  975 	ld	a,l
   66FE C6 D8         [ 7]  976 	add	a,#0xD8
   6700 6F            [ 4]  977 	ld	l,a
   6701 7C            [ 4]  978 	ld	a,h
   6702 CE FF         [ 7]  979 	adc	a,#0xFF
   6704 67            [ 4]  980 	ld	h,a
   6705 E5            [11]  981 	push	hl
   6706 CD 7F 64      [17]  982 	call	_mapActPosition
   6709 F1            [10]  983 	pop	af
   670A 7D            [ 4]  984 	ld	a,l
   670B B7            [ 4]  985 	or	a, a
   670C 20 58         [12]  986 	jr	NZ,00124$
   670E 3A 48 62      [13]  987 	ld	a, (#(_Personaje + 0x0003) + 0)
   6711 21 47 62      [10]  988 	ld	hl, #(_Personaje + 0x0002) + 0
   6714 56            [ 7]  989 	ld	d,(hl)
   6715 F5            [11]  990 	push	af
   6716 33            [ 6]  991 	inc	sp
   6717 D5            [11]  992 	push	de
   6718 33            [ 6]  993 	inc	sp
   6719 CD 5A 64      [17]  994 	call	_myTile
   671C F1            [10]  995 	pop	af
   671D 7D            [ 4]  996 	ld	a,l
   671E C6 DA         [ 7]  997 	add	a,#0xDA
   6720 6F            [ 4]  998 	ld	l,a
   6721 7C            [ 4]  999 	ld	a,h
   6722 CE FF         [ 7] 1000 	adc	a,#0xFF
   6724 67            [ 4] 1001 	ld	h,a
   6725 E5            [11] 1002 	push	hl
   6726 CD 7F 64      [17] 1003 	call	_mapActPosition
   6729 F1            [10] 1004 	pop	af
   672A 7D            [ 4] 1005 	ld	a,l
   672B B7            [ 4] 1006 	or	a, a
   672C 20 38         [12] 1007 	jr	NZ,00124$
   672E 3A 48 62      [13] 1008 	ld	a, (#(_Personaje + 0x0003) + 0)
   6731 21 47 62      [10] 1009 	ld	hl, #(_Personaje + 0x0002) + 0
   6734 5E            [ 7] 1010 	ld	e,(hl)
   6735 57            [ 4] 1011 	ld	d,a
   6736 D5            [11] 1012 	push	de
   6737 CD 5A 64      [17] 1013 	call	_myTile
   673A F1            [10] 1014 	pop	af
   673B 7D            [ 4] 1015 	ld	a,l
   673C C6 DC         [ 7] 1016 	add	a,#0xDC
   673E 6F            [ 4] 1017 	ld	l,a
   673F 7C            [ 4] 1018 	ld	a,h
   6740 CE FF         [ 7] 1019 	adc	a,#0xFF
   6742 67            [ 4] 1020 	ld	h,a
   6743 E5            [11] 1021 	push	hl
   6744 CD 7F 64      [17] 1022 	call	_mapActPosition
   6747 F1            [10] 1023 	pop	af
   6748 7D            [ 4] 1024 	ld	a,l
   6749 B7            [ 4] 1025 	or	a, a
   674A 20 1A         [12] 1026 	jr	NZ,00124$
                           1027 ;src/main.c:339: player->ny-=4;
   674C DD 6E FE      [19] 1028 	ld	l,-2 (ix)
   674F DD 66 FF      [19] 1029 	ld	h,-1 (ix)
   6752 7E            [ 7] 1030 	ld	a,(hl)
   6753 C6 FC         [ 7] 1031 	add	a,#0xFC
   6755 DD 6E FE      [19] 1032 	ld	l,-2 (ix)
   6758 DD 66 FF      [19] 1033 	ld	h,-1 (ix)
   675B 77            [ 7] 1034 	ld	(hl),a
                           1035 ;src/main.c:340: player->change=1;
   675C DD 6E FC      [19] 1036 	ld	l,-4 (ix)
   675F DD 66 FD      [19] 1037 	ld	h,-3 (ix)
   6762 36 01         [10] 1038 	ld	(hl),#0x01
   6764 18 74         [12] 1039 	jr	00125$
   6766                    1040 00124$:
                           1041 ;src/main.c:343: else if(cpct_isKeyPressed(Key_CursorDown) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+200)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+202)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+204)==0 ){
   6766 21 00 04      [10] 1042 	ld	hl,#0x0400
   6769 CD 04 85      [17] 1043 	call	_cpct_isKeyPressed
   676C 7D            [ 4] 1044 	ld	a,l
   676D B7            [ 4] 1045 	or	a, a
   676E 28 6A         [12] 1046 	jr	Z,00125$
   6770 21 48 62      [10] 1047 	ld	hl, #(_Personaje + 0x0003) + 0
   6773 56            [ 7] 1048 	ld	d,(hl)
   6774 3A 47 62      [13] 1049 	ld	a, (#(_Personaje + 0x0002) + 0)
   6777 D5            [11] 1050 	push	de
   6778 33            [ 6] 1051 	inc	sp
   6779 F5            [11] 1052 	push	af
   677A 33            [ 6] 1053 	inc	sp
   677B CD 5A 64      [17] 1054 	call	_myTile
   677E F1            [10] 1055 	pop	af
   677F 01 C8 00      [10] 1056 	ld	bc,#0x00C8
   6782 09            [11] 1057 	add	hl,bc
   6783 E5            [11] 1058 	push	hl
   6784 CD 7F 64      [17] 1059 	call	_mapActPosition
   6787 F1            [10] 1060 	pop	af
   6788 7D            [ 4] 1061 	ld	a,l
   6789 B7            [ 4] 1062 	or	a, a
   678A 20 4E         [12] 1063 	jr	NZ,00125$
   678C 3A 48 62      [13] 1064 	ld	a, (#(_Personaje + 0x0003) + 0)
   678F 21 47 62      [10] 1065 	ld	hl, #(_Personaje + 0x0002) + 0
   6792 56            [ 7] 1066 	ld	d,(hl)
   6793 F5            [11] 1067 	push	af
   6794 33            [ 6] 1068 	inc	sp
   6795 D5            [11] 1069 	push	de
   6796 33            [ 6] 1070 	inc	sp
   6797 CD 5A 64      [17] 1071 	call	_myTile
   679A F1            [10] 1072 	pop	af
   679B 01 CA 00      [10] 1073 	ld	bc,#0x00CA
   679E 09            [11] 1074 	add	hl,bc
   679F E5            [11] 1075 	push	hl
   67A0 CD 7F 64      [17] 1076 	call	_mapActPosition
   67A3 F1            [10] 1077 	pop	af
   67A4 7D            [ 4] 1078 	ld	a,l
   67A5 B7            [ 4] 1079 	or	a, a
   67A6 20 32         [12] 1080 	jr	NZ,00125$
   67A8 3A 48 62      [13] 1081 	ld	a, (#(_Personaje + 0x0003) + 0)
   67AB 21 47 62      [10] 1082 	ld	hl, #(_Personaje + 0x0002) + 0
   67AE 5E            [ 7] 1083 	ld	e,(hl)
   67AF 57            [ 4] 1084 	ld	d,a
   67B0 D5            [11] 1085 	push	de
   67B1 CD 5A 64      [17] 1086 	call	_myTile
   67B4 F1            [10] 1087 	pop	af
   67B5 01 CC 00      [10] 1088 	ld	bc,#0x00CC
   67B8 09            [11] 1089 	add	hl,bc
   67B9 E5            [11] 1090 	push	hl
   67BA CD 7F 64      [17] 1091 	call	_mapActPosition
   67BD F1            [10] 1092 	pop	af
   67BE 7D            [ 4] 1093 	ld	a,l
   67BF B7            [ 4] 1094 	or	a, a
   67C0 20 18         [12] 1095 	jr	NZ,00125$
                           1096 ;src/main.c:344: player->ny+=4;
   67C2 DD 6E FE      [19] 1097 	ld	l,-2 (ix)
   67C5 DD 66 FF      [19] 1098 	ld	h,-1 (ix)
   67C8 7E            [ 7] 1099 	ld	a,(hl)
   67C9 C6 04         [ 7] 1100 	add	a, #0x04
   67CB DD 6E FE      [19] 1101 	ld	l,-2 (ix)
   67CE DD 66 FF      [19] 1102 	ld	h,-1 (ix)
   67D1 77            [ 7] 1103 	ld	(hl),a
                           1104 ;src/main.c:345: player->change=1;
   67D2 DD 6E FC      [19] 1105 	ld	l,-4 (ix)
   67D5 DD 66 FD      [19] 1106 	ld	h,-3 (ix)
   67D8 36 01         [10] 1107 	ld	(hl),#0x01
   67DA                    1108 00125$:
                           1109 ;src/main.c:347: if(cpct_isKeyPressed(Key_W) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny-8))==0){
   67DA 21 07 08      [10] 1110 	ld	hl,#0x0807
   67DD CD 04 85      [17] 1111 	call	_cpct_isKeyPressed
                           1112 ;src/main.c:348: if(player->senpuesto==0){
   67E0 DD 7E F4      [19] 1113 	ld	a,-12 (ix)
   67E3 C6 14         [ 7] 1114 	add	a, #0x14
   67E5 5F            [ 4] 1115 	ld	e,a
   67E6 DD 7E F5      [19] 1116 	ld	a,-11 (ix)
   67E9 CE 00         [ 7] 1117 	adc	a, #0x00
   67EB 57            [ 4] 1118 	ld	d,a
                           1119 ;src/main.c:349: player->ex = player->nx + (player->w/2) - 1; 
   67EC DD 7E F4      [19] 1120 	ld	a,-12 (ix)
   67EF C6 04         [ 7] 1121 	add	a, #0x04
   67F1 DD 77 FC      [19] 1122 	ld	-4 (ix),a
   67F4 DD 7E F5      [19] 1123 	ld	a,-11 (ix)
   67F7 CE 00         [ 7] 1124 	adc	a, #0x00
   67F9 DD 77 FD      [19] 1125 	ld	-3 (ix),a
                           1126 ;src/main.c:350: player->ey = player->ny - (player->h/2)+2 ;
   67FC DD 7E F4      [19] 1127 	ld	a,-12 (ix)
   67FF C6 05         [ 7] 1128 	add	a, #0x05
   6801 DD 77 F4      [19] 1129 	ld	-12 (ix),a
   6804 DD 7E F5      [19] 1130 	ld	a,-11 (ix)
   6807 CE 00         [ 7] 1131 	adc	a, #0x00
   6809 DD 77 F5      [19] 1132 	ld	-11 (ix),a
                           1133 ;src/main.c:347: if(cpct_isKeyPressed(Key_W) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny-8))==0){
   680C 7D            [ 4] 1134 	ld	a,l
   680D B7            [ 4] 1135 	or	a, a
   680E 28 5A         [12] 1136 	jr	Z,00152$
   6810 3A 48 62      [13] 1137 	ld	a, (#_Personaje + 3)
   6813 C6 F8         [ 7] 1138 	add	a,#0xF8
   6815 47            [ 4] 1139 	ld	b,a
   6816 3A 47 62      [13] 1140 	ld	a, (#_Personaje + 2)
   6819 C6 04         [ 7] 1141 	add	a, #0x04
   681B D5            [11] 1142 	push	de
   681C C5            [11] 1143 	push	bc
   681D 33            [ 6] 1144 	inc	sp
   681E F5            [11] 1145 	push	af
   681F 33            [ 6] 1146 	inc	sp
   6820 CD 5A 64      [17] 1147 	call	_myTile
   6823 F1            [10] 1148 	pop	af
   6824 E5            [11] 1149 	push	hl
   6825 CD 7F 64      [17] 1150 	call	_mapActPosition
   6828 F1            [10] 1151 	pop	af
   6829 7D            [ 4] 1152 	ld	a,l
   682A D1            [10] 1153 	pop	de
   682B B7            [ 4] 1154 	or	a, a
   682C 20 3C         [12] 1155 	jr	NZ,00152$
                           1156 ;src/main.c:348: if(player->senpuesto==0){
   682E 1A            [ 7] 1157 	ld	a,(de)
   682F B7            [ 4] 1158 	or	a, a
   6830 C2 EC 69      [10] 1159 	jp	NZ,00157$
                           1160 ;src/main.c:349: player->ex = player->nx + (player->w/2) - 1; 
   6833 DD 6E F6      [19] 1161 	ld	l,-10 (ix)
   6836 DD 66 F7      [19] 1162 	ld	h,-9 (ix)
   6839 4E            [ 7] 1163 	ld	c,(hl)
   683A DD 6E FC      [19] 1164 	ld	l,-4 (ix)
   683D DD 66 FD      [19] 1165 	ld	h,-3 (ix)
   6840 6E            [ 7] 1166 	ld	l,(hl)
   6841 CB 3D         [ 8] 1167 	srl	l
   6843 09            [11] 1168 	add	hl, bc
   6844 45            [ 4] 1169 	ld	b,l
   6845 05            [ 4] 1170 	dec	b
   6846 DD 6E FA      [19] 1171 	ld	l,-6 (ix)
   6849 DD 66 FB      [19] 1172 	ld	h,-5 (ix)
   684C 70            [ 7] 1173 	ld	(hl),b
                           1174 ;src/main.c:350: player->ey = player->ny - (player->h/2)+2 ;
   684D DD 6E FE      [19] 1175 	ld	l,-2 (ix)
   6850 DD 66 FF      [19] 1176 	ld	h,-1 (ix)
   6853 46            [ 7] 1177 	ld	b,(hl)
   6854 E1            [10] 1178 	pop	hl
   6855 E5            [11] 1179 	push	hl
   6856 66            [ 7] 1180 	ld	h,(hl)
   6857 CB 3C         [ 8] 1181 	srl	h
   6859 78            [ 4] 1182 	ld	a,b
   685A 94            [ 4] 1183 	sub	a, h
   685B C6 02         [ 7] 1184 	add	a, #0x02
   685D DD 6E F8      [19] 1185 	ld	l,-8 (ix)
   6860 DD 66 F9      [19] 1186 	ld	h,-7 (ix)
   6863 77            [ 7] 1187 	ld	(hl),a
                           1188 ;src/main.c:351: player->senpuesto=1;
   6864 3E 01         [ 7] 1189 	ld	a,#0x01
   6866 12            [ 7] 1190 	ld	(de),a
   6867 C3 EC 69      [10] 1191 	jp	00157$
   686A                    1192 00152$:
                           1193 ;src/main.c:353: }else if(cpct_isKeyPressed(Key_A) && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+8))==0 && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+12))==0 ){
   686A D5            [11] 1194 	push	de
   686B 21 08 20      [10] 1195 	ld	hl,#0x2008
   686E CD 04 85      [17] 1196 	call	_cpct_isKeyPressed
   6871 7D            [ 4] 1197 	ld	a,l
   6872 D1            [10] 1198 	pop	de
   6873 B7            [ 4] 1199 	or	a, a
   6874 28 77         [12] 1200 	jr	Z,00147$
   6876 3A 48 62      [13] 1201 	ld	a, (#(_Personaje + 0x0003) + 0)
   6879 C6 08         [ 7] 1202 	add	a, #0x08
   687B 47            [ 4] 1203 	ld	b,a
   687C 3A 47 62      [13] 1204 	ld	a, (#(_Personaje + 0x0002) + 0)
   687F C6 FE         [ 7] 1205 	add	a,#0xFE
   6881 D5            [11] 1206 	push	de
   6882 C5            [11] 1207 	push	bc
   6883 33            [ 6] 1208 	inc	sp
   6884 F5            [11] 1209 	push	af
   6885 33            [ 6] 1210 	inc	sp
   6886 CD 5A 64      [17] 1211 	call	_myTile
   6889 F1            [10] 1212 	pop	af
   688A E5            [11] 1213 	push	hl
   688B CD 7F 64      [17] 1214 	call	_mapActPosition
   688E F1            [10] 1215 	pop	af
   688F 7D            [ 4] 1216 	ld	a,l
   6890 D1            [10] 1217 	pop	de
   6891 B7            [ 4] 1218 	or	a, a
   6892 20 59         [12] 1219 	jr	NZ,00147$
   6894 3A 48 62      [13] 1220 	ld	a, (#(_Personaje + 0x0003) + 0)
   6897 C6 0C         [ 7] 1221 	add	a, #0x0C
   6899 47            [ 4] 1222 	ld	b,a
   689A 3A 47 62      [13] 1223 	ld	a, (#(_Personaje + 0x0002) + 0)
   689D C6 FE         [ 7] 1224 	add	a,#0xFE
   689F D5            [11] 1225 	push	de
   68A0 C5            [11] 1226 	push	bc
   68A1 33            [ 6] 1227 	inc	sp
   68A2 F5            [11] 1228 	push	af
   68A3 33            [ 6] 1229 	inc	sp
   68A4 CD 5A 64      [17] 1230 	call	_myTile
   68A7 F1            [10] 1231 	pop	af
   68A8 E5            [11] 1232 	push	hl
   68A9 CD 7F 64      [17] 1233 	call	_mapActPosition
   68AC F1            [10] 1234 	pop	af
   68AD 7D            [ 4] 1235 	ld	a,l
   68AE D1            [10] 1236 	pop	de
   68AF B7            [ 4] 1237 	or	a, a
   68B0 20 3B         [12] 1238 	jr	NZ,00147$
                           1239 ;src/main.c:354: if(player->senpuesto==0){
   68B2 1A            [ 7] 1240 	ld	a,(de)
   68B3 B7            [ 4] 1241 	or	a, a
   68B4 C2 EC 69      [10] 1242 	jp	NZ,00157$
                           1243 ;src/main.c:355: player->ex = player->nx - (player->w/2)+1 ; 
   68B7 DD 6E F6      [19] 1244 	ld	l,-10 (ix)
   68BA DD 66 F7      [19] 1245 	ld	h,-9 (ix)
   68BD 46            [ 7] 1246 	ld	b,(hl)
   68BE DD 6E FC      [19] 1247 	ld	l,-4 (ix)
   68C1 DD 66 FD      [19] 1248 	ld	h,-3 (ix)
   68C4 66            [ 7] 1249 	ld	h,(hl)
   68C5 CB 3C         [ 8] 1250 	srl	h
   68C7 78            [ 4] 1251 	ld	a,b
   68C8 94            [ 4] 1252 	sub	a, h
   68C9 3C            [ 4] 1253 	inc	a
   68CA DD 6E FA      [19] 1254 	ld	l,-6 (ix)
   68CD DD 66 FB      [19] 1255 	ld	h,-5 (ix)
   68D0 77            [ 7] 1256 	ld	(hl),a
                           1257 ;src/main.c:356: player->ey = player->ny + (player->h/2) - 1;
   68D1 DD 6E FE      [19] 1258 	ld	l,-2 (ix)
   68D4 DD 66 FF      [19] 1259 	ld	h,-1 (ix)
   68D7 4E            [ 7] 1260 	ld	c,(hl)
   68D8 E1            [10] 1261 	pop	hl
   68D9 E5            [11] 1262 	push	hl
   68DA 6E            [ 7] 1263 	ld	l,(hl)
   68DB CB 3D         [ 8] 1264 	srl	l
   68DD 09            [11] 1265 	add	hl, bc
   68DE 45            [ 4] 1266 	ld	b,l
   68DF 05            [ 4] 1267 	dec	b
   68E0 DD 6E F8      [19] 1268 	ld	l,-8 (ix)
   68E3 DD 66 F9      [19] 1269 	ld	h,-7 (ix)
   68E6 70            [ 7] 1270 	ld	(hl),b
                           1271 ;src/main.c:357: player->senpuesto=1;
   68E7 3E 01         [ 7] 1272 	ld	a,#0x01
   68E9 12            [ 7] 1273 	ld	(de),a
   68EA C3 EC 69      [10] 1274 	jp	00157$
   68ED                    1275 00147$:
                           1276 ;src/main.c:360: else if(cpct_isKeyPressed(Key_S) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny+20))==0  &&  mapActPosition(myTile(Personaje.nx+4,Personaje.ny+24))==0){
   68ED D5            [11] 1277 	push	de
   68EE 21 07 10      [10] 1278 	ld	hl,#0x1007
   68F1 CD 04 85      [17] 1279 	call	_cpct_isKeyPressed
   68F4 7D            [ 4] 1280 	ld	a,l
   68F5 D1            [10] 1281 	pop	de
   68F6 B7            [ 4] 1282 	or	a, a
   68F7 28 76         [12] 1283 	jr	Z,00142$
   68F9 3A 48 62      [13] 1284 	ld	a, (#(_Personaje + 0x0003) + 0)
   68FC C6 14         [ 7] 1285 	add	a, #0x14
   68FE 47            [ 4] 1286 	ld	b,a
   68FF 3A 47 62      [13] 1287 	ld	a, (#(_Personaje + 0x0002) + 0)
   6902 C6 04         [ 7] 1288 	add	a, #0x04
   6904 D5            [11] 1289 	push	de
   6905 C5            [11] 1290 	push	bc
   6906 33            [ 6] 1291 	inc	sp
   6907 F5            [11] 1292 	push	af
   6908 33            [ 6] 1293 	inc	sp
   6909 CD 5A 64      [17] 1294 	call	_myTile
   690C F1            [10] 1295 	pop	af
   690D E5            [11] 1296 	push	hl
   690E CD 7F 64      [17] 1297 	call	_mapActPosition
   6911 F1            [10] 1298 	pop	af
   6912 7D            [ 4] 1299 	ld	a,l
   6913 D1            [10] 1300 	pop	de
   6914 B7            [ 4] 1301 	or	a, a
   6915 20 58         [12] 1302 	jr	NZ,00142$
   6917 3A 48 62      [13] 1303 	ld	a, (#(_Personaje + 0x0003) + 0)
   691A C6 18         [ 7] 1304 	add	a, #0x18
   691C 47            [ 4] 1305 	ld	b,a
   691D 3A 47 62      [13] 1306 	ld	a, (#(_Personaje + 0x0002) + 0)
   6920 C6 04         [ 7] 1307 	add	a, #0x04
   6922 D5            [11] 1308 	push	de
   6923 C5            [11] 1309 	push	bc
   6924 33            [ 6] 1310 	inc	sp
   6925 F5            [11] 1311 	push	af
   6926 33            [ 6] 1312 	inc	sp
   6927 CD 5A 64      [17] 1313 	call	_myTile
   692A F1            [10] 1314 	pop	af
   692B E5            [11] 1315 	push	hl
   692C CD 7F 64      [17] 1316 	call	_mapActPosition
   692F F1            [10] 1317 	pop	af
   6930 7D            [ 4] 1318 	ld	a,l
   6931 D1            [10] 1319 	pop	de
   6932 B7            [ 4] 1320 	or	a, a
   6933 20 3A         [12] 1321 	jr	NZ,00142$
                           1322 ;src/main.c:361: if(player->senpuesto==0){
   6935 1A            [ 7] 1323 	ld	a,(de)
   6936 B7            [ 4] 1324 	or	a, a
   6937 C2 EC 69      [10] 1325 	jp	NZ,00157$
                           1326 ;src/main.c:362: player->ex = player->nx + (player->w/2) - 1; 
   693A DD 6E F6      [19] 1327 	ld	l,-10 (ix)
   693D DD 66 F7      [19] 1328 	ld	h,-9 (ix)
   6940 4E            [ 7] 1329 	ld	c,(hl)
   6941 DD 6E FC      [19] 1330 	ld	l,-4 (ix)
   6944 DD 66 FD      [19] 1331 	ld	h,-3 (ix)
   6947 6E            [ 7] 1332 	ld	l,(hl)
   6948 CB 3D         [ 8] 1333 	srl	l
   694A 09            [11] 1334 	add	hl, bc
   694B 45            [ 4] 1335 	ld	b,l
   694C 05            [ 4] 1336 	dec	b
   694D DD 6E FA      [19] 1337 	ld	l,-6 (ix)
   6950 DD 66 FB      [19] 1338 	ld	h,-5 (ix)
   6953 70            [ 7] 1339 	ld	(hl),b
                           1340 ;src/main.c:363: player->ey = player->ny + player->h +2 ;
   6954 DD 6E FE      [19] 1341 	ld	l,-2 (ix)
   6957 DD 66 FF      [19] 1342 	ld	h,-1 (ix)
   695A 46            [ 7] 1343 	ld	b,(hl)
   695B E1            [10] 1344 	pop	hl
   695C E5            [11] 1345 	push	hl
   695D 66            [ 7] 1346 	ld	h,(hl)
   695E 78            [ 4] 1347 	ld	a,b
   695F 84            [ 4] 1348 	add	a, h
   6960 C6 02         [ 7] 1349 	add	a, #0x02
   6962 DD 6E F8      [19] 1350 	ld	l,-8 (ix)
   6965 DD 66 F9      [19] 1351 	ld	h,-7 (ix)
   6968 77            [ 7] 1352 	ld	(hl),a
                           1353 ;src/main.c:364: player->senpuesto=1;
   6969 3E 01         [ 7] 1354 	ld	a,#0x01
   696B 12            [ 7] 1355 	ld	(de),a
   696C C3 EC 69      [10] 1356 	jp	00157$
   696F                    1357 00142$:
                           1358 ;src/main.c:367: else if(cpct_isKeyPressed(Key_D) &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+8))==0 &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+12))==0){
   696F D5            [11] 1359 	push	de
   6970 21 07 20      [10] 1360 	ld	hl,#0x2007
   6973 CD 04 85      [17] 1361 	call	_cpct_isKeyPressed
   6976 7D            [ 4] 1362 	ld	a,l
   6977 D1            [10] 1363 	pop	de
   6978 B7            [ 4] 1364 	or	a, a
   6979 28 71         [12] 1365 	jr	Z,00157$
   697B 3A 48 62      [13] 1366 	ld	a, (#(_Personaje + 0x0003) + 0)
   697E C6 08         [ 7] 1367 	add	a, #0x08
   6980 47            [ 4] 1368 	ld	b,a
   6981 3A 47 62      [13] 1369 	ld	a, (#(_Personaje + 0x0002) + 0)
   6984 C6 0A         [ 7] 1370 	add	a, #0x0A
   6986 D5            [11] 1371 	push	de
   6987 C5            [11] 1372 	push	bc
   6988 33            [ 6] 1373 	inc	sp
   6989 F5            [11] 1374 	push	af
   698A 33            [ 6] 1375 	inc	sp
   698B CD 5A 64      [17] 1376 	call	_myTile
   698E F1            [10] 1377 	pop	af
   698F E5            [11] 1378 	push	hl
   6990 CD 7F 64      [17] 1379 	call	_mapActPosition
   6993 F1            [10] 1380 	pop	af
   6994 7D            [ 4] 1381 	ld	a,l
   6995 D1            [10] 1382 	pop	de
   6996 B7            [ 4] 1383 	or	a, a
   6997 20 53         [12] 1384 	jr	NZ,00157$
   6999 3A 48 62      [13] 1385 	ld	a, (#(_Personaje + 0x0003) + 0)
   699C C6 0C         [ 7] 1386 	add	a, #0x0C
   699E 47            [ 4] 1387 	ld	b,a
   699F 3A 47 62      [13] 1388 	ld	a, (#(_Personaje + 0x0002) + 0)
   69A2 C6 0A         [ 7] 1389 	add	a, #0x0A
   69A4 D5            [11] 1390 	push	de
   69A5 C5            [11] 1391 	push	bc
   69A6 33            [ 6] 1392 	inc	sp
   69A7 F5            [11] 1393 	push	af
   69A8 33            [ 6] 1394 	inc	sp
   69A9 CD 5A 64      [17] 1395 	call	_myTile
   69AC F1            [10] 1396 	pop	af
   69AD E5            [11] 1397 	push	hl
   69AE CD 7F 64      [17] 1398 	call	_mapActPosition
   69B1 F1            [10] 1399 	pop	af
   69B2 7D            [ 4] 1400 	ld	a,l
   69B3 D1            [10] 1401 	pop	de
   69B4 B7            [ 4] 1402 	or	a, a
   69B5 20 35         [12] 1403 	jr	NZ,00157$
                           1404 ;src/main.c:368: if(player->senpuesto==0){
   69B7 1A            [ 7] 1405 	ld	a,(de)
   69B8 B7            [ 4] 1406 	or	a, a
   69B9 20 31         [12] 1407 	jr	NZ,00157$
                           1408 ;src/main.c:369: player->ex = player->nx + player->w +1 ; 
   69BB DD 6E F6      [19] 1409 	ld	l,-10 (ix)
   69BE DD 66 F7      [19] 1410 	ld	h,-9 (ix)
   69C1 4E            [ 7] 1411 	ld	c,(hl)
   69C2 DD 6E FC      [19] 1412 	ld	l,-4 (ix)
   69C5 DD 66 FD      [19] 1413 	ld	h,-3 (ix)
   69C8 6E            [ 7] 1414 	ld	l,(hl)
   69C9 79            [ 4] 1415 	ld	a,c
   69CA 85            [ 4] 1416 	add	a, l
   69CB 3C            [ 4] 1417 	inc	a
   69CC DD 6E FA      [19] 1418 	ld	l,-6 (ix)
   69CF DD 66 FB      [19] 1419 	ld	h,-5 (ix)
   69D2 77            [ 7] 1420 	ld	(hl),a
                           1421 ;src/main.c:370: player->ey = player->ny + (player->h/2) - 1;
   69D3 DD 6E FE      [19] 1422 	ld	l,-2 (ix)
   69D6 DD 66 FF      [19] 1423 	ld	h,-1 (ix)
   69D9 4E            [ 7] 1424 	ld	c,(hl)
   69DA E1            [10] 1425 	pop	hl
   69DB E5            [11] 1426 	push	hl
   69DC 6E            [ 7] 1427 	ld	l,(hl)
   69DD CB 3D         [ 8] 1428 	srl	l
   69DF 09            [11] 1429 	add	hl, bc
   69E0 45            [ 4] 1430 	ld	b,l
   69E1 05            [ 4] 1431 	dec	b
   69E2 DD 6E F8      [19] 1432 	ld	l,-8 (ix)
   69E5 DD 66 F9      [19] 1433 	ld	h,-7 (ix)
   69E8 70            [ 7] 1434 	ld	(hl),b
                           1435 ;src/main.c:371: player->senpuesto=1;
   69E9 3E 01         [ 7] 1436 	ld	a,#0x01
   69EB 12            [ 7] 1437 	ld	(de),a
   69EC                    1438 00157$:
   69EC DD F9         [10] 1439 	ld	sp, ix
   69EE DD E1         [14] 1440 	pop	ix
   69F0 C9            [10] 1441 	ret
                           1442 ;src/main.c:384: void DibujarEntidades(){
                           1443 ;	---------------------------------
                           1444 ; Function DibujarEntidades
                           1445 ; ---------------------------------
   69F1                    1446 _DibujarEntidades::
   69F1 DD E5         [15] 1447 	push	ix
   69F3 DD 21 00 00   [14] 1448 	ld	ix,#0
   69F7 DD 39         [15] 1449 	add	ix,sp
   69F9 3B            [ 6] 1450 	dec	sp
                           1451 ;src/main.c:390: if(Personaje.change  || Personaje.dirAtaque!=No_Ataque ){
   69FA 3A 57 62      [13] 1452 	ld	a, (#_Personaje + 18)
   69FD B7            [ 4] 1453 	or	a, a
   69FE 20 06         [12] 1454 	jr	NZ,00101$
   6A00 3A 55 62      [13] 1455 	ld	a, (#_Personaje + 16)
   6A03 B7            [ 4] 1456 	or	a, a
   6A04 28 2C         [12] 1457 	jr	Z,00102$
   6A06                    1458 00101$:
                           1459 ;src/main.c:391: puntMem = cpct_getScreenPtr(MemVideo,Personaje.nx,Personaje.ny );
   6A06 21 48 62      [10] 1460 	ld	hl, #_Personaje + 3
   6A09 56            [ 7] 1461 	ld	d,(hl)
   6A0A 3A 47 62      [13] 1462 	ld	a, (#_Personaje + 2)
   6A0D D5            [11] 1463 	push	de
   6A0E 33            [ 6] 1464 	inc	sp
   6A0F F5            [11] 1465 	push	af
   6A10 33            [ 6] 1466 	inc	sp
   6A11 21 00 C0      [10] 1467 	ld	hl,#0xC000
   6A14 E5            [11] 1468 	push	hl
   6A15 CD 1E 91      [17] 1469 	call	_cpct_getScreenPtr
   6A18 EB            [ 4] 1470 	ex	de,hl
                           1471 ;src/main.c:392: cpct_drawSprite(Personaje.sprite, puntMem, Personaje.w, Personaje.h);
   6A19 21 4A 62      [10] 1472 	ld	hl, #_Personaje + 5
   6A1C 4E            [ 7] 1473 	ld	c,(hl)
   6A1D 21 49 62      [10] 1474 	ld	hl, #_Personaje + 4
   6A20 46            [ 7] 1475 	ld	b,(hl)
   6A21 2A 4B 62      [16] 1476 	ld	hl, (#_Personaje + 6)
   6A24 E5            [11] 1477 	push	hl
   6A25 FD E1         [14] 1478 	pop	iy
   6A27 79            [ 4] 1479 	ld	a,c
   6A28 F5            [11] 1480 	push	af
   6A29 33            [ 6] 1481 	inc	sp
   6A2A C5            [11] 1482 	push	bc
   6A2B 33            [ 6] 1483 	inc	sp
   6A2C D5            [11] 1484 	push	de
   6A2D FD E5         [15] 1485 	push	iy
   6A2F CD D3 8D      [17] 1486 	call	_cpct_drawSprite
   6A32                    1487 00102$:
                           1488 ;src/main.c:399: if(Personaje.senpuesto==1){
   6A32 3A 59 62      [13] 1489 	ld	a, (#_Personaje + 20)
   6A35 3D            [ 4] 1490 	dec	a
   6A36 20 28         [12] 1491 	jr	NZ,00105$
                           1492 ;src/main.c:400: puntMem= cpct_getScreenPtr(MemVideo,Personaje.ex,Personaje.ey);
   6A38 21 50 62      [10] 1493 	ld	hl, #_Personaje + 11
   6A3B 56            [ 7] 1494 	ld	d,(hl)
   6A3C 3A 4F 62      [13] 1495 	ld	a, (#_Personaje + 10)
   6A3F D5            [11] 1496 	push	de
   6A40 33            [ 6] 1497 	inc	sp
   6A41 F5            [11] 1498 	push	af
   6A42 33            [ 6] 1499 	inc	sp
   6A43 21 00 C0      [10] 1500 	ld	hl,#0xC000
   6A46 E5            [11] 1501 	push	hl
   6A47 CD 1E 91      [17] 1502 	call	_cpct_getScreenPtr
   6A4A EB            [ 4] 1503 	ex	de,hl
                           1504 ;src/main.c:401: cpct_drawSprite(&filete, puntMem, Enemy.w, Enemy.h);
   6A4B 21 5F 62      [10] 1505 	ld	hl, #_Enemy + 5
   6A4E 4E            [ 7] 1506 	ld	c,(hl)
   6A4F 21 5E 62      [10] 1507 	ld	hl, #_Enemy + 4
   6A52 46            [ 7] 1508 	ld	b,(hl)
   6A53 79            [ 4] 1509 	ld	a,c
   6A54 F5            [11] 1510 	push	af
   6A55 33            [ 6] 1511 	inc	sp
   6A56 C5            [11] 1512 	push	bc
   6A57 33            [ 6] 1513 	inc	sp
   6A58 D5            [11] 1514 	push	de
   6A59 21 F4 60      [10] 1515 	ld	hl,#_filete
   6A5C E5            [11] 1516 	push	hl
   6A5D CD D3 8D      [17] 1517 	call	_cpct_drawSprite
   6A60                    1518 00105$:
                           1519 ;src/main.c:405: if(Enemy.change){
   6A60 3A 63 62      [13] 1520 	ld	a, (#_Enemy + 9)
   6A63 B7            [ 4] 1521 	or	a, a
   6A64 28 2C         [12] 1522 	jr	Z,00107$
                           1523 ;src/main.c:407: puntMem= cpct_getScreenPtr(MemVideo,Enemy.nx,Enemy.ny);
   6A66 21 5D 62      [10] 1524 	ld	hl, #_Enemy + 3
   6A69 56            [ 7] 1525 	ld	d,(hl)
   6A6A 3A 5C 62      [13] 1526 	ld	a, (#_Enemy + 2)
   6A6D D5            [11] 1527 	push	de
   6A6E 33            [ 6] 1528 	inc	sp
   6A6F F5            [11] 1529 	push	af
   6A70 33            [ 6] 1530 	inc	sp
   6A71 21 00 C0      [10] 1531 	ld	hl,#0xC000
   6A74 E5            [11] 1532 	push	hl
   6A75 CD 1E 91      [17] 1533 	call	_cpct_getScreenPtr
   6A78 EB            [ 4] 1534 	ex	de,hl
                           1535 ;src/main.c:408: cpct_drawSprite(Enemy.sprite, puntMem, Enemy.w, Enemy.h);
   6A79 21 5F 62      [10] 1536 	ld	hl, #_Enemy + 5
   6A7C 4E            [ 7] 1537 	ld	c,(hl)
   6A7D 21 5E 62      [10] 1538 	ld	hl, #_Enemy + 4
   6A80 46            [ 7] 1539 	ld	b,(hl)
   6A81 2A 60 62      [16] 1540 	ld	hl, (#_Enemy + 6)
   6A84 E5            [11] 1541 	push	hl
   6A85 FD E1         [14] 1542 	pop	iy
   6A87 79            [ 4] 1543 	ld	a,c
   6A88 F5            [11] 1544 	push	af
   6A89 33            [ 6] 1545 	inc	sp
   6A8A C5            [11] 1546 	push	bc
   6A8B 33            [ 6] 1547 	inc	sp
   6A8C D5            [11] 1548 	push	de
   6A8D FD E5         [15] 1549 	push	iy
   6A8F CD D3 8D      [17] 1550 	call	_cpct_drawSprite
   6A92                    1551 00107$:
                           1552 ;src/main.c:411: if(!Mierda.dibujado ){
   6A92 3A 75 62      [13] 1553 	ld	a, (#_Mierda + 6)
   6A95 B7            [ 4] 1554 	or	a, a
   6A96 20 31         [12] 1555 	jr	NZ,00109$
                           1556 ;src/main.c:412: puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
   6A98 21 70 62      [10] 1557 	ld	hl, #_Mierda + 1
   6A9B 56            [ 7] 1558 	ld	d,(hl)
   6A9C 3A 6F 62      [13] 1559 	ld	a, (#_Mierda + 0)
   6A9F D5            [11] 1560 	push	de
   6AA0 33            [ 6] 1561 	inc	sp
   6AA1 F5            [11] 1562 	push	af
   6AA2 33            [ 6] 1563 	inc	sp
   6AA3 21 00 C0      [10] 1564 	ld	hl,#0xC000
   6AA6 E5            [11] 1565 	push	hl
   6AA7 CD 1E 91      [17] 1566 	call	_cpct_getScreenPtr
   6AAA EB            [ 4] 1567 	ex	de,hl
                           1568 ;src/main.c:413: cpct_drawSprite(Mierda.sprite, puntMem, Mierda.w, Mierda.h);
   6AAB 21 72 62      [10] 1569 	ld	hl, #_Mierda + 3
   6AAE 4E            [ 7] 1570 	ld	c,(hl)
   6AAF 3A 71 62      [13] 1571 	ld	a,(#_Mierda + 2)
   6AB2 DD 77 FF      [19] 1572 	ld	-1 (ix),a
   6AB5 2A 73 62      [16] 1573 	ld	hl, (#_Mierda + 4)
   6AB8 E5            [11] 1574 	push	hl
   6AB9 FD E1         [14] 1575 	pop	iy
   6ABB 79            [ 4] 1576 	ld	a,c
   6ABC F5            [11] 1577 	push	af
   6ABD 33            [ 6] 1578 	inc	sp
   6ABE DD 7E FF      [19] 1579 	ld	a,-1 (ix)
   6AC1 F5            [11] 1580 	push	af
   6AC2 33            [ 6] 1581 	inc	sp
   6AC3 D5            [11] 1582 	push	de
   6AC4 FD E5         [15] 1583 	push	iy
   6AC6 CD D3 8D      [17] 1584 	call	_cpct_drawSprite
   6AC9                    1585 00109$:
                           1586 ;src/main.c:416: if(!Power.dibujado ){
   6AC9 3A 6C 62      [13] 1587 	ld	a, (#_Power + 6)
   6ACC B7            [ 4] 1588 	or	a, a
   6ACD 20 31         [12] 1589 	jr	NZ,00112$
                           1590 ;src/main.c:417: puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
   6ACF 21 67 62      [10] 1591 	ld	hl, #_Power + 1
   6AD2 56            [ 7] 1592 	ld	d,(hl)
   6AD3 3A 66 62      [13] 1593 	ld	a, (#_Power + 0)
   6AD6 D5            [11] 1594 	push	de
   6AD7 33            [ 6] 1595 	inc	sp
   6AD8 F5            [11] 1596 	push	af
   6AD9 33            [ 6] 1597 	inc	sp
   6ADA 21 00 C0      [10] 1598 	ld	hl,#0xC000
   6ADD E5            [11] 1599 	push	hl
   6ADE CD 1E 91      [17] 1600 	call	_cpct_getScreenPtr
   6AE1 EB            [ 4] 1601 	ex	de,hl
                           1602 ;src/main.c:418: cpct_drawSprite(Power.sprite, puntMem, Power.w, Power.h);
   6AE2 21 69 62      [10] 1603 	ld	hl, #_Power + 3
   6AE5 4E            [ 7] 1604 	ld	c,(hl)
   6AE6 3A 68 62      [13] 1605 	ld	a,(#_Power + 2)
   6AE9 DD 77 FF      [19] 1606 	ld	-1 (ix),a
   6AEC 2A 6A 62      [16] 1607 	ld	hl, (#_Power + 4)
   6AEF E5            [11] 1608 	push	hl
   6AF0 FD E1         [14] 1609 	pop	iy
   6AF2 79            [ 4] 1610 	ld	a,c
   6AF3 F5            [11] 1611 	push	af
   6AF4 33            [ 6] 1612 	inc	sp
   6AF5 DD 7E FF      [19] 1613 	ld	a,-1 (ix)
   6AF8 F5            [11] 1614 	push	af
   6AF9 33            [ 6] 1615 	inc	sp
   6AFA D5            [11] 1616 	push	de
   6AFB FD E5         [15] 1617 	push	iy
   6AFD CD D3 8D      [17] 1618 	call	_cpct_drawSprite
   6B00                    1619 00112$:
   6B00 33            [ 6] 1620 	inc	sp
   6B01 DD E1         [14] 1621 	pop	ix
   6B03 C9            [10] 1622 	ret
                           1623 ;src/main.c:428: void respawn(TEntity *personaje, EnemyEntity *enemigo){
                           1624 ;	---------------------------------
                           1625 ; Function respawn
                           1626 ; ---------------------------------
   6B04                    1627 _respawn::
   6B04 DD E5         [15] 1628 	push	ix
   6B06 DD 21 00 00   [14] 1629 	ld	ix,#0
   6B0A DD 39         [15] 1630 	add	ix,sp
                           1631 ;src/main.c:430: personaje->change=1;
   6B0C DD 4E 04      [19] 1632 	ld	c,4 (ix)
   6B0F DD 46 05      [19] 1633 	ld	b,5 (ix)
   6B12 21 12 00      [10] 1634 	ld	hl,#0x0012
   6B15 09            [11] 1635 	add	hl,bc
   6B16 36 01         [10] 1636 	ld	(hl),#0x01
                           1637 ;src/main.c:431: enemigo->change=1;
   6B18 DD 5E 06      [19] 1638 	ld	e,6 (ix)
   6B1B DD 56 07      [19] 1639 	ld	d,7 (ix)
   6B1E 21 09 00      [10] 1640 	ld	hl,#0x0009
   6B21 19            [11] 1641 	add	hl,de
   6B22 36 01         [10] 1642 	ld	(hl),#0x01
                           1643 ;src/main.c:432: personaje->lives-=1;
   6B24 21 11 00      [10] 1644 	ld	hl,#0x0011
   6B27 09            [11] 1645 	add	hl,bc
   6B28 7E            [ 7] 1646 	ld	a,(hl)
   6B29 C6 FF         [ 7] 1647 	add	a,#0xFF
   6B2B 77            [ 7] 1648 	ld	(hl),a
                           1649 ;src/main.c:433: score();
   6B2C C5            [11] 1650 	push	bc
   6B2D D5            [11] 1651 	push	de
   6B2E CD DE 61      [17] 1652 	call	_score
   6B31 CD 5C 63      [17] 1653 	call	_BorrarEntidades
   6B34 D1            [10] 1654 	pop	de
   6B35 C1            [10] 1655 	pop	bc
                           1656 ;src/main.c:435: personaje->x = PosXini;
   6B36 3E 02         [ 7] 1657 	ld	a,#0x02
   6B38 02            [ 7] 1658 	ld	(bc),a
                           1659 ;src/main.c:436: personaje->y = PosYini;
   6B39 69            [ 4] 1660 	ld	l, c
   6B3A 60            [ 4] 1661 	ld	h, b
   6B3B 23            [ 6] 1662 	inc	hl
   6B3C 36 3C         [10] 1663 	ld	(hl),#0x3C
                           1664 ;src/main.c:437: personaje->nx = PosXini;
   6B3E 69            [ 4] 1665 	ld	l, c
   6B3F 60            [ 4] 1666 	ld	h, b
   6B40 23            [ 6] 1667 	inc	hl
   6B41 23            [ 6] 1668 	inc	hl
   6B42 36 02         [10] 1669 	ld	(hl),#0x02
                           1670 ;src/main.c:438: personaje->ny = PosYini;
   6B44 69            [ 4] 1671 	ld	l, c
   6B45 60            [ 4] 1672 	ld	h, b
   6B46 23            [ 6] 1673 	inc	hl
   6B47 23            [ 6] 1674 	inc	hl
   6B48 23            [ 6] 1675 	inc	hl
   6B49 36 3C         [10] 1676 	ld	(hl),#0x3C
                           1677 ;src/main.c:439: personaje->ex = PosEspXini;
   6B4B 21 0A 00      [10] 1678 	ld	hl,#0x000A
   6B4E 09            [11] 1679 	add	hl,bc
   6B4F 36 2B         [10] 1680 	ld	(hl),#0x2B
                           1681 ;src/main.c:440: personaje->ey = PosEspYini;
   6B51 21 0B 00      [10] 1682 	ld	hl,#0x000B
   6B54 09            [11] 1683 	add	hl,bc
   6B55 36 2D         [10] 1684 	ld	(hl),#0x2D
                           1685 ;src/main.c:442: enemigo->x = EnemiX;
   6B57 3E 38         [ 7] 1686 	ld	a,#0x38
   6B59 12            [ 7] 1687 	ld	(de),a
                           1688 ;src/main.c:443: enemigo->y = EnemiY;
   6B5A 6B            [ 4] 1689 	ld	l, e
   6B5B 62            [ 4] 1690 	ld	h, d
   6B5C 23            [ 6] 1691 	inc	hl
   6B5D 36 8C         [10] 1692 	ld	(hl),#0x8C
                           1693 ;src/main.c:444: enemigo->nx = EnemiX;
   6B5F 6B            [ 4] 1694 	ld	l, e
   6B60 62            [ 4] 1695 	ld	h, d
   6B61 23            [ 6] 1696 	inc	hl
   6B62 23            [ 6] 1697 	inc	hl
   6B63 36 38         [10] 1698 	ld	(hl),#0x38
                           1699 ;src/main.c:445: enemigo->ny = EnemiY;
   6B65 EB            [ 4] 1700 	ex	de,hl
   6B66 23            [ 6] 1701 	inc	hl
   6B67 23            [ 6] 1702 	inc	hl
   6B68 23            [ 6] 1703 	inc	hl
   6B69 36 8C         [10] 1704 	ld	(hl),#0x8C
   6B6B DD E1         [14] 1705 	pop	ix
   6B6D C9            [10] 1706 	ret
                           1707 ;src/main.c:450: u8 distancia(){
                           1708 ;	---------------------------------
                           1709 ; Function distancia
                           1710 ; ---------------------------------
   6B6E                    1711 _distancia::
   6B6E DD E5         [15] 1712 	push	ix
   6B70 DD 21 00 00   [14] 1713 	ld	ix,#0
   6B74 DD 39         [15] 1714 	add	ix,sp
   6B76 21 F3 FF      [10] 1715 	ld	hl,#-13
   6B79 39            [11] 1716 	add	hl,sp
   6B7A F9            [ 6] 1717 	ld	sp,hl
                           1718 ;src/main.c:456: if(((Personaje.nx>Enemy.nx-30 &&  Personaje.nx<=Enemy.nx) || (Personaje.nx<Enemy.nx + 30 && Personaje.nx>=Enemy.nx )) && ((Personaje.ny>Enemy.ny-50 &&  Personaje.ny<=Enemy.ny) || (Personaje.ny<Enemy.ny + 50 && Personaje.ny>=Enemy.ny )) ) distancia=1;
   6B7B 3A 47 62      [13] 1719 	ld	a,(#_Personaje + 2)
   6B7E DD 77 F8      [19] 1720 	ld	-8 (ix),a
   6B81 3A 5C 62      [13] 1721 	ld	a,(#_Enemy + 2)
   6B84 DD 77 F9      [19] 1722 	ld	-7 (ix), a
   6B87 DD 77 F4      [19] 1723 	ld	-12 (ix),a
   6B8A DD 36 F5 00   [19] 1724 	ld	-11 (ix),#0x00
   6B8E DD 7E F4      [19] 1725 	ld	a,-12 (ix)
   6B91 C6 E2         [ 7] 1726 	add	a,#0xE2
   6B93 67            [ 4] 1727 	ld	h,a
   6B94 DD 7E F5      [19] 1728 	ld	a,-11 (ix)
   6B97 CE FF         [ 7] 1729 	adc	a,#0xFF
   6B99 6F            [ 4] 1730 	ld	l,a
   6B9A DD 7E F8      [19] 1731 	ld	a,-8 (ix)
   6B9D DD 77 F6      [19] 1732 	ld	-10 (ix),a
   6BA0 DD 36 F7 00   [19] 1733 	ld	-9 (ix),#0x00
   6BA4 7C            [ 4] 1734 	ld	a,h
   6BA5 DD 96 F6      [19] 1735 	sub	a, -10 (ix)
   6BA8 7D            [ 4] 1736 	ld	a,l
   6BA9 DD 9E F7      [19] 1737 	sbc	a, -9 (ix)
   6BAC E2 B1 6B      [10] 1738 	jp	PO, 00129$
   6BAF EE 80         [ 7] 1739 	xor	a, #0x80
   6BB1                    1740 00129$:
   6BB1 F2 BC 6B      [10] 1741 	jp	P,00106$
   6BB4 DD 7E F9      [19] 1742 	ld	a,-7 (ix)
   6BB7 DD 96 F8      [19] 1743 	sub	a, -8 (ix)
   6BBA 30 25         [12] 1744 	jr	NC,00110$
   6BBC                    1745 00106$:
   6BBC DD 7E F4      [19] 1746 	ld	a,-12 (ix)
   6BBF C6 1E         [ 7] 1747 	add	a, #0x1E
   6BC1 67            [ 4] 1748 	ld	h,a
   6BC2 DD 7E F5      [19] 1749 	ld	a,-11 (ix)
   6BC5 CE 00         [ 7] 1750 	adc	a, #0x00
   6BC7 6F            [ 4] 1751 	ld	l,a
   6BC8 DD 7E F6      [19] 1752 	ld	a,-10 (ix)
   6BCB 94            [ 4] 1753 	sub	a, h
   6BCC DD 7E F7      [19] 1754 	ld	a,-9 (ix)
   6BCF 9D            [ 4] 1755 	sbc	a, l
   6BD0 E2 D5 6B      [10] 1756 	jp	PO, 00130$
   6BD3 EE 80         [ 7] 1757 	xor	a, #0x80
   6BD5                    1758 00130$:
   6BD5 F2 5D 6C      [10] 1759 	jp	P,00102$
   6BD8 DD 7E F8      [19] 1760 	ld	a,-8 (ix)
   6BDB DD 96 F9      [19] 1761 	sub	a, -7 (ix)
   6BDE DA 5D 6C      [10] 1762 	jp	C,00102$
   6BE1                    1763 00110$:
   6BE1 3A 48 62      [13] 1764 	ld	a,(#_Personaje + 3)
   6BE4 DD 77 F6      [19] 1765 	ld	-10 (ix),a
   6BE7 21 5D 62      [10] 1766 	ld	hl, #_Enemy + 3
   6BEA 7E            [ 7] 1767 	ld	a,(hl)
   6BEB DD 77 F4      [19] 1768 	ld	-12 (ix), a
   6BEE DD 77 FE      [19] 1769 	ld	-2 (ix),a
   6BF1 DD 36 FF 00   [19] 1770 	ld	-1 (ix),#0x00
   6BF5 DD 7E FE      [19] 1771 	ld	a,-2 (ix)
   6BF8 C6 CE         [ 7] 1772 	add	a,#0xCE
   6BFA DD 77 FC      [19] 1773 	ld	-4 (ix),a
   6BFD DD 7E FF      [19] 1774 	ld	a,-1 (ix)
   6C00 CE FF         [ 7] 1775 	adc	a,#0xFF
   6C02 DD 77 FD      [19] 1776 	ld	-3 (ix),a
   6C05 DD 7E F6      [19] 1777 	ld	a,-10 (ix)
   6C08 DD 77 FA      [19] 1778 	ld	-6 (ix),a
   6C0B DD 36 FB 00   [19] 1779 	ld	-5 (ix),#0x00
   6C0F DD 7E FC      [19] 1780 	ld	a,-4 (ix)
   6C12 DD 96 FA      [19] 1781 	sub	a, -6 (ix)
   6C15 DD 7E FD      [19] 1782 	ld	a,-3 (ix)
   6C18 DD 9E FB      [19] 1783 	sbc	a, -5 (ix)
   6C1B E2 20 6C      [10] 1784 	jp	PO, 00131$
   6C1E EE 80         [ 7] 1785 	xor	a, #0x80
   6C20                    1786 00131$:
   6C20 F2 2B 6C      [10] 1787 	jp	P,00109$
   6C23 DD 7E F4      [19] 1788 	ld	a,-12 (ix)
   6C26 DD 96 F6      [19] 1789 	sub	a, -10 (ix)
   6C29 30 2C         [12] 1790 	jr	NC,00101$
   6C2B                    1791 00109$:
   6C2B DD 7E FE      [19] 1792 	ld	a,-2 (ix)
   6C2E C6 32         [ 7] 1793 	add	a, #0x32
   6C30 DD 77 FC      [19] 1794 	ld	-4 (ix),a
   6C33 DD 7E FF      [19] 1795 	ld	a,-1 (ix)
   6C36 CE 00         [ 7] 1796 	adc	a, #0x00
   6C38 DD 77 FD      [19] 1797 	ld	-3 (ix),a
   6C3B DD 7E FA      [19] 1798 	ld	a,-6 (ix)
   6C3E DD 96 FC      [19] 1799 	sub	a, -4 (ix)
   6C41 DD 7E FB      [19] 1800 	ld	a,-5 (ix)
   6C44 DD 9E FD      [19] 1801 	sbc	a, -3 (ix)
   6C47 E2 4C 6C      [10] 1802 	jp	PO, 00132$
   6C4A EE 80         [ 7] 1803 	xor	a, #0x80
   6C4C                    1804 00132$:
   6C4C F2 5D 6C      [10] 1805 	jp	P,00102$
   6C4F DD 7E F6      [19] 1806 	ld	a,-10 (ix)
   6C52 DD 96 F4      [19] 1807 	sub	a, -12 (ix)
   6C55 38 06         [12] 1808 	jr	C,00102$
   6C57                    1809 00101$:
   6C57 DD 36 F3 01   [19] 1810 	ld	-13 (ix),#0x01
   6C5B 18 04         [12] 1811 	jr	00103$
   6C5D                    1812 00102$:
                           1813 ;src/main.c:457: else distancia = 10;
   6C5D DD 36 F3 0A   [19] 1814 	ld	-13 (ix),#0x0A
   6C61                    1815 00103$:
                           1816 ;src/main.c:459: return distancia;
   6C61 DD 6E F3      [19] 1817 	ld	l,-13 (ix)
   6C64 DD F9         [10] 1818 	ld	sp, ix
   6C66 DD E1         [14] 1819 	pop	ix
   6C68 C9            [10] 1820 	ret
                           1821 ;src/main.c:463: void IA(EnemyEntity *enemigo, TEntity *player){
                           1822 ;	---------------------------------
                           1823 ; Function IA
                           1824 ; ---------------------------------
   6C69                    1825 _IA::
   6C69 DD E5         [15] 1826 	push	ix
   6C6B DD 21 00 00   [14] 1827 	ld	ix,#0
   6C6F DD 39         [15] 1828 	add	ix,sp
   6C71 21 EF FF      [10] 1829 	ld	hl,#-17
   6C74 39            [11] 1830 	add	hl,sp
   6C75 F9            [ 6] 1831 	ld	sp,hl
                           1832 ;src/main.c:465: enemigo->change=0;
   6C76 DD 7E 04      [19] 1833 	ld	a,4 (ix)
   6C79 DD 77 F8      [19] 1834 	ld	-8 (ix),a
   6C7C DD 7E 05      [19] 1835 	ld	a,5 (ix)
   6C7F DD 77 F9      [19] 1836 	ld	-7 (ix),a
   6C82 DD 7E F8      [19] 1837 	ld	a,-8 (ix)
   6C85 C6 09         [ 7] 1838 	add	a, #0x09
   6C87 DD 77 F6      [19] 1839 	ld	-10 (ix),a
   6C8A DD 7E F9      [19] 1840 	ld	a,-7 (ix)
   6C8D CE 00         [ 7] 1841 	adc	a, #0x00
   6C8F DD 77 F7      [19] 1842 	ld	-9 (ix),a
   6C92 DD 6E F6      [19] 1843 	ld	l,-10 (ix)
   6C95 DD 66 F7      [19] 1844 	ld	h,-9 (ix)
   6C98 36 00         [10] 1845 	ld	(hl),#0x00
                           1846 ;src/main.c:466: enemigo->x=enemigo->nx;
   6C9A DD 7E F8      [19] 1847 	ld	a,-8 (ix)
   6C9D C6 02         [ 7] 1848 	add	a, #0x02
   6C9F DD 77 F1      [19] 1849 	ld	-15 (ix),a
   6CA2 DD 7E F9      [19] 1850 	ld	a,-7 (ix)
   6CA5 CE 00         [ 7] 1851 	adc	a, #0x00
   6CA7 DD 77 F2      [19] 1852 	ld	-14 (ix),a
   6CAA DD 6E F1      [19] 1853 	ld	l,-15 (ix)
   6CAD DD 66 F2      [19] 1854 	ld	h,-14 (ix)
   6CB0 7E            [ 7] 1855 	ld	a,(hl)
   6CB1 DD 6E F8      [19] 1856 	ld	l,-8 (ix)
   6CB4 DD 66 F9      [19] 1857 	ld	h,-7 (ix)
   6CB7 77            [ 7] 1858 	ld	(hl),a
                           1859 ;src/main.c:467: enemigo->y=enemigo->ny;
   6CB8 DD 7E F8      [19] 1860 	ld	a,-8 (ix)
   6CBB C6 01         [ 7] 1861 	add	a, #0x01
   6CBD DD 77 FE      [19] 1862 	ld	-2 (ix),a
   6CC0 DD 7E F9      [19] 1863 	ld	a,-7 (ix)
   6CC3 CE 00         [ 7] 1864 	adc	a, #0x00
   6CC5 DD 77 FF      [19] 1865 	ld	-1 (ix),a
   6CC8 DD 7E F8      [19] 1866 	ld	a,-8 (ix)
   6CCB C6 03         [ 7] 1867 	add	a, #0x03
   6CCD DD 77 F4      [19] 1868 	ld	-12 (ix),a
   6CD0 DD 7E F9      [19] 1869 	ld	a,-7 (ix)
   6CD3 CE 00         [ 7] 1870 	adc	a, #0x00
   6CD5 DD 77 F5      [19] 1871 	ld	-11 (ix),a
   6CD8 DD 6E F4      [19] 1872 	ld	l,-12 (ix)
   6CDB DD 66 F5      [19] 1873 	ld	h,-11 (ix)
   6CDE 7E            [ 7] 1874 	ld	a,(hl)
   6CDF DD 77 FA      [19] 1875 	ld	-6 (ix),a
   6CE2 DD 6E FE      [19] 1876 	ld	l,-2 (ix)
   6CE5 DD 66 FF      [19] 1877 	ld	h,-1 (ix)
   6CE8 DD 7E FA      [19] 1878 	ld	a,-6 (ix)
   6CEB 77            [ 7] 1879 	ld	(hl),a
                           1880 ;src/main.c:469: if(Personaje.senpuesto==1){
   6CEC 3A 59 62      [13] 1881 	ld	a,(#_Personaje + 20)
   6CEF DD 77 FA      [19] 1882 	ld	-6 (ix),a
                           1883 ;src/main.c:484: enemigo->estado=Vigilar;
   6CF2 DD 7E F8      [19] 1884 	ld	a,-8 (ix)
   6CF5 C6 0B         [ 7] 1885 	add	a, #0x0B
   6CF7 DD 77 FE      [19] 1886 	ld	-2 (ix),a
   6CFA DD 7E F9      [19] 1887 	ld	a,-7 (ix)
   6CFD CE 00         [ 7] 1888 	adc	a, #0x00
   6CFF DD 77 FF      [19] 1889 	ld	-1 (ix),a
                           1890 ;src/main.c:469: if(Personaje.senpuesto==1){
   6D02 DD 7E FA      [19] 1891 	ld	a,-6 (ix)
   6D05 3D            [ 4] 1892 	dec	a
   6D06 C2 C5 6F      [10] 1893 	jp	NZ,00202$
                           1894 ;src/main.c:470: if(Personaje.ex < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
   6D09 3A 4F 62      [13] 1895 	ld	a,(#(_Personaje + 0x000a) + 0)
   6D0C DD 77 FA      [19] 1896 	ld	-6 (ix),a
   6D0F 3A 5C 62      [13] 1897 	ld	a,(#(_Enemy + 0x0002) + 0)
   6D12 DD 77 F3      [19] 1898 	ld	-13 (ix),a
   6D15 DD 7E FA      [19] 1899 	ld	a,-6 (ix)
   6D18 DD 96 F3      [19] 1900 	sub	a, -13 (ix)
   6D1B 30 6A         [12] 1901 	jr	NC,00122$
   6D1D 3A 5D 62      [13] 1902 	ld	a, (#(_Enemy + 0x0003) + 0)
   6D20 F5            [11] 1903 	push	af
   6D21 33            [ 6] 1904 	inc	sp
   6D22 DD 7E F3      [19] 1905 	ld	a,-13 (ix)
   6D25 F5            [11] 1906 	push	af
   6D26 33            [ 6] 1907 	inc	sp
   6D27 CD 5A 64      [17] 1908 	call	_myTile
   6D2A F1            [10] 1909 	pop	af
   6D2B 2B            [ 6] 1910 	dec	hl
   6D2C E5            [11] 1911 	push	hl
   6D2D CD 7F 64      [17] 1912 	call	_mapActPosition
   6D30 F1            [10] 1913 	pop	af
   6D31 7D            [ 4] 1914 	ld	a,l
   6D32 B7            [ 4] 1915 	or	a, a
   6D33 20 52         [12] 1916 	jr	NZ,00122$
   6D35 21 5D 62      [10] 1917 	ld	hl, #(_Enemy + 0x0003) + 0
   6D38 56            [ 7] 1918 	ld	d,(hl)
   6D39 3A 5C 62      [13] 1919 	ld	a, (#(_Enemy + 0x0002) + 0)
   6D3C D5            [11] 1920 	push	de
   6D3D 33            [ 6] 1921 	inc	sp
   6D3E F5            [11] 1922 	push	af
   6D3F 33            [ 6] 1923 	inc	sp
   6D40 CD 5A 64      [17] 1924 	call	_myTile
   6D43 F1            [10] 1925 	pop	af
   6D44 01 4F 00      [10] 1926 	ld	bc,#0x004F
   6D47 09            [11] 1927 	add	hl,bc
   6D48 E5            [11] 1928 	push	hl
   6D49 CD 7F 64      [17] 1929 	call	_mapActPosition
   6D4C F1            [10] 1930 	pop	af
   6D4D 7D            [ 4] 1931 	ld	a,l
   6D4E B7            [ 4] 1932 	or	a, a
   6D4F 20 36         [12] 1933 	jr	NZ,00122$
   6D51 21 5D 62      [10] 1934 	ld	hl, #(_Enemy + 0x0003) + 0
   6D54 56            [ 7] 1935 	ld	d,(hl)
   6D55 3A 5C 62      [13] 1936 	ld	a, (#(_Enemy + 0x0002) + 0)
   6D58 D5            [11] 1937 	push	de
   6D59 33            [ 6] 1938 	inc	sp
   6D5A F5            [11] 1939 	push	af
   6D5B 33            [ 6] 1940 	inc	sp
   6D5C CD 5A 64      [17] 1941 	call	_myTile
   6D5F F1            [10] 1942 	pop	af
   6D60 01 9F 00      [10] 1943 	ld	bc,#0x009F
   6D63 09            [11] 1944 	add	hl,bc
   6D64 E5            [11] 1945 	push	hl
   6D65 CD 7F 64      [17] 1946 	call	_mapActPosition
   6D68 F1            [10] 1947 	pop	af
   6D69 7D            [ 4] 1948 	ld	a,l
   6D6A B7            [ 4] 1949 	or	a, a
   6D6B 20 1A         [12] 1950 	jr	NZ,00122$
                           1951 ;src/main.c:471: enemigo->nx-=1;
   6D6D DD 6E F1      [19] 1952 	ld	l,-15 (ix)
   6D70 DD 66 F2      [19] 1953 	ld	h,-14 (ix)
   6D73 56            [ 7] 1954 	ld	d,(hl)
   6D74 15            [ 4] 1955 	dec	d
   6D75 DD 6E F1      [19] 1956 	ld	l,-15 (ix)
   6D78 DD 66 F2      [19] 1957 	ld	h,-14 (ix)
   6D7B 72            [ 7] 1958 	ld	(hl),d
                           1959 ;src/main.c:472: enemigo->change=1;
   6D7C DD 6E F6      [19] 1960 	ld	l,-10 (ix)
   6D7F DD 66 F7      [19] 1961 	ld	h,-9 (ix)
   6D82 36 01         [10] 1962 	ld	(hl),#0x01
   6D84 C3 39 78      [10] 1963 	jp	00204$
   6D87                    1964 00122$:
                           1965 ;src/main.c:473: }else if(Personaje.ey > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   6D87 21 50 62      [10] 1966 	ld	hl, #(_Personaje + 0x000b) + 0
   6D8A 5E            [ 7] 1967 	ld	e,(hl)
   6D8B 21 5D 62      [10] 1968 	ld	hl, #(_Enemy + 0x0003) + 0
   6D8E 56            [ 7] 1969 	ld	d,(hl)
   6D8F 7A            [ 4] 1970 	ld	a,d
   6D90 93            [ 4] 1971 	sub	a, e
   6D91 D2 3E 6E      [10] 1972 	jp	NC,00116$
   6D94 3A 5C 62      [13] 1973 	ld	a,(#(_Enemy + 0x0002) + 0)
   6D97 DD 77 F3      [19] 1974 	ld	-13 (ix),a
   6D9A D5            [11] 1975 	push	de
   6D9B 33            [ 6] 1976 	inc	sp
   6D9C DD 7E F3      [19] 1977 	ld	a,-13 (ix)
   6D9F F5            [11] 1978 	push	af
   6DA0 33            [ 6] 1979 	inc	sp
   6DA1 CD 5A 64      [17] 1980 	call	_myTile
   6DA4 F1            [10] 1981 	pop	af
   6DA5 DD 74 FC      [19] 1982 	ld	-4 (ix),h
   6DA8 DD 75 FB      [19] 1983 	ld	-5 (ix), l
   6DAB 7D            [ 4] 1984 	ld	a, l
   6DAC C6 C8         [ 7] 1985 	add	a, #0xC8
   6DAE DD 77 FB      [19] 1986 	ld	-5 (ix),a
   6DB1 DD 7E FC      [19] 1987 	ld	a,-4 (ix)
   6DB4 CE 00         [ 7] 1988 	adc	a, #0x00
   6DB6 DD 77 FC      [19] 1989 	ld	-4 (ix),a
   6DB9 DD 6E FB      [19] 1990 	ld	l,-5 (ix)
   6DBC DD 66 FC      [19] 1991 	ld	h,-4 (ix)
   6DBF E5            [11] 1992 	push	hl
   6DC0 CD 7F 64      [17] 1993 	call	_mapActPosition
   6DC3 F1            [10] 1994 	pop	af
   6DC4 7D            [ 4] 1995 	ld	a,l
   6DC5 B7            [ 4] 1996 	or	a, a
   6DC6 20 76         [12] 1997 	jr	NZ,00116$
   6DC8 21 5D 62      [10] 1998 	ld	hl, #(_Enemy + 0x0003) + 0
   6DCB 56            [ 7] 1999 	ld	d,(hl)
   6DCC 3A 5C 62      [13] 2000 	ld	a, (#(_Enemy + 0x0002) + 0)
   6DCF D5            [11] 2001 	push	de
   6DD0 33            [ 6] 2002 	inc	sp
   6DD1 F5            [11] 2003 	push	af
   6DD2 33            [ 6] 2004 	inc	sp
   6DD3 CD 5A 64      [17] 2005 	call	_myTile
   6DD6 F1            [10] 2006 	pop	af
   6DD7 DD 74 FC      [19] 2007 	ld	-4 (ix),h
   6DDA DD 75 FB      [19] 2008 	ld	-5 (ix), l
   6DDD 7D            [ 4] 2009 	ld	a, l
   6DDE C6 CA         [ 7] 2010 	add	a, #0xCA
   6DE0 DD 77 FB      [19] 2011 	ld	-5 (ix),a
   6DE3 DD 7E FC      [19] 2012 	ld	a,-4 (ix)
   6DE6 CE 00         [ 7] 2013 	adc	a, #0x00
   6DE8 DD 77 FC      [19] 2014 	ld	-4 (ix),a
   6DEB DD 6E FB      [19] 2015 	ld	l,-5 (ix)
   6DEE DD 66 FC      [19] 2016 	ld	h,-4 (ix)
   6DF1 E5            [11] 2017 	push	hl
   6DF2 CD 7F 64      [17] 2018 	call	_mapActPosition
   6DF5 F1            [10] 2019 	pop	af
   6DF6 7D            [ 4] 2020 	ld	a,l
   6DF7 B7            [ 4] 2021 	or	a, a
   6DF8 20 44         [12] 2022 	jr	NZ,00116$
   6DFA 21 5D 62      [10] 2023 	ld	hl, #(_Enemy + 0x0003) + 0
   6DFD 56            [ 7] 2024 	ld	d,(hl)
   6DFE 3A 5C 62      [13] 2025 	ld	a, (#(_Enemy + 0x0002) + 0)
   6E01 D5            [11] 2026 	push	de
   6E02 33            [ 6] 2027 	inc	sp
   6E03 F5            [11] 2028 	push	af
   6E04 33            [ 6] 2029 	inc	sp
   6E05 CD 5A 64      [17] 2030 	call	_myTile
   6E08 F1            [10] 2031 	pop	af
   6E09 DD 74 FC      [19] 2032 	ld	-4 (ix),h
   6E0C DD 75 FB      [19] 2033 	ld	-5 (ix), l
   6E0F 7D            [ 4] 2034 	ld	a, l
   6E10 C6 CC         [ 7] 2035 	add	a, #0xCC
   6E12 DD 77 FB      [19] 2036 	ld	-5 (ix),a
   6E15 DD 7E FC      [19] 2037 	ld	a,-4 (ix)
   6E18 CE 00         [ 7] 2038 	adc	a, #0x00
   6E1A DD 77 FC      [19] 2039 	ld	-4 (ix),a
   6E1D DD 6E FB      [19] 2040 	ld	l,-5 (ix)
   6E20 DD 66 FC      [19] 2041 	ld	h,-4 (ix)
   6E23 E5            [11] 2042 	push	hl
   6E24 CD 7F 64      [17] 2043 	call	_mapActPosition
   6E27 F1            [10] 2044 	pop	af
   6E28 7D            [ 4] 2045 	ld	a,l
   6E29 B7            [ 4] 2046 	or	a, a
   6E2A 20 12         [12] 2047 	jr	NZ,00116$
                           2048 ;src/main.c:474: enemigo->ny+=1;
   6E2C DD 6E F4      [19] 2049 	ld	l,-12 (ix)
   6E2F DD 66 F5      [19] 2050 	ld	h,-11 (ix)
   6E32 34            [11] 2051 	inc	(hl)
                           2052 ;src/main.c:475: enemigo->change=1;
   6E33 DD 6E F6      [19] 2053 	ld	l,-10 (ix)
   6E36 DD 66 F7      [19] 2054 	ld	h,-9 (ix)
   6E39 36 01         [10] 2055 	ld	(hl),#0x01
   6E3B C3 39 78      [10] 2056 	jp	00204$
   6E3E                    2057 00116$:
                           2058 ;src/main.c:476: }else if(Personaje.ey < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ) {
   6E3E 21 50 62      [10] 2059 	ld	hl, #(_Personaje + 0x000b) + 0
   6E41 5E            [ 7] 2060 	ld	e,(hl)
   6E42 21 5D 62      [10] 2061 	ld	hl, #(_Enemy + 0x0003) + 0
   6E45 56            [ 7] 2062 	ld	d,(hl)
   6E46 7B            [ 4] 2063 	ld	a,e
   6E47 92            [ 4] 2064 	sub	a, d
   6E48 30 7A         [12] 2065 	jr	NC,00111$
   6E4A 3A 5C 62      [13] 2066 	ld	a, (#(_Enemy + 0x0002) + 0)
   6E4D D5            [11] 2067 	push	de
   6E4E 33            [ 6] 2068 	inc	sp
   6E4F F5            [11] 2069 	push	af
   6E50 33            [ 6] 2070 	inc	sp
   6E51 CD 5A 64      [17] 2071 	call	_myTile
   6E54 F1            [10] 2072 	pop	af
   6E55 DD 74 FC      [19] 2073 	ld	-4 (ix),h
   6E58 DD 75 FB      [19] 2074 	ld	-5 (ix), l
   6E5B 7D            [ 4] 2075 	ld	a, l
   6E5C C6 DA         [ 7] 2076 	add	a,#0xDA
   6E5E DD 77 FB      [19] 2077 	ld	-5 (ix),a
   6E61 DD 7E FC      [19] 2078 	ld	a,-4 (ix)
   6E64 CE FF         [ 7] 2079 	adc	a,#0xFF
   6E66 DD 77 FC      [19] 2080 	ld	-4 (ix),a
   6E69 DD 6E FB      [19] 2081 	ld	l,-5 (ix)
   6E6C DD 66 FC      [19] 2082 	ld	h,-4 (ix)
   6E6F E5            [11] 2083 	push	hl
   6E70 CD 7F 64      [17] 2084 	call	_mapActPosition
   6E73 F1            [10] 2085 	pop	af
   6E74 7D            [ 4] 2086 	ld	a,l
   6E75 B7            [ 4] 2087 	or	a, a
   6E76 20 4C         [12] 2088 	jr	NZ,00111$
   6E78 21 5D 62      [10] 2089 	ld	hl, #(_Enemy + 0x0003) + 0
   6E7B 56            [ 7] 2090 	ld	d,(hl)
   6E7C 3A 5C 62      [13] 2091 	ld	a, (#(_Enemy + 0x0002) + 0)
   6E7F D5            [11] 2092 	push	de
   6E80 33            [ 6] 2093 	inc	sp
   6E81 F5            [11] 2094 	push	af
   6E82 33            [ 6] 2095 	inc	sp
   6E83 CD 5A 64      [17] 2096 	call	_myTile
   6E86 F1            [10] 2097 	pop	af
   6E87 DD 74 FC      [19] 2098 	ld	-4 (ix),h
   6E8A DD 75 FB      [19] 2099 	ld	-5 (ix), l
   6E8D 7D            [ 4] 2100 	ld	a, l
   6E8E C6 DC         [ 7] 2101 	add	a,#0xDC
   6E90 DD 77 FB      [19] 2102 	ld	-5 (ix),a
   6E93 DD 7E FC      [19] 2103 	ld	a,-4 (ix)
   6E96 CE FF         [ 7] 2104 	adc	a,#0xFF
   6E98 DD 77 FC      [19] 2105 	ld	-4 (ix),a
   6E9B DD 6E FB      [19] 2106 	ld	l,-5 (ix)
   6E9E DD 66 FC      [19] 2107 	ld	h,-4 (ix)
   6EA1 E5            [11] 2108 	push	hl
   6EA2 CD 7F 64      [17] 2109 	call	_mapActPosition
   6EA5 F1            [10] 2110 	pop	af
   6EA6 7D            [ 4] 2111 	ld	a,l
   6EA7 B7            [ 4] 2112 	or	a, a
   6EA8 20 1A         [12] 2113 	jr	NZ,00111$
                           2114 ;src/main.c:477: enemigo->ny-=1;
   6EAA DD 6E F4      [19] 2115 	ld	l,-12 (ix)
   6EAD DD 66 F5      [19] 2116 	ld	h,-11 (ix)
   6EB0 56            [ 7] 2117 	ld	d,(hl)
   6EB1 15            [ 4] 2118 	dec	d
   6EB2 DD 6E F4      [19] 2119 	ld	l,-12 (ix)
   6EB5 DD 66 F5      [19] 2120 	ld	h,-11 (ix)
   6EB8 72            [ 7] 2121 	ld	(hl),d
                           2122 ;src/main.c:478: enemigo->change=1;
   6EB9 DD 6E F6      [19] 2123 	ld	l,-10 (ix)
   6EBC DD 66 F7      [19] 2124 	ld	h,-9 (ix)
   6EBF 36 01         [10] 2125 	ld	(hl),#0x01
   6EC1 C3 39 78      [10] 2126 	jp	00204$
   6EC4                    2127 00111$:
                           2128 ;src/main.c:479: }else if(Personaje.ex > Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)!=1 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
   6EC4 21 4F 62      [10] 2129 	ld	hl, #(_Personaje + 0x000a) + 0
   6EC7 5E            [ 7] 2130 	ld	e,(hl)
   6EC8 21 5C 62      [10] 2131 	ld	hl, #(_Enemy + 0x0002) + 0
   6ECB 56            [ 7] 2132 	ld	d,(hl)
   6ECC 7A            [ 4] 2133 	ld	a,d
   6ECD 93            [ 4] 2134 	sub	a, e
   6ECE D2 74 6F      [10] 2135 	jp	NC,00105$
   6ED1 3A 5D 62      [13] 2136 	ld	a, (#(_Enemy + 0x0003) + 0)
   6ED4 F5            [11] 2137 	push	af
   6ED5 33            [ 6] 2138 	inc	sp
   6ED6 D5            [11] 2139 	push	de
   6ED7 33            [ 6] 2140 	inc	sp
   6ED8 CD 5A 64      [17] 2141 	call	_myTile
   6EDB F1            [10] 2142 	pop	af
   6EDC DD 74 FC      [19] 2143 	ld	-4 (ix),h
   6EDF DD 75 FB      [19] 2144 	ld	-5 (ix), l
   6EE2 7D            [ 4] 2145 	ld	a, l
   6EE3 C6 05         [ 7] 2146 	add	a, #0x05
   6EE5 DD 77 FB      [19] 2147 	ld	-5 (ix),a
   6EE8 DD 7E FC      [19] 2148 	ld	a,-4 (ix)
   6EEB CE 00         [ 7] 2149 	adc	a, #0x00
   6EED DD 77 FC      [19] 2150 	ld	-4 (ix),a
   6EF0 DD 6E FB      [19] 2151 	ld	l,-5 (ix)
   6EF3 DD 66 FC      [19] 2152 	ld	h,-4 (ix)
   6EF6 E5            [11] 2153 	push	hl
   6EF7 CD 7F 64      [17] 2154 	call	_mapActPosition
   6EFA F1            [10] 2155 	pop	af
   6EFB 7D            [ 4] 2156 	ld	a,l
   6EFC B7            [ 4] 2157 	or	a, a
   6EFD 20 75         [12] 2158 	jr	NZ,00105$
   6EFF 21 5D 62      [10] 2159 	ld	hl, #(_Enemy + 0x0003) + 0
   6F02 56            [ 7] 2160 	ld	d,(hl)
   6F03 3A 5C 62      [13] 2161 	ld	a, (#(_Enemy + 0x0002) + 0)
   6F06 D5            [11] 2162 	push	de
   6F07 33            [ 6] 2163 	inc	sp
   6F08 F5            [11] 2164 	push	af
   6F09 33            [ 6] 2165 	inc	sp
   6F0A CD 5A 64      [17] 2166 	call	_myTile
   6F0D F1            [10] 2167 	pop	af
   6F0E DD 74 FC      [19] 2168 	ld	-4 (ix),h
   6F11 DD 75 FB      [19] 2169 	ld	-5 (ix), l
   6F14 7D            [ 4] 2170 	ld	a, l
   6F15 C6 55         [ 7] 2171 	add	a, #0x55
   6F17 DD 77 FB      [19] 2172 	ld	-5 (ix),a
   6F1A DD 7E FC      [19] 2173 	ld	a,-4 (ix)
   6F1D CE 00         [ 7] 2174 	adc	a, #0x00
   6F1F DD 77 FC      [19] 2175 	ld	-4 (ix),a
   6F22 DD 6E FB      [19] 2176 	ld	l,-5 (ix)
   6F25 DD 66 FC      [19] 2177 	ld	h,-4 (ix)
   6F28 E5            [11] 2178 	push	hl
   6F29 CD 7F 64      [17] 2179 	call	_mapActPosition
   6F2C F1            [10] 2180 	pop	af
   6F2D 2D            [ 4] 2181 	dec	l
   6F2E 28 44         [12] 2182 	jr	Z,00105$
   6F30 21 5D 62      [10] 2183 	ld	hl, #(_Enemy + 0x0003) + 0
   6F33 56            [ 7] 2184 	ld	d,(hl)
   6F34 3A 5C 62      [13] 2185 	ld	a, (#(_Enemy + 0x0002) + 0)
   6F37 D5            [11] 2186 	push	de
   6F38 33            [ 6] 2187 	inc	sp
   6F39 F5            [11] 2188 	push	af
   6F3A 33            [ 6] 2189 	inc	sp
   6F3B CD 5A 64      [17] 2190 	call	_myTile
   6F3E F1            [10] 2191 	pop	af
   6F3F DD 74 FC      [19] 2192 	ld	-4 (ix),h
   6F42 DD 75 FB      [19] 2193 	ld	-5 (ix), l
   6F45 7D            [ 4] 2194 	ld	a, l
   6F46 C6 A5         [ 7] 2195 	add	a, #0xA5
   6F48 DD 77 FB      [19] 2196 	ld	-5 (ix),a
   6F4B DD 7E FC      [19] 2197 	ld	a,-4 (ix)
   6F4E CE 00         [ 7] 2198 	adc	a, #0x00
   6F50 DD 77 FC      [19] 2199 	ld	-4 (ix),a
   6F53 DD 6E FB      [19] 2200 	ld	l,-5 (ix)
   6F56 DD 66 FC      [19] 2201 	ld	h,-4 (ix)
   6F59 E5            [11] 2202 	push	hl
   6F5A CD 7F 64      [17] 2203 	call	_mapActPosition
   6F5D F1            [10] 2204 	pop	af
   6F5E 7D            [ 4] 2205 	ld	a,l
   6F5F B7            [ 4] 2206 	or	a, a
   6F60 20 12         [12] 2207 	jr	NZ,00105$
                           2208 ;src/main.c:480: enemigo->nx+=1;
   6F62 DD 6E F1      [19] 2209 	ld	l,-15 (ix)
   6F65 DD 66 F2      [19] 2210 	ld	h,-14 (ix)
   6F68 34            [11] 2211 	inc	(hl)
                           2212 ;src/main.c:481: enemigo->change=1;
   6F69 DD 6E F6      [19] 2213 	ld	l,-10 (ix)
   6F6C DD 66 F7      [19] 2214 	ld	h,-9 (ix)
   6F6F 36 01         [10] 2215 	ld	(hl),#0x01
   6F71 C3 39 78      [10] 2216 	jp	00204$
   6F74                    2217 00105$:
                           2218 ;src/main.c:482: }else if(Enemy.ny == Personaje.ey && Enemy.nx == Personaje.ex){
   6F74 21 5D 62      [10] 2219 	ld	hl, #(_Enemy + 0x0003) + 0
   6F77 56            [ 7] 2220 	ld	d,(hl)
   6F78 21 50 62      [10] 2221 	ld	hl, #(_Personaje + 0x000b) + 0
   6F7B 5E            [ 7] 2222 	ld	e,(hl)
   6F7C 7A            [ 4] 2223 	ld	a,d
   6F7D 93            [ 4] 2224 	sub	a, e
   6F7E C2 39 78      [10] 2225 	jp	NZ,00204$
   6F81 21 5C 62      [10] 2226 	ld	hl, #(_Enemy + 0x0002) + 0
   6F84 56            [ 7] 2227 	ld	d,(hl)
   6F85 21 4F 62      [10] 2228 	ld	hl, #(_Personaje + 0x000a) + 0
   6F88 5E            [ 7] 2229 	ld	e,(hl)
   6F89 7A            [ 4] 2230 	ld	a,d
   6F8A 93            [ 4] 2231 	sub	a, e
   6F8B C2 39 78      [10] 2232 	jp	NZ,00204$
                           2233 ;src/main.c:483: enemigo->change=1;
   6F8E DD 6E F6      [19] 2234 	ld	l,-10 (ix)
   6F91 DD 66 F7      [19] 2235 	ld	h,-9 (ix)
   6F94 36 01         [10] 2236 	ld	(hl),#0x01
                           2237 ;src/main.c:484: enemigo->estado=Vigilar;
   6F96 DD 6E FE      [19] 2238 	ld	l,-2 (ix)
   6F99 DD 66 FF      [19] 2239 	ld	h,-1 (ix)
   6F9C 36 00         [10] 2240 	ld	(hl),#0x00
                           2241 ;src/main.c:485: player->senpuesto=0;
   6F9E DD 7E 06      [19] 2242 	ld	a,6 (ix)
   6FA1 DD 77 FB      [19] 2243 	ld	-5 (ix),a
   6FA4 DD 7E 07      [19] 2244 	ld	a,7 (ix)
   6FA7 DD 77 FC      [19] 2245 	ld	-4 (ix),a
   6FAA DD 7E FB      [19] 2246 	ld	a,-5 (ix)
   6FAD C6 14         [ 7] 2247 	add	a, #0x14
   6FAF DD 77 FB      [19] 2248 	ld	-5 (ix),a
   6FB2 DD 7E FC      [19] 2249 	ld	a,-4 (ix)
   6FB5 CE 00         [ 7] 2250 	adc	a, #0x00
   6FB7 DD 77 FC      [19] 2251 	ld	-4 (ix),a
   6FBA DD 6E FB      [19] 2252 	ld	l,-5 (ix)
   6FBD DD 66 FC      [19] 2253 	ld	h,-4 (ix)
   6FC0 36 00         [10] 2254 	ld	(hl),#0x00
   6FC2 C3 39 78      [10] 2255 	jp	00204$
   6FC5                    2256 00202$:
                           2257 ;src/main.c:489: else if(Enemy.estado==Vigilar){
   6FC5 3A 65 62      [13] 2258 	ld	a,(#_Enemy + 11)
                           2259 ;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
                           2260 ;src/main.c:489: else if(Enemy.estado==Vigilar){
   6FC8 DD 77 FB      [19] 2261 	ld	-5 (ix), a
   6FCB B7            [ 4] 2262 	or	a, a
   6FCC C2 D2 72      [10] 2263 	jp	NZ,00199$
                           2264 ;src/main.c:491: if(Enemy.vigilancia){
   6FCF 3A 62 62      [13] 2265 	ld	a,(#_Enemy + 8)
   6FD2 DD 77 F3      [19] 2266 	ld	-13 (ix),a
                           2267 ;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   6FD5 3A 5D 62      [13] 2268 	ld	a,(#(_Enemy + 0x0003) + 0)
   6FD8 DD 77 FA      [19] 2269 	ld	-6 (ix),a
   6FDB 3A 5C 62      [13] 2270 	ld	a,(#(_Enemy + 0x0002) + 0)
   6FDE DD 77 FD      [19] 2271 	ld	-3 (ix),a
                           2272 ;src/main.c:498: enemigo->vigilancia=0;
   6FE1 DD 7E F8      [19] 2273 	ld	a,-8 (ix)
   6FE4 C6 08         [ 7] 2274 	add	a, #0x08
   6FE6 DD 77 F8      [19] 2275 	ld	-8 (ix),a
   6FE9 DD 7E F9      [19] 2276 	ld	a,-7 (ix)
   6FEC CE 00         [ 7] 2277 	adc	a, #0x00
   6FEE DD 77 F9      [19] 2278 	ld	-7 (ix),a
                           2279 ;src/main.c:491: if(Enemy.vigilancia){
   6FF1 DD 7E F3      [19] 2280 	ld	a,-13 (ix)
   6FF4 B7            [ 4] 2281 	or	a, a
   6FF5 CA 60 71      [10] 2282 	jp	Z,00146$
                           2283 ;src/main.c:492: if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   6FF8 DD 66 FA      [19] 2284 	ld	h,-6 (ix)
   6FFB DD 6E FD      [19] 2285 	ld	l,-3 (ix)
   6FFE E5            [11] 2286 	push	hl
   6FFF CD 5A 64      [17] 2287 	call	_myTile
   7002 F1            [10] 2288 	pop	af
   7003 7D            [ 4] 2289 	ld	a,l
   7004 C6 C8         [ 7] 2290 	add	a, #0xC8
   7006 DD 77 EF      [19] 2291 	ld	-17 (ix),a
   7009 7C            [ 4] 2292 	ld	a,h
   700A CE 00         [ 7] 2293 	adc	a, #0x00
   700C DD 77 F0      [19] 2294 	ld	-16 (ix),a
   700F E1            [10] 2295 	pop	hl
   7010 E5            [11] 2296 	push	hl
   7011 E5            [11] 2297 	push	hl
   7012 CD 7F 64      [17] 2298 	call	_mapActPosition
   7015 F1            [10] 2299 	pop	af
   7016 7D            [ 4] 2300 	ld	a,l
   7017 B7            [ 4] 2301 	or	a, a
   7018 C2 9E 70      [10] 2302 	jp	NZ,00132$
   701B 21 5D 62      [10] 2303 	ld	hl, #(_Enemy + 0x0003) + 0
   701E 56            [ 7] 2304 	ld	d,(hl)
   701F 3A 5C 62      [13] 2305 	ld	a,(#(_Enemy + 0x0002) + 0)
   7022 DD 77 EF      [19] 2306 	ld	-17 (ix),a
   7025 D5            [11] 2307 	push	de
   7026 33            [ 6] 2308 	inc	sp
   7027 DD 7E EF      [19] 2309 	ld	a,-17 (ix)
   702A F5            [11] 2310 	push	af
   702B 33            [ 6] 2311 	inc	sp
   702C CD 5A 64      [17] 2312 	call	_myTile
   702F F1            [10] 2313 	pop	af
   7030 DD 74 F0      [19] 2314 	ld	-16 (ix),h
   7033 DD 75 EF      [19] 2315 	ld	-17 (ix), l
   7036 7D            [ 4] 2316 	ld	a, l
   7037 C6 CA         [ 7] 2317 	add	a, #0xCA
   7039 DD 77 EF      [19] 2318 	ld	-17 (ix),a
   703C DD 7E F0      [19] 2319 	ld	a,-16 (ix)
   703F CE 00         [ 7] 2320 	adc	a, #0x00
   7041 DD 77 F0      [19] 2321 	ld	-16 (ix),a
   7044 E1            [10] 2322 	pop	hl
   7045 E5            [11] 2323 	push	hl
   7046 E5            [11] 2324 	push	hl
   7047 CD 7F 64      [17] 2325 	call	_mapActPosition
   704A F1            [10] 2326 	pop	af
   704B 7D            [ 4] 2327 	ld	a,l
   704C B7            [ 4] 2328 	or	a, a
   704D 20 4F         [12] 2329 	jr	NZ,00132$
   704F 21 5D 62      [10] 2330 	ld	hl, #(_Enemy + 0x0003) + 0
   7052 56            [ 7] 2331 	ld	d,(hl)
   7053 3A 5C 62      [13] 2332 	ld	a,(#(_Enemy + 0x0002) + 0)
   7056 DD 77 EF      [19] 2333 	ld	-17 (ix),a
   7059 D5            [11] 2334 	push	de
   705A 33            [ 6] 2335 	inc	sp
   705B DD 7E EF      [19] 2336 	ld	a,-17 (ix)
   705E F5            [11] 2337 	push	af
   705F 33            [ 6] 2338 	inc	sp
   7060 CD 5A 64      [17] 2339 	call	_myTile
   7063 F1            [10] 2340 	pop	af
   7064 DD 74 F0      [19] 2341 	ld	-16 (ix),h
   7067 DD 75 EF      [19] 2342 	ld	-17 (ix), l
   706A 7D            [ 4] 2343 	ld	a, l
   706B C6 CC         [ 7] 2344 	add	a, #0xCC
   706D DD 77 EF      [19] 2345 	ld	-17 (ix),a
   7070 DD 7E F0      [19] 2346 	ld	a,-16 (ix)
   7073 CE 00         [ 7] 2347 	adc	a, #0x00
   7075 DD 77 F0      [19] 2348 	ld	-16 (ix),a
   7078 E1            [10] 2349 	pop	hl
   7079 E5            [11] 2350 	push	hl
   707A E5            [11] 2351 	push	hl
   707B CD 7F 64      [17] 2352 	call	_mapActPosition
   707E F1            [10] 2353 	pop	af
   707F 7D            [ 4] 2354 	ld	a,l
   7080 B7            [ 4] 2355 	or	a, a
   7081 20 1B         [12] 2356 	jr	NZ,00132$
                           2357 ;src/main.c:493: enemigo->ny+=2;
   7083 DD 6E F4      [19] 2358 	ld	l,-12 (ix)
   7086 DD 66 F5      [19] 2359 	ld	h,-11 (ix)
   7089 7E            [ 7] 2360 	ld	a,(hl)
   708A C6 02         [ 7] 2361 	add	a, #0x02
   708C DD 6E F4      [19] 2362 	ld	l,-12 (ix)
   708F DD 66 F5      [19] 2363 	ld	h,-11 (ix)
   7092 77            [ 7] 2364 	ld	(hl),a
                           2365 ;src/main.c:494: enemigo->change=1;
   7093 DD 6E F6      [19] 2366 	ld	l,-10 (ix)
   7096 DD 66 F7      [19] 2367 	ld	h,-9 (ix)
   7099 36 01         [10] 2368 	ld	(hl),#0x01
   709B C3 BE 72      [10] 2369 	jp	00147$
   709E                    2370 00132$:
                           2371 ;src/main.c:495: }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ){
   709E 21 5D 62      [10] 2372 	ld	hl, #(_Enemy + 0x0003) + 0
   70A1 56            [ 7] 2373 	ld	d,(hl)
   70A2 3A 5C 62      [13] 2374 	ld	a,(#(_Enemy + 0x0002) + 0)
   70A5 DD 77 EF      [19] 2375 	ld	-17 (ix),a
   70A8 D5            [11] 2376 	push	de
   70A9 33            [ 6] 2377 	inc	sp
   70AA DD 7E EF      [19] 2378 	ld	a,-17 (ix)
   70AD F5            [11] 2379 	push	af
   70AE 33            [ 6] 2380 	inc	sp
   70AF CD 5A 64      [17] 2381 	call	_myTile
   70B2 F1            [10] 2382 	pop	af
   70B3 DD 74 F0      [19] 2383 	ld	-16 (ix),h
   70B6 DD 75 EF      [19] 2384 	ld	-17 (ix), l
   70B9 7D            [ 4] 2385 	ld	a, l
   70BA C6 D8         [ 7] 2386 	add	a,#0xD8
   70BC DD 77 EF      [19] 2387 	ld	-17 (ix),a
   70BF DD 7E F0      [19] 2388 	ld	a,-16 (ix)
   70C2 CE FF         [ 7] 2389 	adc	a,#0xFF
   70C4 DD 77 F0      [19] 2390 	ld	-16 (ix),a
   70C7 E1            [10] 2391 	pop	hl
   70C8 E5            [11] 2392 	push	hl
   70C9 E5            [11] 2393 	push	hl
   70CA CD 7F 64      [17] 2394 	call	_mapActPosition
   70CD F1            [10] 2395 	pop	af
   70CE 7D            [ 4] 2396 	ld	a,l
   70CF B7            [ 4] 2397 	or	a, a
   70D0 C2 BE 72      [10] 2398 	jp	NZ,00147$
   70D3 21 5D 62      [10] 2399 	ld	hl, #(_Enemy + 0x0003) + 0
   70D6 56            [ 7] 2400 	ld	d,(hl)
   70D7 3A 5C 62      [13] 2401 	ld	a,(#(_Enemy + 0x0002) + 0)
   70DA DD 77 EF      [19] 2402 	ld	-17 (ix),a
   70DD D5            [11] 2403 	push	de
   70DE 33            [ 6] 2404 	inc	sp
   70DF DD 7E EF      [19] 2405 	ld	a,-17 (ix)
   70E2 F5            [11] 2406 	push	af
   70E3 33            [ 6] 2407 	inc	sp
   70E4 CD 5A 64      [17] 2408 	call	_myTile
   70E7 F1            [10] 2409 	pop	af
   70E8 DD 74 F0      [19] 2410 	ld	-16 (ix),h
   70EB DD 75 EF      [19] 2411 	ld	-17 (ix), l
   70EE 7D            [ 4] 2412 	ld	a, l
   70EF C6 DA         [ 7] 2413 	add	a,#0xDA
   70F1 DD 77 EF      [19] 2414 	ld	-17 (ix),a
   70F4 DD 7E F0      [19] 2415 	ld	a,-16 (ix)
   70F7 CE FF         [ 7] 2416 	adc	a,#0xFF
   70F9 DD 77 F0      [19] 2417 	ld	-16 (ix),a
   70FC E1            [10] 2418 	pop	hl
   70FD E5            [11] 2419 	push	hl
   70FE E5            [11] 2420 	push	hl
   70FF CD 7F 64      [17] 2421 	call	_mapActPosition
   7102 F1            [10] 2422 	pop	af
   7103 7D            [ 4] 2423 	ld	a,l
   7104 B7            [ 4] 2424 	or	a, a
   7105 C2 BE 72      [10] 2425 	jp	NZ,00147$
   7108 21 5D 62      [10] 2426 	ld	hl, #(_Enemy + 0x0003) + 0
   710B 56            [ 7] 2427 	ld	d,(hl)
   710C 3A 5C 62      [13] 2428 	ld	a,(#(_Enemy + 0x0002) + 0)
   710F DD 77 EF      [19] 2429 	ld	-17 (ix),a
   7112 D5            [11] 2430 	push	de
   7113 33            [ 6] 2431 	inc	sp
   7114 DD 7E EF      [19] 2432 	ld	a,-17 (ix)
   7117 F5            [11] 2433 	push	af
   7118 33            [ 6] 2434 	inc	sp
   7119 CD 5A 64      [17] 2435 	call	_myTile
   711C F1            [10] 2436 	pop	af
   711D DD 74 F0      [19] 2437 	ld	-16 (ix),h
   7120 DD 75 EF      [19] 2438 	ld	-17 (ix), l
   7123 7D            [ 4] 2439 	ld	a, l
   7124 C6 DC         [ 7] 2440 	add	a,#0xDC
   7126 DD 77 EF      [19] 2441 	ld	-17 (ix),a
   7129 DD 7E F0      [19] 2442 	ld	a,-16 (ix)
   712C CE FF         [ 7] 2443 	adc	a,#0xFF
   712E DD 77 F0      [19] 2444 	ld	-16 (ix),a
   7131 E1            [10] 2445 	pop	hl
   7132 E5            [11] 2446 	push	hl
   7133 E5            [11] 2447 	push	hl
   7134 CD 7F 64      [17] 2448 	call	_mapActPosition
   7137 F1            [10] 2449 	pop	af
   7138 7D            [ 4] 2450 	ld	a,l
   7139 B7            [ 4] 2451 	or	a, a
   713A C2 BE 72      [10] 2452 	jp	NZ,00147$
                           2453 ;src/main.c:496: enemigo->ny-=2;
   713D DD 6E F4      [19] 2454 	ld	l,-12 (ix)
   7140 DD 66 F5      [19] 2455 	ld	h,-11 (ix)
   7143 7E            [ 7] 2456 	ld	a,(hl)
   7144 C6 FE         [ 7] 2457 	add	a,#0xFE
   7146 DD 6E F4      [19] 2458 	ld	l,-12 (ix)
   7149 DD 66 F5      [19] 2459 	ld	h,-11 (ix)
   714C 77            [ 7] 2460 	ld	(hl),a
                           2461 ;src/main.c:497: enemigo->change=1;
   714D DD 6E F6      [19] 2462 	ld	l,-10 (ix)
   7150 DD 66 F7      [19] 2463 	ld	h,-9 (ix)
   7153 36 01         [10] 2464 	ld	(hl),#0x01
                           2465 ;src/main.c:498: enemigo->vigilancia=0;
   7155 DD 6E F8      [19] 2466 	ld	l,-8 (ix)
   7158 DD 66 F9      [19] 2467 	ld	h,-7 (ix)
   715B 36 00         [10] 2468 	ld	(hl),#0x00
   715D C3 BE 72      [10] 2469 	jp	00147$
   7160                    2470 00146$:
                           2471 ;src/main.c:502: if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0  ){
   7160 DD 66 FA      [19] 2472 	ld	h,-6 (ix)
   7163 DD 6E FD      [19] 2473 	ld	l,-3 (ix)
   7166 E5            [11] 2474 	push	hl
   7167 CD 5A 64      [17] 2475 	call	_myTile
   716A F1            [10] 2476 	pop	af
   716B DD 74 F0      [19] 2477 	ld	-16 (ix),h
   716E DD 75 EF      [19] 2478 	ld	-17 (ix), l
   7171 7D            [ 4] 2479 	ld	a, l
   7172 C6 D8         [ 7] 2480 	add	a,#0xD8
   7174 DD 77 EF      [19] 2481 	ld	-17 (ix),a
   7177 DD 7E F0      [19] 2482 	ld	a,-16 (ix)
   717A CE FF         [ 7] 2483 	adc	a,#0xFF
   717C DD 77 F0      [19] 2484 	ld	-16 (ix),a
   717F E1            [10] 2485 	pop	hl
   7180 E5            [11] 2486 	push	hl
   7181 E5            [11] 2487 	push	hl
   7182 CD 7F 64      [17] 2488 	call	_mapActPosition
   7185 F1            [10] 2489 	pop	af
   7186 DD 75 EF      [19] 2490 	ld	-17 (ix), l
   7189 7D            [ 4] 2491 	ld	a, l
   718A B7            [ 4] 2492 	or	a, a
   718B C2 13 72      [10] 2493 	jp	NZ,00141$
   718E 3A 5D 62      [13] 2494 	ld	a,(#(_Enemy + 0x0003) + 0)
   7191 DD 77 EF      [19] 2495 	ld	-17 (ix),a
   7194 3A 5C 62      [13] 2496 	ld	a,(#(_Enemy + 0x0002) + 0)
   7197 DD 77 FD      [19] 2497 	ld	-3 (ix),a
   719A DD 66 EF      [19] 2498 	ld	h,-17 (ix)
   719D DD 6E FD      [19] 2499 	ld	l,-3 (ix)
   71A0 E5            [11] 2500 	push	hl
   71A1 CD 5A 64      [17] 2501 	call	_myTile
   71A4 F1            [10] 2502 	pop	af
   71A5 DD 74 F0      [19] 2503 	ld	-16 (ix),h
   71A8 DD 75 EF      [19] 2504 	ld	-17 (ix), l
   71AB 7D            [ 4] 2505 	ld	a, l
   71AC C6 DA         [ 7] 2506 	add	a,#0xDA
   71AE DD 77 EF      [19] 2507 	ld	-17 (ix),a
   71B1 DD 7E F0      [19] 2508 	ld	a,-16 (ix)
   71B4 CE FF         [ 7] 2509 	adc	a,#0xFF
   71B6 DD 77 F0      [19] 2510 	ld	-16 (ix),a
   71B9 E1            [10] 2511 	pop	hl
   71BA E5            [11] 2512 	push	hl
   71BB E5            [11] 2513 	push	hl
   71BC CD 7F 64      [17] 2514 	call	_mapActPosition
   71BF F1            [10] 2515 	pop	af
   71C0 7D            [ 4] 2516 	ld	a,l
   71C1 B7            [ 4] 2517 	or	a, a
   71C2 20 4F         [12] 2518 	jr	NZ,00141$
   71C4 21 5D 62      [10] 2519 	ld	hl, #(_Enemy + 0x0003) + 0
   71C7 56            [ 7] 2520 	ld	d,(hl)
   71C8 3A 5C 62      [13] 2521 	ld	a,(#(_Enemy + 0x0002) + 0)
   71CB DD 77 EF      [19] 2522 	ld	-17 (ix),a
   71CE D5            [11] 2523 	push	de
   71CF 33            [ 6] 2524 	inc	sp
   71D0 DD 7E EF      [19] 2525 	ld	a,-17 (ix)
   71D3 F5            [11] 2526 	push	af
   71D4 33            [ 6] 2527 	inc	sp
   71D5 CD 5A 64      [17] 2528 	call	_myTile
   71D8 F1            [10] 2529 	pop	af
   71D9 DD 74 F0      [19] 2530 	ld	-16 (ix),h
   71DC DD 75 EF      [19] 2531 	ld	-17 (ix), l
   71DF 7D            [ 4] 2532 	ld	a, l
   71E0 C6 DC         [ 7] 2533 	add	a,#0xDC
   71E2 DD 77 EF      [19] 2534 	ld	-17 (ix),a
   71E5 DD 7E F0      [19] 2535 	ld	a,-16 (ix)
   71E8 CE FF         [ 7] 2536 	adc	a,#0xFF
   71EA DD 77 F0      [19] 2537 	ld	-16 (ix),a
   71ED E1            [10] 2538 	pop	hl
   71EE E5            [11] 2539 	push	hl
   71EF E5            [11] 2540 	push	hl
   71F0 CD 7F 64      [17] 2541 	call	_mapActPosition
   71F3 F1            [10] 2542 	pop	af
   71F4 7D            [ 4] 2543 	ld	a,l
   71F5 B7            [ 4] 2544 	or	a, a
   71F6 20 1B         [12] 2545 	jr	NZ,00141$
                           2546 ;src/main.c:503: enemigo->ny-=2;
   71F8 DD 6E F4      [19] 2547 	ld	l,-12 (ix)
   71FB DD 66 F5      [19] 2548 	ld	h,-11 (ix)
   71FE 7E            [ 7] 2549 	ld	a,(hl)
   71FF C6 FE         [ 7] 2550 	add	a,#0xFE
   7201 DD 6E F4      [19] 2551 	ld	l,-12 (ix)
   7204 DD 66 F5      [19] 2552 	ld	h,-11 (ix)
   7207 77            [ 7] 2553 	ld	(hl),a
                           2554 ;src/main.c:504: enemigo->change=1;
   7208 DD 6E F6      [19] 2555 	ld	l,-10 (ix)
   720B DD 66 F7      [19] 2556 	ld	h,-9 (ix)
   720E 36 01         [10] 2557 	ld	(hl),#0x01
   7210 C3 BE 72      [10] 2558 	jp	00147$
   7213                    2559 00141$:
                           2560 ;src/main.c:505: }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0&& mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   7213 21 5D 62      [10] 2561 	ld	hl, #(_Enemy + 0x0003) + 0
   7216 56            [ 7] 2562 	ld	d,(hl)
   7217 3A 5C 62      [13] 2563 	ld	a, (#(_Enemy + 0x0002) + 0)
   721A D5            [11] 2564 	push	de
   721B 33            [ 6] 2565 	inc	sp
   721C F5            [11] 2566 	push	af
   721D 33            [ 6] 2567 	inc	sp
   721E CD 5A 64      [17] 2568 	call	_myTile
   7221 F1            [10] 2569 	pop	af
   7222 DD 74 F0      [19] 2570 	ld	-16 (ix),h
   7225 DD 75 EF      [19] 2571 	ld	-17 (ix), l
   7228 7D            [ 4] 2572 	ld	a, l
   7229 C6 C8         [ 7] 2573 	add	a, #0xC8
   722B DD 77 EF      [19] 2574 	ld	-17 (ix),a
   722E DD 7E F0      [19] 2575 	ld	a,-16 (ix)
   7231 CE 00         [ 7] 2576 	adc	a, #0x00
   7233 DD 77 F0      [19] 2577 	ld	-16 (ix),a
   7236 E1            [10] 2578 	pop	hl
   7237 E5            [11] 2579 	push	hl
   7238 E5            [11] 2580 	push	hl
   7239 CD 7F 64      [17] 2581 	call	_mapActPosition
   723C F1            [10] 2582 	pop	af
   723D 7D            [ 4] 2583 	ld	a,l
   723E B7            [ 4] 2584 	or	a, a
   723F C2 BE 72      [10] 2585 	jp	NZ,00147$
   7242 21 5D 62      [10] 2586 	ld	hl, #(_Enemy + 0x0003) + 0
   7245 56            [ 7] 2587 	ld	d,(hl)
   7246 3A 5C 62      [13] 2588 	ld	a, (#(_Enemy + 0x0002) + 0)
   7249 D5            [11] 2589 	push	de
   724A 33            [ 6] 2590 	inc	sp
   724B F5            [11] 2591 	push	af
   724C 33            [ 6] 2592 	inc	sp
   724D CD 5A 64      [17] 2593 	call	_myTile
   7250 F1            [10] 2594 	pop	af
   7251 DD 74 F0      [19] 2595 	ld	-16 (ix),h
   7254 DD 75 EF      [19] 2596 	ld	-17 (ix), l
   7257 7D            [ 4] 2597 	ld	a, l
   7258 C6 CA         [ 7] 2598 	add	a, #0xCA
   725A DD 77 EF      [19] 2599 	ld	-17 (ix),a
   725D DD 7E F0      [19] 2600 	ld	a,-16 (ix)
   7260 CE 00         [ 7] 2601 	adc	a, #0x00
   7262 DD 77 F0      [19] 2602 	ld	-16 (ix),a
   7265 E1            [10] 2603 	pop	hl
   7266 E5            [11] 2604 	push	hl
   7267 E5            [11] 2605 	push	hl
   7268 CD 7F 64      [17] 2606 	call	_mapActPosition
   726B F1            [10] 2607 	pop	af
   726C 7D            [ 4] 2608 	ld	a,l
   726D B7            [ 4] 2609 	or	a, a
   726E 20 4E         [12] 2610 	jr	NZ,00147$
   7270 21 5D 62      [10] 2611 	ld	hl, #(_Enemy + 0x0003) + 0
   7273 56            [ 7] 2612 	ld	d,(hl)
   7274 3A 5C 62      [13] 2613 	ld	a, (#(_Enemy + 0x0002) + 0)
   7277 D5            [11] 2614 	push	de
   7278 33            [ 6] 2615 	inc	sp
   7279 F5            [11] 2616 	push	af
   727A 33            [ 6] 2617 	inc	sp
   727B CD 5A 64      [17] 2618 	call	_myTile
   727E F1            [10] 2619 	pop	af
   727F DD 74 F0      [19] 2620 	ld	-16 (ix),h
   7282 DD 75 EF      [19] 2621 	ld	-17 (ix), l
   7285 7D            [ 4] 2622 	ld	a, l
   7286 C6 CC         [ 7] 2623 	add	a, #0xCC
   7288 DD 77 EF      [19] 2624 	ld	-17 (ix),a
   728B DD 7E F0      [19] 2625 	ld	a,-16 (ix)
   728E CE 00         [ 7] 2626 	adc	a, #0x00
   7290 DD 77 F0      [19] 2627 	ld	-16 (ix),a
   7293 E1            [10] 2628 	pop	hl
   7294 E5            [11] 2629 	push	hl
   7295 E5            [11] 2630 	push	hl
   7296 CD 7F 64      [17] 2631 	call	_mapActPosition
   7299 F1            [10] 2632 	pop	af
   729A 7D            [ 4] 2633 	ld	a,l
   729B B7            [ 4] 2634 	or	a, a
   729C 20 20         [12] 2635 	jr	NZ,00147$
                           2636 ;src/main.c:506: enemigo->ny+=2;
   729E DD 6E F4      [19] 2637 	ld	l,-12 (ix)
   72A1 DD 66 F5      [19] 2638 	ld	h,-11 (ix)
   72A4 7E            [ 7] 2639 	ld	a,(hl)
   72A5 C6 02         [ 7] 2640 	add	a, #0x02
   72A7 DD 6E F4      [19] 2641 	ld	l,-12 (ix)
   72AA DD 66 F5      [19] 2642 	ld	h,-11 (ix)
   72AD 77            [ 7] 2643 	ld	(hl),a
                           2644 ;src/main.c:507: enemigo->change=1;
   72AE DD 6E F6      [19] 2645 	ld	l,-10 (ix)
   72B1 DD 66 F7      [19] 2646 	ld	h,-9 (ix)
   72B4 36 01         [10] 2647 	ld	(hl),#0x01
                           2648 ;src/main.c:508: enemigo->vigilancia=1;
   72B6 DD 6E F8      [19] 2649 	ld	l,-8 (ix)
   72B9 DD 66 F9      [19] 2650 	ld	h,-7 (ix)
   72BC 36 01         [10] 2651 	ld	(hl),#0x01
   72BE                    2652 00147$:
                           2653 ;src/main.c:514: if(distancia()<5)enemigo->estado=Atacar;
   72BE CD 6E 6B      [17] 2654 	call	_distancia
   72C1 7D            [ 4] 2655 	ld	a,l
   72C2 D6 05         [ 7] 2656 	sub	a, #0x05
   72C4 D2 39 78      [10] 2657 	jp	NC,00204$
   72C7 DD 6E FE      [19] 2658 	ld	l,-2 (ix)
   72CA DD 66 FF      [19] 2659 	ld	h,-1 (ix)
   72CD 36 01         [10] 2660 	ld	(hl),#0x01
   72CF C3 39 78      [10] 2661 	jp	00204$
   72D2                    2662 00199$:
                           2663 ;src/main.c:520: if(Personaje.nx < Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0 ){
                           2664 ;src/main.c:522: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
                           2665 ;src/main.c:518: }else if(Enemy.estado==Atacar){
   72D2 DD 7E FB      [19] 2666 	ld	a,-5 (ix)
   72D5 3D            [ 4] 2667 	dec	a
   72D6 C2 54 75      [10] 2668 	jp	NZ,00196$
                           2669 ;src/main.c:520: if(Personaje.nx < Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0 ){
   72D9 21 47 62      [10] 2670 	ld	hl, #(_Personaje + 0x0002) + 0
   72DC 56            [ 7] 2671 	ld	d,(hl)
   72DD 3A 5C 62      [13] 2672 	ld	a,(#(_Enemy + 0x0002) + 0)
   72E0 DD 77 EF      [19] 2673 	ld	-17 (ix),a
   72E3 7A            [ 4] 2674 	ld	a,d
   72E4 DD 96 EF      [19] 2675 	sub	a, -17 (ix)
   72E7 D2 78 73      [10] 2676 	jp	NC,00151$
   72EA 3A 5D 62      [13] 2677 	ld	a, (#(_Enemy + 0x0003) + 0)
   72ED F5            [11] 2678 	push	af
   72EE 33            [ 6] 2679 	inc	sp
   72EF DD 7E EF      [19] 2680 	ld	a,-17 (ix)
   72F2 F5            [11] 2681 	push	af
   72F3 33            [ 6] 2682 	inc	sp
   72F4 CD 5A 64      [17] 2683 	call	_myTile
   72F7 F1            [10] 2684 	pop	af
   72F8 DD 74 F0      [19] 2685 	ld	-16 (ix),h
   72FB DD 75 EF      [19] 2686 	ld	-17 (ix),l
   72FE E1            [10] 2687 	pop	hl
   72FF E5            [11] 2688 	push	hl
   7300 2B            [ 6] 2689 	dec	hl
   7301 E3            [19] 2690 	ex	(sp), hl
   7302 E1            [10] 2691 	pop	hl
   7303 E5            [11] 2692 	push	hl
   7304 E5            [11] 2693 	push	hl
   7305 CD 7F 64      [17] 2694 	call	_mapActPosition
   7308 F1            [10] 2695 	pop	af
   7309 7D            [ 4] 2696 	ld	a,l
   730A B7            [ 4] 2697 	or	a, a
   730B 20 6B         [12] 2698 	jr	NZ,00151$
   730D 21 5D 62      [10] 2699 	ld	hl, #(_Enemy + 0x0003) + 0
   7310 56            [ 7] 2700 	ld	d,(hl)
   7311 3A 5C 62      [13] 2701 	ld	a, (#(_Enemy + 0x0002) + 0)
   7314 D5            [11] 2702 	push	de
   7315 33            [ 6] 2703 	inc	sp
   7316 F5            [11] 2704 	push	af
   7317 33            [ 6] 2705 	inc	sp
   7318 CD 5A 64      [17] 2706 	call	_myTile
   731B F1            [10] 2707 	pop	af
   731C DD 74 F0      [19] 2708 	ld	-16 (ix),h
   731F DD 75 EF      [19] 2709 	ld	-17 (ix), l
   7322 7D            [ 4] 2710 	ld	a, l
   7323 C6 4F         [ 7] 2711 	add	a, #0x4F
   7325 DD 77 EF      [19] 2712 	ld	-17 (ix),a
   7328 DD 7E F0      [19] 2713 	ld	a,-16 (ix)
   732B CE 00         [ 7] 2714 	adc	a, #0x00
   732D DD 77 F0      [19] 2715 	ld	-16 (ix),a
   7330 E1            [10] 2716 	pop	hl
   7331 E5            [11] 2717 	push	hl
   7332 E5            [11] 2718 	push	hl
   7333 CD 7F 64      [17] 2719 	call	_mapActPosition
   7336 F1            [10] 2720 	pop	af
   7337 7D            [ 4] 2721 	ld	a,l
   7338 B7            [ 4] 2722 	or	a, a
   7339 20 3D         [12] 2723 	jr	NZ,00151$
   733B 21 5D 62      [10] 2724 	ld	hl, #(_Enemy + 0x0003) + 0
   733E 56            [ 7] 2725 	ld	d,(hl)
   733F 3A 5C 62      [13] 2726 	ld	a, (#(_Enemy + 0x0002) + 0)
   7342 D5            [11] 2727 	push	de
   7343 33            [ 6] 2728 	inc	sp
   7344 F5            [11] 2729 	push	af
   7345 33            [ 6] 2730 	inc	sp
   7346 CD 5A 64      [17] 2731 	call	_myTile
   7349 F1            [10] 2732 	pop	af
   734A DD 74 F0      [19] 2733 	ld	-16 (ix),h
   734D DD 75 EF      [19] 2734 	ld	-17 (ix), l
   7350 7D            [ 4] 2735 	ld	a, l
   7351 C6 9F         [ 7] 2736 	add	a, #0x9F
   7353 DD 77 EF      [19] 2737 	ld	-17 (ix),a
   7356 DD 7E F0      [19] 2738 	ld	a,-16 (ix)
   7359 CE 00         [ 7] 2739 	adc	a, #0x00
   735B DD 77 F0      [19] 2740 	ld	-16 (ix),a
   735E E1            [10] 2741 	pop	hl
   735F E5            [11] 2742 	push	hl
   7360 E5            [11] 2743 	push	hl
   7361 CD 7F 64      [17] 2744 	call	_mapActPosition
   7364 F1            [10] 2745 	pop	af
   7365 7D            [ 4] 2746 	ld	a,l
   7366 B7            [ 4] 2747 	or	a, a
   7367 20 0F         [12] 2748 	jr	NZ,00151$
                           2749 ;src/main.c:521: enemigo->nx-=1;
   7369 DD 6E F1      [19] 2750 	ld	l,-15 (ix)
   736C DD 66 F2      [19] 2751 	ld	h,-14 (ix)
   736F 56            [ 7] 2752 	ld	d,(hl)
   7370 15            [ 4] 2753 	dec	d
   7371 DD 6E F1      [19] 2754 	ld	l,-15 (ix)
   7374 DD 66 F2      [19] 2755 	ld	h,-14 (ix)
   7377 72            [ 7] 2756 	ld	(hl),d
   7378                    2757 00151$:
                           2758 ;src/main.c:522: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   7378 21 48 62      [10] 2759 	ld	hl, #(_Personaje + 0x0003) + 0
   737B 5E            [ 7] 2760 	ld	e,(hl)
   737C 21 5D 62      [10] 2761 	ld	hl, #(_Enemy + 0x0003) + 0
   737F 56            [ 7] 2762 	ld	d,(hl)
   7380 7A            [ 4] 2763 	ld	a,d
   7381 93            [ 4] 2764 	sub	a, e
   7382 30 60         [12] 2765 	jr	NC,00156$
   7384 3A 5C 62      [13] 2766 	ld	a, (#(_Enemy + 0x0002) + 0)
   7387 D5            [11] 2767 	push	de
   7388 33            [ 6] 2768 	inc	sp
   7389 F5            [11] 2769 	push	af
   738A 33            [ 6] 2770 	inc	sp
   738B CD 5A 64      [17] 2771 	call	_myTile
   738E F1            [10] 2772 	pop	af
   738F 01 C8 00      [10] 2773 	ld	bc,#0x00C8
   7392 09            [11] 2774 	add	hl,bc
   7393 E5            [11] 2775 	push	hl
   7394 CD 7F 64      [17] 2776 	call	_mapActPosition
   7397 F1            [10] 2777 	pop	af
   7398 7D            [ 4] 2778 	ld	a,l
   7399 B7            [ 4] 2779 	or	a, a
   739A 20 48         [12] 2780 	jr	NZ,00156$
   739C 3A 5D 62      [13] 2781 	ld	a, (#(_Enemy + 0x0003) + 0)
   739F 21 5C 62      [10] 2782 	ld	hl, #(_Enemy + 0x0002) + 0
   73A2 56            [ 7] 2783 	ld	d,(hl)
   73A3 F5            [11] 2784 	push	af
   73A4 33            [ 6] 2785 	inc	sp
   73A5 D5            [11] 2786 	push	de
   73A6 33            [ 6] 2787 	inc	sp
   73A7 CD 5A 64      [17] 2788 	call	_myTile
   73AA F1            [10] 2789 	pop	af
   73AB 01 CA 00      [10] 2790 	ld	bc,#0x00CA
   73AE 09            [11] 2791 	add	hl,bc
   73AF E5            [11] 2792 	push	hl
   73B0 CD 7F 64      [17] 2793 	call	_mapActPosition
   73B3 F1            [10] 2794 	pop	af
   73B4 7D            [ 4] 2795 	ld	a,l
   73B5 B7            [ 4] 2796 	or	a, a
   73B6 20 2C         [12] 2797 	jr	NZ,00156$
   73B8 3A 5D 62      [13] 2798 	ld	a, (#(_Enemy + 0x0003) + 0)
   73BB 21 5C 62      [10] 2799 	ld	hl, #(_Enemy + 0x0002) + 0
   73BE 56            [ 7] 2800 	ld	d,(hl)
   73BF F5            [11] 2801 	push	af
   73C0 33            [ 6] 2802 	inc	sp
   73C1 D5            [11] 2803 	push	de
   73C2 33            [ 6] 2804 	inc	sp
   73C3 CD 5A 64      [17] 2805 	call	_myTile
   73C6 F1            [10] 2806 	pop	af
   73C7 01 CC 00      [10] 2807 	ld	bc,#0x00CC
   73CA 09            [11] 2808 	add	hl,bc
   73CB E5            [11] 2809 	push	hl
   73CC CD 7F 64      [17] 2810 	call	_mapActPosition
   73CF F1            [10] 2811 	pop	af
   73D0 7D            [ 4] 2812 	ld	a,l
   73D1 B7            [ 4] 2813 	or	a, a
   73D2 20 10         [12] 2814 	jr	NZ,00156$
                           2815 ;src/main.c:523: enemigo->ny+=2;
   73D4 DD 6E F4      [19] 2816 	ld	l,-12 (ix)
   73D7 DD 66 F5      [19] 2817 	ld	h,-11 (ix)
   73DA 7E            [ 7] 2818 	ld	a,(hl)
   73DB C6 02         [ 7] 2819 	add	a, #0x02
   73DD DD 6E F4      [19] 2820 	ld	l,-12 (ix)
   73E0 DD 66 F5      [19] 2821 	ld	h,-11 (ix)
   73E3 77            [ 7] 2822 	ld	(hl),a
   73E4                    2823 00156$:
                           2824 ;src/main.c:524: }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
   73E4 21 48 62      [10] 2825 	ld	hl, #(_Personaje + 0x0003) + 0
   73E7 56            [ 7] 2826 	ld	d,(hl)
   73E8 3A 5D 62      [13] 2827 	ld	a,(#(_Enemy + 0x0003) + 0)
   73EB DD 77 EF      [19] 2828 	ld	-17 (ix),a
   73EE 7A            [ 4] 2829 	ld	a,d
   73EF DD 96 EF      [19] 2830 	sub	a, -17 (ix)
   73F2 D2 9B 74      [10] 2831 	jp	NC,00161$
   73F5 21 5C 62      [10] 2832 	ld	hl, #(_Enemy + 0x0002) + 0
   73F8 56            [ 7] 2833 	ld	d,(hl)
   73F9 DD 7E EF      [19] 2834 	ld	a,-17 (ix)
   73FC F5            [11] 2835 	push	af
   73FD 33            [ 6] 2836 	inc	sp
   73FE D5            [11] 2837 	push	de
   73FF 33            [ 6] 2838 	inc	sp
   7400 CD 5A 64      [17] 2839 	call	_myTile
   7403 F1            [10] 2840 	pop	af
   7404 DD 74 F0      [19] 2841 	ld	-16 (ix),h
   7407 DD 75 EF      [19] 2842 	ld	-17 (ix), l
   740A 7D            [ 4] 2843 	ld	a, l
   740B C6 D8         [ 7] 2844 	add	a,#0xD8
   740D DD 77 EF      [19] 2845 	ld	-17 (ix),a
   7410 DD 7E F0      [19] 2846 	ld	a,-16 (ix)
   7413 CE FF         [ 7] 2847 	adc	a,#0xFF
   7415 DD 77 F0      [19] 2848 	ld	-16 (ix),a
   7418 E1            [10] 2849 	pop	hl
   7419 E5            [11] 2850 	push	hl
   741A E5            [11] 2851 	push	hl
   741B CD 7F 64      [17] 2852 	call	_mapActPosition
   741E F1            [10] 2853 	pop	af
   741F 7D            [ 4] 2854 	ld	a,l
   7420 B7            [ 4] 2855 	or	a, a
   7421 20 78         [12] 2856 	jr	NZ,00161$
   7423 21 5D 62      [10] 2857 	ld	hl, #(_Enemy + 0x0003) + 0
   7426 56            [ 7] 2858 	ld	d,(hl)
   7427 3A 5C 62      [13] 2859 	ld	a,(#(_Enemy + 0x0002) + 0)
   742A DD 77 EF      [19] 2860 	ld	-17 (ix),a
   742D D5            [11] 2861 	push	de
   742E 33            [ 6] 2862 	inc	sp
   742F DD 7E EF      [19] 2863 	ld	a,-17 (ix)
   7432 F5            [11] 2864 	push	af
   7433 33            [ 6] 2865 	inc	sp
   7434 CD 5A 64      [17] 2866 	call	_myTile
   7437 F1            [10] 2867 	pop	af
   7438 DD 74 F0      [19] 2868 	ld	-16 (ix),h
   743B DD 75 EF      [19] 2869 	ld	-17 (ix), l
   743E 7D            [ 4] 2870 	ld	a, l
   743F C6 DA         [ 7] 2871 	add	a,#0xDA
   7441 DD 77 EF      [19] 2872 	ld	-17 (ix),a
   7444 DD 7E F0      [19] 2873 	ld	a,-16 (ix)
   7447 CE FF         [ 7] 2874 	adc	a,#0xFF
   7449 DD 77 F0      [19] 2875 	ld	-16 (ix),a
   744C E1            [10] 2876 	pop	hl
   744D E5            [11] 2877 	push	hl
   744E E5            [11] 2878 	push	hl
   744F CD 7F 64      [17] 2879 	call	_mapActPosition
   7452 F1            [10] 2880 	pop	af
   7453 7D            [ 4] 2881 	ld	a,l
   7454 B7            [ 4] 2882 	or	a, a
   7455 20 44         [12] 2883 	jr	NZ,00161$
   7457 21 5D 62      [10] 2884 	ld	hl, #(_Enemy + 0x0003) + 0
   745A 56            [ 7] 2885 	ld	d,(hl)
   745B 3A 5C 62      [13] 2886 	ld	a,(#(_Enemy + 0x0002) + 0)
   745E DD 77 EF      [19] 2887 	ld	-17 (ix),a
   7461 D5            [11] 2888 	push	de
   7462 33            [ 6] 2889 	inc	sp
   7463 DD 7E EF      [19] 2890 	ld	a,-17 (ix)
   7466 F5            [11] 2891 	push	af
   7467 33            [ 6] 2892 	inc	sp
   7468 CD 5A 64      [17] 2893 	call	_myTile
   746B F1            [10] 2894 	pop	af
   746C DD 74 F0      [19] 2895 	ld	-16 (ix),h
   746F DD 75 EF      [19] 2896 	ld	-17 (ix), l
   7472 7D            [ 4] 2897 	ld	a, l
   7473 C6 DC         [ 7] 2898 	add	a,#0xDC
   7475 DD 77 EF      [19] 2899 	ld	-17 (ix),a
   7478 DD 7E F0      [19] 2900 	ld	a,-16 (ix)
   747B CE FF         [ 7] 2901 	adc	a,#0xFF
   747D DD 77 F0      [19] 2902 	ld	-16 (ix),a
   7480 E1            [10] 2903 	pop	hl
   7481 E5            [11] 2904 	push	hl
   7482 E5            [11] 2905 	push	hl
   7483 CD 7F 64      [17] 2906 	call	_mapActPosition
   7486 F1            [10] 2907 	pop	af
   7487 7D            [ 4] 2908 	ld	a,l
   7488 B7            [ 4] 2909 	or	a, a
   7489 20 10         [12] 2910 	jr	NZ,00161$
                           2911 ;src/main.c:525: enemigo->ny-=2;
   748B DD 6E F4      [19] 2912 	ld	l,-12 (ix)
   748E DD 66 F5      [19] 2913 	ld	h,-11 (ix)
   7491 7E            [ 7] 2914 	ld	a,(hl)
   7492 C6 FE         [ 7] 2915 	add	a,#0xFE
   7494 DD 6E F4      [19] 2916 	ld	l,-12 (ix)
   7497 DD 66 F5      [19] 2917 	ld	h,-11 (ix)
   749A 77            [ 7] 2918 	ld	(hl),a
   749B                    2919 00161$:
                           2920 ;src/main.c:526: }if(Personaje.nx > Enemy.nx  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
   749B 21 47 62      [10] 2921 	ld	hl, #(_Personaje + 0x0002) + 0
   749E 56            [ 7] 2922 	ld	d,(hl)
   749F 3A 5C 62      [13] 2923 	ld	a,(#(_Enemy + 0x0002) + 0)
   74A2 DD 77 EF      [19] 2924 	ld	-17 (ix), a
   74A5 92            [ 4] 2925 	sub	a, d
   74A6 D2 39 75      [10] 2926 	jp	NC,00166$
   74A9 3A 5D 62      [13] 2927 	ld	a, (#(_Enemy + 0x0003) + 0)
   74AC F5            [11] 2928 	push	af
   74AD 33            [ 6] 2929 	inc	sp
   74AE DD 7E EF      [19] 2930 	ld	a,-17 (ix)
   74B1 F5            [11] 2931 	push	af
   74B2 33            [ 6] 2932 	inc	sp
   74B3 CD 5A 64      [17] 2933 	call	_myTile
   74B6 F1            [10] 2934 	pop	af
   74B7 DD 74 F0      [19] 2935 	ld	-16 (ix),h
   74BA DD 75 EF      [19] 2936 	ld	-17 (ix), l
   74BD 7D            [ 4] 2937 	ld	a, l
   74BE C6 05         [ 7] 2938 	add	a, #0x05
   74C0 DD 77 EF      [19] 2939 	ld	-17 (ix),a
   74C3 DD 7E F0      [19] 2940 	ld	a,-16 (ix)
   74C6 CE 00         [ 7] 2941 	adc	a, #0x00
   74C8 DD 77 F0      [19] 2942 	ld	-16 (ix),a
   74CB E1            [10] 2943 	pop	hl
   74CC E5            [11] 2944 	push	hl
   74CD E5            [11] 2945 	push	hl
   74CE CD 7F 64      [17] 2946 	call	_mapActPosition
   74D1 F1            [10] 2947 	pop	af
   74D2 7D            [ 4] 2948 	ld	a,l
   74D3 B7            [ 4] 2949 	or	a, a
   74D4 20 63         [12] 2950 	jr	NZ,00166$
   74D6 21 5D 62      [10] 2951 	ld	hl, #(_Enemy + 0x0003) + 0
   74D9 56            [ 7] 2952 	ld	d,(hl)
   74DA 3A 5C 62      [13] 2953 	ld	a, (#(_Enemy + 0x0002) + 0)
   74DD D5            [11] 2954 	push	de
   74DE 33            [ 6] 2955 	inc	sp
   74DF F5            [11] 2956 	push	af
   74E0 33            [ 6] 2957 	inc	sp
   74E1 CD 5A 64      [17] 2958 	call	_myTile
   74E4 F1            [10] 2959 	pop	af
   74E5 DD 74 F0      [19] 2960 	ld	-16 (ix),h
   74E8 DD 75 EF      [19] 2961 	ld	-17 (ix), l
   74EB 7D            [ 4] 2962 	ld	a, l
   74EC C6 55         [ 7] 2963 	add	a, #0x55
   74EE DD 77 EF      [19] 2964 	ld	-17 (ix),a
   74F1 DD 7E F0      [19] 2965 	ld	a,-16 (ix)
   74F4 CE 00         [ 7] 2966 	adc	a, #0x00
   74F6 DD 77 F0      [19] 2967 	ld	-16 (ix),a
   74F9 E1            [10] 2968 	pop	hl
   74FA E5            [11] 2969 	push	hl
   74FB E5            [11] 2970 	push	hl
   74FC CD 7F 64      [17] 2971 	call	_mapActPosition
   74FF F1            [10] 2972 	pop	af
   7500 7D            [ 4] 2973 	ld	a,l
   7501 B7            [ 4] 2974 	or	a, a
   7502 20 35         [12] 2975 	jr	NZ,00166$
   7504 21 5D 62      [10] 2976 	ld	hl, #(_Enemy + 0x0003) + 0
   7507 56            [ 7] 2977 	ld	d,(hl)
   7508 3A 5C 62      [13] 2978 	ld	a, (#(_Enemy + 0x0002) + 0)
   750B D5            [11] 2979 	push	de
   750C 33            [ 6] 2980 	inc	sp
   750D F5            [11] 2981 	push	af
   750E 33            [ 6] 2982 	inc	sp
   750F CD 5A 64      [17] 2983 	call	_myTile
   7512 F1            [10] 2984 	pop	af
   7513 DD 74 F0      [19] 2985 	ld	-16 (ix),h
   7516 DD 75 EF      [19] 2986 	ld	-17 (ix), l
   7519 7D            [ 4] 2987 	ld	a, l
   751A C6 A5         [ 7] 2988 	add	a, #0xA5
   751C DD 77 EF      [19] 2989 	ld	-17 (ix),a
   751F DD 7E F0      [19] 2990 	ld	a,-16 (ix)
   7522 CE 00         [ 7] 2991 	adc	a, #0x00
   7524 DD 77 F0      [19] 2992 	ld	-16 (ix),a
   7527 E1            [10] 2993 	pop	hl
   7528 E5            [11] 2994 	push	hl
   7529 E5            [11] 2995 	push	hl
   752A CD 7F 64      [17] 2996 	call	_mapActPosition
   752D F1            [10] 2997 	pop	af
   752E 7D            [ 4] 2998 	ld	a,l
   752F B7            [ 4] 2999 	or	a, a
   7530 20 07         [12] 3000 	jr	NZ,00166$
                           3001 ;src/main.c:527: enemigo->nx+=1;
   7532 DD 6E F1      [19] 3002 	ld	l,-15 (ix)
   7535 DD 66 F2      [19] 3003 	ld	h,-14 (ix)
   7538 34            [11] 3004 	inc	(hl)
   7539                    3005 00166$:
                           3006 ;src/main.c:529: if(distancia()>5)enemigo->estado=Vigilar;
   7539 CD 6E 6B      [17] 3007 	call	_distancia
   753C 3E 05         [ 7] 3008 	ld	a,#0x05
   753E 95            [ 4] 3009 	sub	a, l
   753F 30 08         [12] 3010 	jr	NC,00171$
   7541 DD 6E FE      [19] 3011 	ld	l,-2 (ix)
   7544 DD 66 FF      [19] 3012 	ld	h,-1 (ix)
   7547 36 00         [10] 3013 	ld	(hl),#0x00
   7549                    3014 00171$:
                           3015 ;src/main.c:530: enemigo->change=1;
   7549 DD 6E F6      [19] 3016 	ld	l,-10 (ix)
   754C DD 66 F7      [19] 3017 	ld	h,-9 (ix)
   754F 36 01         [10] 3018 	ld	(hl),#0x01
   7551 C3 39 78      [10] 3019 	jp	00204$
   7554                    3020 00196$:
                           3021 ;src/main.c:532: }else if(Enemy.estado==Huir && distancia()<5 ){
   7554 DD 7E FB      [19] 3022 	ld	a,-5 (ix)
   7557 D6 02         [ 7] 3023 	sub	a, #0x02
   7559 C2 39 78      [10] 3024 	jp	NZ,00204$
   755C CD 6E 6B      [17] 3025 	call	_distancia
   755F 7D            [ 4] 3026 	ld	a,l
   7560 D6 05         [ 7] 3027 	sub	a, #0x05
   7562 D2 39 78      [10] 3028 	jp	NC,00204$
                           3029 ;src/main.c:534: if(Personaje.nx < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0){
   7565 21 47 62      [10] 3030 	ld	hl, #(_Personaje + 0x0002) + 0
   7568 56            [ 7] 3031 	ld	d,(hl)
   7569 3A 5C 62      [13] 3032 	ld	a,(#(_Enemy + 0x0002) + 0)
   756C DD 77 EF      [19] 3033 	ld	-17 (ix),a
   756F 7A            [ 4] 3034 	ld	a,d
   7570 DD 96 EF      [19] 3035 	sub	a, -17 (ix)
   7573 D2 16 76      [10] 3036 	jp	NC,00173$
   7576 3A 5D 62      [13] 3037 	ld	a, (#(_Enemy + 0x0003) + 0)
   7579 F5            [11] 3038 	push	af
   757A 33            [ 6] 3039 	inc	sp
   757B DD 7E EF      [19] 3040 	ld	a,-17 (ix)
   757E F5            [11] 3041 	push	af
   757F 33            [ 6] 3042 	inc	sp
   7580 CD 5A 64      [17] 3043 	call	_myTile
   7583 F1            [10] 3044 	pop	af
   7584 DD 74 F0      [19] 3045 	ld	-16 (ix),h
   7587 DD 75 EF      [19] 3046 	ld	-17 (ix), l
   758A 7D            [ 4] 3047 	ld	a, l
   758B C6 05         [ 7] 3048 	add	a, #0x05
   758D DD 77 EF      [19] 3049 	ld	-17 (ix),a
   7590 DD 7E F0      [19] 3050 	ld	a,-16 (ix)
   7593 CE 00         [ 7] 3051 	adc	a, #0x00
   7595 DD 77 F0      [19] 3052 	ld	-16 (ix),a
   7598 E1            [10] 3053 	pop	hl
   7599 E5            [11] 3054 	push	hl
   759A E5            [11] 3055 	push	hl
   759B CD 7F 64      [17] 3056 	call	_mapActPosition
   759E F1            [10] 3057 	pop	af
   759F 7D            [ 4] 3058 	ld	a,l
   75A0 B7            [ 4] 3059 	or	a, a
   75A1 20 73         [12] 3060 	jr	NZ,00173$
   75A3 21 5D 62      [10] 3061 	ld	hl, #(_Enemy + 0x0003) + 0
   75A6 56            [ 7] 3062 	ld	d,(hl)
   75A7 3A 5C 62      [13] 3063 	ld	a, (#(_Enemy + 0x0002) + 0)
   75AA D5            [11] 3064 	push	de
   75AB 33            [ 6] 3065 	inc	sp
   75AC F5            [11] 3066 	push	af
   75AD 33            [ 6] 3067 	inc	sp
   75AE CD 5A 64      [17] 3068 	call	_myTile
   75B1 F1            [10] 3069 	pop	af
   75B2 DD 74 F0      [19] 3070 	ld	-16 (ix),h
   75B5 DD 75 EF      [19] 3071 	ld	-17 (ix), l
   75B8 7D            [ 4] 3072 	ld	a, l
   75B9 C6 55         [ 7] 3073 	add	a, #0x55
   75BB DD 77 EF      [19] 3074 	ld	-17 (ix),a
   75BE DD 7E F0      [19] 3075 	ld	a,-16 (ix)
   75C1 CE 00         [ 7] 3076 	adc	a, #0x00
   75C3 DD 77 F0      [19] 3077 	ld	-16 (ix),a
   75C6 E1            [10] 3078 	pop	hl
   75C7 E5            [11] 3079 	push	hl
   75C8 E5            [11] 3080 	push	hl
   75C9 CD 7F 64      [17] 3081 	call	_mapActPosition
   75CC F1            [10] 3082 	pop	af
   75CD 7D            [ 4] 3083 	ld	a,l
   75CE B7            [ 4] 3084 	or	a, a
   75CF 20 45         [12] 3085 	jr	NZ,00173$
   75D1 21 5D 62      [10] 3086 	ld	hl, #(_Enemy + 0x0003) + 0
   75D4 56            [ 7] 3087 	ld	d,(hl)
   75D5 3A 5C 62      [13] 3088 	ld	a, (#(_Enemy + 0x0002) + 0)
   75D8 D5            [11] 3089 	push	de
   75D9 33            [ 6] 3090 	inc	sp
   75DA F5            [11] 3091 	push	af
   75DB 33            [ 6] 3092 	inc	sp
   75DC CD 5A 64      [17] 3093 	call	_myTile
   75DF F1            [10] 3094 	pop	af
   75E0 DD 74 F0      [19] 3095 	ld	-16 (ix),h
   75E3 DD 75 EF      [19] 3096 	ld	-17 (ix), l
   75E6 7D            [ 4] 3097 	ld	a, l
   75E7 C6 A5         [ 7] 3098 	add	a, #0xA5
   75E9 DD 77 EF      [19] 3099 	ld	-17 (ix),a
   75EC DD 7E F0      [19] 3100 	ld	a,-16 (ix)
   75EF CE 00         [ 7] 3101 	adc	a, #0x00
   75F1 DD 77 F0      [19] 3102 	ld	-16 (ix),a
   75F4 E1            [10] 3103 	pop	hl
   75F5 E5            [11] 3104 	push	hl
   75F6 E5            [11] 3105 	push	hl
   75F7 CD 7F 64      [17] 3106 	call	_mapActPosition
   75FA F1            [10] 3107 	pop	af
   75FB 7D            [ 4] 3108 	ld	a,l
   75FC B7            [ 4] 3109 	or	a, a
   75FD 20 17         [12] 3110 	jr	NZ,00173$
                           3111 ;src/main.c:535: enemigo->nx+=1;
   75FF DD 6E F1      [19] 3112 	ld	l,-15 (ix)
   7602 DD 66 F2      [19] 3113 	ld	h,-14 (ix)
   7605 7E            [ 7] 3114 	ld	a,(hl)
   7606 3C            [ 4] 3115 	inc	a
   7607 DD 6E F1      [19] 3116 	ld	l,-15 (ix)
   760A DD 66 F2      [19] 3117 	ld	h,-14 (ix)
   760D 77            [ 7] 3118 	ld	(hl),a
                           3119 ;src/main.c:536: enemigo->change=1;
   760E DD 6E F6      [19] 3120 	ld	l,-10 (ix)
   7611 DD 66 F7      [19] 3121 	ld	h,-9 (ix)
   7614 36 01         [10] 3122 	ld	(hl),#0x01
   7616                    3123 00173$:
                           3124 ;src/main.c:537: }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
   7616 21 48 62      [10] 3125 	ld	hl, #(_Personaje + 0x0003) + 0
   7619 56            [ 7] 3126 	ld	d,(hl)
   761A 3A 5D 62      [13] 3127 	ld	a,(#(_Enemy + 0x0003) + 0)
   761D DD 77 EF      [19] 3128 	ld	-17 (ix), a
   7620 92            [ 4] 3129 	sub	a, d
   7621 D2 C8 76      [10] 3130 	jp	NC,00178$
   7624 3A 5C 62      [13] 3131 	ld	a,(#(_Enemy + 0x0002) + 0)
   7627 DD 77 FD      [19] 3132 	ld	-3 (ix),a
   762A DD 66 EF      [19] 3133 	ld	h,-17 (ix)
   762D DD 6E FD      [19] 3134 	ld	l,-3 (ix)
   7630 E5            [11] 3135 	push	hl
   7631 CD 5A 64      [17] 3136 	call	_myTile
   7634 F1            [10] 3137 	pop	af
   7635 DD 74 F0      [19] 3138 	ld	-16 (ix),h
   7638 DD 75 EF      [19] 3139 	ld	-17 (ix), l
   763B 7D            [ 4] 3140 	ld	a, l
   763C C6 D8         [ 7] 3141 	add	a,#0xD8
   763E DD 77 EF      [19] 3142 	ld	-17 (ix),a
   7641 DD 7E F0      [19] 3143 	ld	a,-16 (ix)
   7644 CE FF         [ 7] 3144 	adc	a,#0xFF
   7646 DD 77 F0      [19] 3145 	ld	-16 (ix),a
   7649 E1            [10] 3146 	pop	hl
   764A E5            [11] 3147 	push	hl
   764B E5            [11] 3148 	push	hl
   764C CD 7F 64      [17] 3149 	call	_mapActPosition
   764F F1            [10] 3150 	pop	af
   7650 7D            [ 4] 3151 	ld	a,l
   7651 B7            [ 4] 3152 	or	a, a
   7652 20 74         [12] 3153 	jr	NZ,00178$
   7654 21 5D 62      [10] 3154 	ld	hl, #(_Enemy + 0x0003) + 0
   7657 56            [ 7] 3155 	ld	d,(hl)
   7658 3A 5C 62      [13] 3156 	ld	a, (#(_Enemy + 0x0002) + 0)
   765B D5            [11] 3157 	push	de
   765C 33            [ 6] 3158 	inc	sp
   765D F5            [11] 3159 	push	af
   765E 33            [ 6] 3160 	inc	sp
   765F CD 5A 64      [17] 3161 	call	_myTile
   7662 F1            [10] 3162 	pop	af
   7663 DD 74 F0      [19] 3163 	ld	-16 (ix),h
   7666 DD 75 EF      [19] 3164 	ld	-17 (ix), l
   7669 7D            [ 4] 3165 	ld	a, l
   766A C6 DA         [ 7] 3166 	add	a,#0xDA
   766C DD 77 EF      [19] 3167 	ld	-17 (ix),a
   766F DD 7E F0      [19] 3168 	ld	a,-16 (ix)
   7672 CE FF         [ 7] 3169 	adc	a,#0xFF
   7674 DD 77 F0      [19] 3170 	ld	-16 (ix),a
   7677 E1            [10] 3171 	pop	hl
   7678 E5            [11] 3172 	push	hl
   7679 E5            [11] 3173 	push	hl
   767A CD 7F 64      [17] 3174 	call	_mapActPosition
   767D F1            [10] 3175 	pop	af
   767E 7D            [ 4] 3176 	ld	a,l
   767F B7            [ 4] 3177 	or	a, a
   7680 20 46         [12] 3178 	jr	NZ,00178$
   7682 21 5D 62      [10] 3179 	ld	hl, #(_Enemy + 0x0003) + 0
   7685 56            [ 7] 3180 	ld	d,(hl)
   7686 3A 5C 62      [13] 3181 	ld	a, (#(_Enemy + 0x0002) + 0)
   7689 D5            [11] 3182 	push	de
   768A 33            [ 6] 3183 	inc	sp
   768B F5            [11] 3184 	push	af
   768C 33            [ 6] 3185 	inc	sp
   768D CD 5A 64      [17] 3186 	call	_myTile
   7690 F1            [10] 3187 	pop	af
   7691 DD 74 F0      [19] 3188 	ld	-16 (ix),h
   7694 DD 75 EF      [19] 3189 	ld	-17 (ix), l
   7697 7D            [ 4] 3190 	ld	a, l
   7698 C6 DC         [ 7] 3191 	add	a,#0xDC
   769A DD 77 EF      [19] 3192 	ld	-17 (ix),a
   769D DD 7E F0      [19] 3193 	ld	a,-16 (ix)
   76A0 CE FF         [ 7] 3194 	adc	a,#0xFF
   76A2 DD 77 F0      [19] 3195 	ld	-16 (ix),a
   76A5 E1            [10] 3196 	pop	hl
   76A6 E5            [11] 3197 	push	hl
   76A7 E5            [11] 3198 	push	hl
   76A8 CD 7F 64      [17] 3199 	call	_mapActPosition
   76AB F1            [10] 3200 	pop	af
   76AC 7D            [ 4] 3201 	ld	a,l
   76AD B7            [ 4] 3202 	or	a, a
   76AE 20 18         [12] 3203 	jr	NZ,00178$
                           3204 ;src/main.c:538: enemigo->ny-=2;
   76B0 DD 6E F4      [19] 3205 	ld	l,-12 (ix)
   76B3 DD 66 F5      [19] 3206 	ld	h,-11 (ix)
   76B6 7E            [ 7] 3207 	ld	a,(hl)
   76B7 C6 FE         [ 7] 3208 	add	a,#0xFE
   76B9 DD 6E F4      [19] 3209 	ld	l,-12 (ix)
   76BC DD 66 F5      [19] 3210 	ld	h,-11 (ix)
   76BF 77            [ 7] 3211 	ld	(hl),a
                           3212 ;src/main.c:539: enemigo->change=1;
   76C0 DD 6E F6      [19] 3213 	ld	l,-10 (ix)
   76C3 DD 66 F7      [19] 3214 	ld	h,-9 (ix)
   76C6 36 01         [10] 3215 	ld	(hl),#0x01
   76C8                    3216 00178$:
                           3217 ;src/main.c:540: }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
   76C8 21 48 62      [10] 3218 	ld	hl, #(_Personaje + 0x0003) + 0
   76CB 56            [ 7] 3219 	ld	d,(hl)
   76CC 3A 5D 62      [13] 3220 	ld	a,(#(_Enemy + 0x0003) + 0)
   76CF DD 77 EF      [19] 3221 	ld	-17 (ix),a
   76D2 7A            [ 4] 3222 	ld	a,d
   76D3 DD 96 EF      [19] 3223 	sub	a, -17 (ix)
   76D6 D2 8A 77      [10] 3224 	jp	NC,00183$
   76D9 3A 5C 62      [13] 3225 	ld	a,(#(_Enemy + 0x0002) + 0)
   76DC DD 77 FD      [19] 3226 	ld	-3 (ix),a
   76DF DD 66 EF      [19] 3227 	ld	h,-17 (ix)
   76E2 DD 6E FD      [19] 3228 	ld	l,-3 (ix)
   76E5 E5            [11] 3229 	push	hl
   76E6 CD 5A 64      [17] 3230 	call	_myTile
   76E9 F1            [10] 3231 	pop	af
   76EA DD 74 F0      [19] 3232 	ld	-16 (ix),h
   76ED DD 75 EF      [19] 3233 	ld	-17 (ix), l
   76F0 7D            [ 4] 3234 	ld	a, l
   76F1 C6 C8         [ 7] 3235 	add	a, #0xC8
   76F3 DD 77 EF      [19] 3236 	ld	-17 (ix),a
   76F6 DD 7E F0      [19] 3237 	ld	a,-16 (ix)
   76F9 CE 00         [ 7] 3238 	adc	a, #0x00
   76FB DD 77 F0      [19] 3239 	ld	-16 (ix),a
   76FE E1            [10] 3240 	pop	hl
   76FF E5            [11] 3241 	push	hl
   7700 E5            [11] 3242 	push	hl
   7701 CD 7F 64      [17] 3243 	call	_mapActPosition
   7704 F1            [10] 3244 	pop	af
   7705 7D            [ 4] 3245 	ld	a,l
   7706 B7            [ 4] 3246 	or	a, a
   7707 C2 8A 77      [10] 3247 	jp	NZ,00183$
   770A 21 5D 62      [10] 3248 	ld	hl, #(_Enemy + 0x0003) + 0
   770D 56            [ 7] 3249 	ld	d,(hl)
   770E 3A 5C 62      [13] 3250 	ld	a,(#(_Enemy + 0x0002) + 0)
   7711 DD 77 EF      [19] 3251 	ld	-17 (ix),a
   7714 D5            [11] 3252 	push	de
   7715 33            [ 6] 3253 	inc	sp
   7716 DD 7E EF      [19] 3254 	ld	a,-17 (ix)
   7719 F5            [11] 3255 	push	af
   771A 33            [ 6] 3256 	inc	sp
   771B CD 5A 64      [17] 3257 	call	_myTile
   771E F1            [10] 3258 	pop	af
   771F DD 74 F0      [19] 3259 	ld	-16 (ix),h
   7722 DD 75 EF      [19] 3260 	ld	-17 (ix), l
   7725 7D            [ 4] 3261 	ld	a, l
   7726 C6 CA         [ 7] 3262 	add	a, #0xCA
   7728 DD 77 EF      [19] 3263 	ld	-17 (ix),a
   772B DD 7E F0      [19] 3264 	ld	a,-16 (ix)
   772E CE 00         [ 7] 3265 	adc	a, #0x00
   7730 DD 77 F0      [19] 3266 	ld	-16 (ix),a
   7733 E1            [10] 3267 	pop	hl
   7734 E5            [11] 3268 	push	hl
   7735 E5            [11] 3269 	push	hl
   7736 CD 7F 64      [17] 3270 	call	_mapActPosition
   7739 F1            [10] 3271 	pop	af
   773A 7D            [ 4] 3272 	ld	a,l
   773B B7            [ 4] 3273 	or	a, a
   773C 20 4C         [12] 3274 	jr	NZ,00183$
   773E 21 5D 62      [10] 3275 	ld	hl, #(_Enemy + 0x0003) + 0
   7741 56            [ 7] 3276 	ld	d,(hl)
   7742 3A 5C 62      [13] 3277 	ld	a,(#(_Enemy + 0x0002) + 0)
   7745 DD 77 EF      [19] 3278 	ld	-17 (ix),a
   7748 D5            [11] 3279 	push	de
   7749 33            [ 6] 3280 	inc	sp
   774A DD 7E EF      [19] 3281 	ld	a,-17 (ix)
   774D F5            [11] 3282 	push	af
   774E 33            [ 6] 3283 	inc	sp
   774F CD 5A 64      [17] 3284 	call	_myTile
   7752 F1            [10] 3285 	pop	af
   7753 DD 74 F0      [19] 3286 	ld	-16 (ix),h
   7756 DD 75 EF      [19] 3287 	ld	-17 (ix), l
   7759 7D            [ 4] 3288 	ld	a, l
   775A C6 CC         [ 7] 3289 	add	a, #0xCC
   775C DD 77 EF      [19] 3290 	ld	-17 (ix),a
   775F DD 7E F0      [19] 3291 	ld	a,-16 (ix)
   7762 CE 00         [ 7] 3292 	adc	a, #0x00
   7764 DD 77 F0      [19] 3293 	ld	-16 (ix),a
   7767 E1            [10] 3294 	pop	hl
   7768 E5            [11] 3295 	push	hl
   7769 E5            [11] 3296 	push	hl
   776A CD 7F 64      [17] 3297 	call	_mapActPosition
   776D F1            [10] 3298 	pop	af
   776E 7D            [ 4] 3299 	ld	a,l
   776F B7            [ 4] 3300 	or	a, a
   7770 20 18         [12] 3301 	jr	NZ,00183$
                           3302 ;src/main.c:541: enemigo->ny+=2;
   7772 DD 6E F4      [19] 3303 	ld	l,-12 (ix)
   7775 DD 66 F5      [19] 3304 	ld	h,-11 (ix)
   7778 7E            [ 7] 3305 	ld	a,(hl)
   7779 C6 02         [ 7] 3306 	add	a, #0x02
   777B DD 6E F4      [19] 3307 	ld	l,-12 (ix)
   777E DD 66 F5      [19] 3308 	ld	h,-11 (ix)
   7781 77            [ 7] 3309 	ld	(hl),a
                           3310 ;src/main.c:542: enemigo->change=1;
   7782 DD 6E F6      [19] 3311 	ld	l,-10 (ix)
   7785 DD 66 F7      [19] 3312 	ld	h,-9 (ix)
   7788 36 01         [10] 3313 	ld	(hl),#0x01
   778A                    3314 00183$:
                           3315 ;src/main.c:543: }if(Personaje.nx > Enemy.nx  &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
   778A 21 47 62      [10] 3316 	ld	hl, #(_Personaje + 0x0002) + 0
   778D 56            [ 7] 3317 	ld	d,(hl)
   778E 21 5C 62      [10] 3318 	ld	hl, #(_Enemy + 0x0002) + 0
   7791 46            [ 7] 3319 	ld	b,(hl)
   7792 78            [ 4] 3320 	ld	a,b
   7793 92            [ 4] 3321 	sub	a, d
   7794 D2 39 78      [10] 3322 	jp	NC,00204$
   7797 3A 5D 62      [13] 3323 	ld	a, (#(_Enemy + 0x0003) + 0)
   779A F5            [11] 3324 	push	af
   779B 33            [ 6] 3325 	inc	sp
   779C C5            [11] 3326 	push	bc
   779D 33            [ 6] 3327 	inc	sp
   779E CD 5A 64      [17] 3328 	call	_myTile
   77A1 F1            [10] 3329 	pop	af
   77A2 DD 74 F0      [19] 3330 	ld	-16 (ix),h
   77A5 DD 75 EF      [19] 3331 	ld	-17 (ix),l
   77A8 E1            [10] 3332 	pop	hl
   77A9 E5            [11] 3333 	push	hl
   77AA 2B            [ 6] 3334 	dec	hl
   77AB E3            [19] 3335 	ex	(sp), hl
   77AC E1            [10] 3336 	pop	hl
   77AD E5            [11] 3337 	push	hl
   77AE E5            [11] 3338 	push	hl
   77AF CD 7F 64      [17] 3339 	call	_mapActPosition
   77B2 F1            [10] 3340 	pop	af
   77B3 7D            [ 4] 3341 	ld	a,l
   77B4 B7            [ 4] 3342 	or	a, a
   77B5 C2 39 78      [10] 3343 	jp	NZ,00204$
   77B8 3A 5D 62      [13] 3344 	ld	a, (#(_Enemy + 0x0003) + 0)
   77BB 21 5C 62      [10] 3345 	ld	hl, #(_Enemy + 0x0002) + 0
   77BE 56            [ 7] 3346 	ld	d,(hl)
   77BF F5            [11] 3347 	push	af
   77C0 33            [ 6] 3348 	inc	sp
   77C1 D5            [11] 3349 	push	de
   77C2 33            [ 6] 3350 	inc	sp
   77C3 CD 5A 64      [17] 3351 	call	_myTile
   77C6 F1            [10] 3352 	pop	af
   77C7 DD 74 F0      [19] 3353 	ld	-16 (ix),h
   77CA DD 75 EF      [19] 3354 	ld	-17 (ix), l
   77CD 7D            [ 4] 3355 	ld	a, l
   77CE C6 4F         [ 7] 3356 	add	a, #0x4F
   77D0 DD 77 EF      [19] 3357 	ld	-17 (ix),a
   77D3 DD 7E F0      [19] 3358 	ld	a,-16 (ix)
   77D6 CE 00         [ 7] 3359 	adc	a, #0x00
   77D8 DD 77 F0      [19] 3360 	ld	-16 (ix),a
   77DB E1            [10] 3361 	pop	hl
   77DC E5            [11] 3362 	push	hl
   77DD E5            [11] 3363 	push	hl
   77DE CD 7F 64      [17] 3364 	call	_mapActPosition
   77E1 F1            [10] 3365 	pop	af
   77E2 DD 75 EF      [19] 3366 	ld	-17 (ix), l
   77E5 7D            [ 4] 3367 	ld	a, l
   77E6 B7            [ 4] 3368 	or	a, a
   77E7 20 50         [12] 3369 	jr	NZ,00204$
   77E9 3A 5D 62      [13] 3370 	ld	a,(#(_Enemy + 0x0003) + 0)
   77EC DD 77 EF      [19] 3371 	ld	-17 (ix),a
   77EF 3A 5C 62      [13] 3372 	ld	a,(#(_Enemy + 0x0002) + 0)
   77F2 DD 77 FD      [19] 3373 	ld	-3 (ix),a
   77F5 DD 66 EF      [19] 3374 	ld	h,-17 (ix)
   77F8 DD 6E FD      [19] 3375 	ld	l,-3 (ix)
   77FB E5            [11] 3376 	push	hl
   77FC CD 5A 64      [17] 3377 	call	_myTile
   77FF F1            [10] 3378 	pop	af
   7800 DD 74 F0      [19] 3379 	ld	-16 (ix),h
   7803 DD 75 EF      [19] 3380 	ld	-17 (ix), l
   7806 7D            [ 4] 3381 	ld	a, l
   7807 C6 9F         [ 7] 3382 	add	a, #0x9F
   7809 DD 77 EF      [19] 3383 	ld	-17 (ix),a
   780C DD 7E F0      [19] 3384 	ld	a,-16 (ix)
   780F CE 00         [ 7] 3385 	adc	a, #0x00
   7811 DD 77 F0      [19] 3386 	ld	-16 (ix),a
   7814 E1            [10] 3387 	pop	hl
   7815 E5            [11] 3388 	push	hl
   7816 E5            [11] 3389 	push	hl
   7817 CD 7F 64      [17] 3390 	call	_mapActPosition
   781A F1            [10] 3391 	pop	af
   781B DD 75 EF      [19] 3392 	ld	-17 (ix), l
   781E 7D            [ 4] 3393 	ld	a, l
   781F B7            [ 4] 3394 	or	a, a
   7820 20 17         [12] 3395 	jr	NZ,00204$
                           3396 ;src/main.c:544: enemigo->nx-=1;
   7822 DD 6E F1      [19] 3397 	ld	l,-15 (ix)
   7825 DD 66 F2      [19] 3398 	ld	h,-14 (ix)
   7828 56            [ 7] 3399 	ld	d,(hl)
   7829 15            [ 4] 3400 	dec	d
   782A DD 6E F1      [19] 3401 	ld	l,-15 (ix)
   782D DD 66 F2      [19] 3402 	ld	h,-14 (ix)
   7830 72            [ 7] 3403 	ld	(hl),d
                           3404 ;src/main.c:545: enemigo->change=1;
   7831 DD 6E F6      [19] 3405 	ld	l,-10 (ix)
   7834 DD 66 F7      [19] 3406 	ld	h,-9 (ix)
   7837 36 01         [10] 3407 	ld	(hl),#0x01
   7839                    3408 00204$:
   7839 DD F9         [10] 3409 	ld	sp, ix
   783B DD E1         [14] 3410 	pop	ix
   783D C9            [10] 3411 	ret
                           3412 ;src/main.c:559: void ComprobarColision(TEntity *personaje, PoderEntity *poder, EnemyEntity *enemigo, mierdaEntity *mierda){
                           3413 ;	---------------------------------
                           3414 ; Function ComprobarColision
                           3415 ; ---------------------------------
   783E                    3416 _ComprobarColision::
   783E DD E5         [15] 3417 	push	ix
   7840 DD 21 00 00   [14] 3418 	ld	ix,#0
   7844 DD 39         [15] 3419 	add	ix,sp
   7846 F5            [11] 3420 	push	af
                           3421 ;src/main.c:571: if(Personaje.nx+Personaje.w > Enemy.nx && Personaje.nx < Enemy.nx+Enemy.w && Personaje.ny+Personaje.h > Enemy.ny && Personaje.ny < Enemy.ny+Enemy.h){
   7847 3A 47 62      [13] 3422 	ld	a, (#(_Personaje + 0x0002) + 0)
   784A 5F            [ 4] 3423 	ld	e,a
   784B 16 00         [ 7] 3424 	ld	d,#0x00
   784D 3A 49 62      [13] 3425 	ld	a, (#(_Personaje + 0x0004) + 0)
   7850 6F            [ 4] 3426 	ld	l,a
   7851 26 00         [ 7] 3427 	ld	h,#0x00
   7853 19            [11] 3428 	add	hl,de
   7854 E3            [19] 3429 	ex	(sp), hl
   7855 3A 5C 62      [13] 3430 	ld	a, (#_Enemy + 2)
   7858 4F            [ 4] 3431 	ld	c,a
   7859 06 00         [ 7] 3432 	ld	b,#0x00
   785B 79            [ 4] 3433 	ld	a,c
   785C DD 96 FE      [19] 3434 	sub	a, -2 (ix)
   785F 78            [ 4] 3435 	ld	a,b
   7860 DD 9E FF      [19] 3436 	sbc	a, -1 (ix)
   7863 E2 68 78      [10] 3437 	jp	PO, 00166$
   7866 EE 80         [ 7] 3438 	xor	a, #0x80
   7868                    3439 00166$:
   7868 F2 C8 78      [10] 3440 	jp	P,00102$
   786B 3A 5E 62      [13] 3441 	ld	a, (#_Enemy + 4)
   786E 6F            [ 4] 3442 	ld	l,a
   786F 26 00         [ 7] 3443 	ld	h,#0x00
   7871 09            [11] 3444 	add	hl,bc
   7872 7B            [ 4] 3445 	ld	a,e
   7873 95            [ 4] 3446 	sub	a, l
   7874 7A            [ 4] 3447 	ld	a,d
   7875 9C            [ 4] 3448 	sbc	a, h
   7876 E2 7B 78      [10] 3449 	jp	PO, 00167$
   7879 EE 80         [ 7] 3450 	xor	a, #0x80
   787B                    3451 00167$:
   787B F2 C8 78      [10] 3452 	jp	P,00102$
   787E 3A 48 62      [13] 3453 	ld	a, (#(_Personaje + 0x0003) + 0)
   7881 5F            [ 4] 3454 	ld	e,a
   7882 16 00         [ 7] 3455 	ld	d,#0x00
   7884 3A 4A 62      [13] 3456 	ld	a, (#(_Personaje + 0x0005) + 0)
   7887 6F            [ 4] 3457 	ld	l,a
   7888 26 00         [ 7] 3458 	ld	h,#0x00
   788A 19            [11] 3459 	add	hl,de
   788B E3            [19] 3460 	ex	(sp), hl
   788C 3A 5D 62      [13] 3461 	ld	a, (#_Enemy + 3)
   788F 4F            [ 4] 3462 	ld	c,a
   7890 06 00         [ 7] 3463 	ld	b,#0x00
   7892 79            [ 4] 3464 	ld	a,c
   7893 DD 96 FE      [19] 3465 	sub	a, -2 (ix)
   7896 78            [ 4] 3466 	ld	a,b
   7897 DD 9E FF      [19] 3467 	sbc	a, -1 (ix)
   789A E2 9F 78      [10] 3468 	jp	PO, 00168$
   789D EE 80         [ 7] 3469 	xor	a, #0x80
   789F                    3470 00168$:
   789F F2 C8 78      [10] 3471 	jp	P,00102$
   78A2 3A 5F 62      [13] 3472 	ld	a, (#_Enemy + 5)
   78A5 6F            [ 4] 3473 	ld	l,a
   78A6 26 00         [ 7] 3474 	ld	h,#0x00
   78A8 09            [11] 3475 	add	hl,bc
   78A9 7B            [ 4] 3476 	ld	a,e
   78AA 95            [ 4] 3477 	sub	a, l
   78AB 7A            [ 4] 3478 	ld	a,d
   78AC 9C            [ 4] 3479 	sbc	a, h
   78AD E2 B2 78      [10] 3480 	jp	PO, 00169$
   78B0 EE 80         [ 7] 3481 	xor	a, #0x80
   78B2                    3482 00169$:
   78B2 F2 C8 78      [10] 3483 	jp	P,00102$
                           3484 ;src/main.c:572: respawn(personaje,enemigo);
   78B5 DD 6E 08      [19] 3485 	ld	l,8 (ix)
   78B8 DD 66 09      [19] 3486 	ld	h,9 (ix)
   78BB E5            [11] 3487 	push	hl
   78BC DD 6E 04      [19] 3488 	ld	l,4 (ix)
   78BF DD 66 05      [19] 3489 	ld	h,5 (ix)
   78C2 E5            [11] 3490 	push	hl
   78C3 CD 04 6B      [17] 3491 	call	_respawn
   78C6 F1            [10] 3492 	pop	af
   78C7 F1            [10] 3493 	pop	af
   78C8                    3494 00102$:
                           3495 ;src/main.c:576: if(Personaje.nx+Personaje.w > Power.x && Personaje.nx < Power.x+Power.w && Personaje.ny+Personaje.h > Power.y && Personaje.ny < Power.y+Power.h){
   78C8 3A 47 62      [13] 3496 	ld	a, (#(_Personaje + 0x0002) + 0)
   78CB 5F            [ 4] 3497 	ld	e,a
   78CC 16 00         [ 7] 3498 	ld	d,#0x00
   78CE 3A 49 62      [13] 3499 	ld	a, (#(_Personaje + 0x0004) + 0)
   78D1 6F            [ 4] 3500 	ld	l,a
   78D2 26 00         [ 7] 3501 	ld	h,#0x00
   78D4 19            [11] 3502 	add	hl,de
   78D5 E3            [19] 3503 	ex	(sp), hl
   78D6 3A 66 62      [13] 3504 	ld	a, (#_Power + 0)
   78D9 4F            [ 4] 3505 	ld	c,a
   78DA 06 00         [ 7] 3506 	ld	b,#0x00
   78DC 79            [ 4] 3507 	ld	a,c
   78DD DD 96 FE      [19] 3508 	sub	a, -2 (ix)
   78E0 78            [ 4] 3509 	ld	a,b
   78E1 DD 9E FF      [19] 3510 	sbc	a, -1 (ix)
   78E4 E2 E9 78      [10] 3511 	jp	PO, 00170$
   78E7 EE 80         [ 7] 3512 	xor	a, #0x80
   78E9                    3513 00170$:
   78E9 F2 4E 79      [10] 3514 	jp	P,00107$
   78EC 3A 68 62      [13] 3515 	ld	a, (#_Power + 2)
   78EF 6F            [ 4] 3516 	ld	l,a
   78F0 26 00         [ 7] 3517 	ld	h,#0x00
   78F2 09            [11] 3518 	add	hl,bc
   78F3 7B            [ 4] 3519 	ld	a,e
   78F4 95            [ 4] 3520 	sub	a, l
   78F5 7A            [ 4] 3521 	ld	a,d
   78F6 9C            [ 4] 3522 	sbc	a, h
   78F7 E2 FC 78      [10] 3523 	jp	PO, 00171$
   78FA EE 80         [ 7] 3524 	xor	a, #0x80
   78FC                    3525 00171$:
   78FC F2 4E 79      [10] 3526 	jp	P,00107$
   78FF 3A 48 62      [13] 3527 	ld	a, (#(_Personaje + 0x0003) + 0)
   7902 5F            [ 4] 3528 	ld	e,a
   7903 16 00         [ 7] 3529 	ld	d,#0x00
   7905 3A 4A 62      [13] 3530 	ld	a, (#(_Personaje + 0x0005) + 0)
   7908 6F            [ 4] 3531 	ld	l,a
   7909 26 00         [ 7] 3532 	ld	h,#0x00
   790B 19            [11] 3533 	add	hl,de
   790C E3            [19] 3534 	ex	(sp), hl
   790D 3A 67 62      [13] 3535 	ld	a, (#_Power + 1)
   7910 4F            [ 4] 3536 	ld	c,a
   7911 06 00         [ 7] 3537 	ld	b,#0x00
   7913 79            [ 4] 3538 	ld	a,c
   7914 DD 96 FE      [19] 3539 	sub	a, -2 (ix)
   7917 78            [ 4] 3540 	ld	a,b
   7918 DD 9E FF      [19] 3541 	sbc	a, -1 (ix)
   791B E2 20 79      [10] 3542 	jp	PO, 00172$
   791E EE 80         [ 7] 3543 	xor	a, #0x80
   7920                    3544 00172$:
   7920 F2 4E 79      [10] 3545 	jp	P,00107$
   7923 3A 69 62      [13] 3546 	ld	a, (#_Power + 3)
   7926 6F            [ 4] 3547 	ld	l,a
   7927 26 00         [ 7] 3548 	ld	h,#0x00
   7929 09            [11] 3549 	add	hl,bc
   792A 7B            [ 4] 3550 	ld	a,e
   792B 95            [ 4] 3551 	sub	a, l
   792C 7A            [ 4] 3552 	ld	a,d
   792D 9C            [ 4] 3553 	sbc	a, h
   792E E2 33 79      [10] 3554 	jp	PO, 00173$
   7931 EE 80         [ 7] 3555 	xor	a, #0x80
   7933                    3556 00173$:
   7933 F2 4E 79      [10] 3557 	jp	P,00107$
                           3558 ;src/main.c:577: poder->cogido=1;
   7936 DD 6E 06      [19] 3559 	ld	l,6 (ix)
   7939 DD 66 07      [19] 3560 	ld	h,7 (ix)
   793C 01 08 00      [10] 3561 	ld	bc,#0x0008
   793F 09            [11] 3562 	add	hl,bc
   7940 36 01         [10] 3563 	ld	(hl),#0x01
                           3564 ;src/main.c:578: enemigo->estado=Huir;
   7942 DD 6E 08      [19] 3565 	ld	l,8 (ix)
   7945 DD 66 09      [19] 3566 	ld	h,9 (ix)
   7948 01 0B 00      [10] 3567 	ld	bc,#0x000B
   794B 09            [11] 3568 	add	hl,bc
   794C 36 02         [10] 3569 	ld	(hl),#0x02
   794E                    3570 00107$:
                           3571 ;src/main.c:580: if(Personaje.nx+Personaje.w > Mierda.x && Personaje.nx < Mierda.x+Mierda.w && Personaje.ny+Personaje.h > Mierda.y && Personaje.ny < Mierda.y+Mierda.h){
   794E 3A 47 62      [13] 3572 	ld	a, (#(_Personaje + 0x0002) + 0)
   7951 5F            [ 4] 3573 	ld	e,a
   7952 16 00         [ 7] 3574 	ld	d,#0x00
   7954 3A 49 62      [13] 3575 	ld	a, (#(_Personaje + 0x0004) + 0)
   7957 6F            [ 4] 3576 	ld	l,a
   7958 26 00         [ 7] 3577 	ld	h,#0x00
   795A 19            [11] 3578 	add	hl,de
   795B E3            [19] 3579 	ex	(sp), hl
   795C 3A 6F 62      [13] 3580 	ld	a, (#_Mierda + 0)
   795F 4F            [ 4] 3581 	ld	c,a
   7960 06 00         [ 7] 3582 	ld	b,#0x00
   7962 79            [ 4] 3583 	ld	a,c
   7963 DD 96 FE      [19] 3584 	sub	a, -2 (ix)
   7966 78            [ 4] 3585 	ld	a,b
   7967 DD 9E FF      [19] 3586 	sbc	a, -1 (ix)
   796A E2 6F 79      [10] 3587 	jp	PO, 00174$
   796D EE 80         [ 7] 3588 	xor	a, #0x80
   796F                    3589 00174$:
   796F F2 C8 79      [10] 3590 	jp	P,00116$
   7972 3A 71 62      [13] 3591 	ld	a, (#_Mierda + 2)
   7975 6F            [ 4] 3592 	ld	l,a
   7976 26 00         [ 7] 3593 	ld	h,#0x00
   7978 09            [11] 3594 	add	hl,bc
   7979 7B            [ 4] 3595 	ld	a,e
   797A 95            [ 4] 3596 	sub	a, l
   797B 7A            [ 4] 3597 	ld	a,d
   797C 9C            [ 4] 3598 	sbc	a, h
   797D E2 82 79      [10] 3599 	jp	PO, 00175$
   7980 EE 80         [ 7] 3600 	xor	a, #0x80
   7982                    3601 00175$:
   7982 F2 C8 79      [10] 3602 	jp	P,00116$
   7985 3A 48 62      [13] 3603 	ld	a, (#(_Personaje + 0x0003) + 0)
   7988 5F            [ 4] 3604 	ld	e,a
   7989 16 00         [ 7] 3605 	ld	d,#0x00
   798B 3A 4A 62      [13] 3606 	ld	a, (#(_Personaje + 0x0005) + 0)
   798E 6F            [ 4] 3607 	ld	l,a
   798F 26 00         [ 7] 3608 	ld	h,#0x00
   7991 19            [11] 3609 	add	hl,de
   7992 E3            [19] 3610 	ex	(sp), hl
   7993 3A 70 62      [13] 3611 	ld	a, (#_Mierda + 1)
   7996 4F            [ 4] 3612 	ld	c,a
   7997 06 00         [ 7] 3613 	ld	b,#0x00
   7999 79            [ 4] 3614 	ld	a,c
   799A DD 96 FE      [19] 3615 	sub	a, -2 (ix)
   799D 78            [ 4] 3616 	ld	a,b
   799E DD 9E FF      [19] 3617 	sbc	a, -1 (ix)
   79A1 E2 A6 79      [10] 3618 	jp	PO, 00176$
   79A4 EE 80         [ 7] 3619 	xor	a, #0x80
   79A6                    3620 00176$:
   79A6 F2 C8 79      [10] 3621 	jp	P,00116$
   79A9 3A 72 62      [13] 3622 	ld	a, (#_Mierda + 3)
   79AC 6F            [ 4] 3623 	ld	l,a
   79AD 26 00         [ 7] 3624 	ld	h,#0x00
   79AF 09            [11] 3625 	add	hl,bc
   79B0 7B            [ 4] 3626 	ld	a,e
   79B1 95            [ 4] 3627 	sub	a, l
   79B2 7A            [ 4] 3628 	ld	a,d
   79B3 9C            [ 4] 3629 	sbc	a, h
   79B4 E2 B9 79      [10] 3630 	jp	PO, 00177$
   79B7 EE 80         [ 7] 3631 	xor	a, #0x80
   79B9                    3632 00177$:
   79B9 F2 C8 79      [10] 3633 	jp	P,00116$
                           3634 ;src/main.c:581: mierda->cogido=1;
   79BC DD 6E 0A      [19] 3635 	ld	l,10 (ix)
   79BF DD 66 0B      [19] 3636 	ld	h,11 (ix)
   79C2 01 08 00      [10] 3637 	ld	bc,#0x0008
   79C5 09            [11] 3638 	add	hl,bc
   79C6 36 01         [10] 3639 	ld	(hl),#0x01
   79C8                    3640 00116$:
   79C8 DD F9         [10] 3641 	ld	sp, ix
   79CA DD E1         [14] 3642 	pop	ix
   79CC C9            [10] 3643 	ret
                           3644 ;src/main.c:589: u8 menu(){
                           3645 ;	---------------------------------
                           3646 ; Function menu
                           3647 ; ---------------------------------
   79CD                    3648 _menu::
                           3649 ;src/main.c:592: cpct_clearScreen(0);
   79CD 21 00 40      [10] 3650 	ld	hl,#0x4000
   79D0 E5            [11] 3651 	push	hl
   79D1 AF            [ 4] 3652 	xor	a, a
   79D2 F5            [11] 3653 	push	af
   79D3 33            [ 6] 3654 	inc	sp
   79D4 26 C0         [ 7] 3655 	ld	h, #0xC0
   79D6 E5            [11] 3656 	push	hl
   79D7 CD 23 90      [17] 3657 	call	_cpct_memset
                           3658 ;src/main.c:598: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
   79DA 21 00 0A      [10] 3659 	ld	hl,#0x0A00
   79DD E5            [11] 3660 	push	hl
   79DE 26 C0         [ 7] 3661 	ld	h, #0xC0
   79E0 E5            [11] 3662 	push	hl
   79E1 CD 1E 91      [17] 3663 	call	_cpct_getScreenPtr
   79E4 5D            [ 4] 3664 	ld	e, l
   79E5 54            [ 4] 3665 	ld	d, h
                           3666 ;src/main.c:599: cpct_drawStringM0("Welcome to Scape", puntMem ,g_palette[1],0);
   79E6 21 41 62      [10] 3667 	ld	hl, #(_g_palette + 0x0001) + 0
   79E9 46            [ 7] 3668 	ld	b,(hl)
   79EA AF            [ 4] 3669 	xor	a, a
   79EB F5            [11] 3670 	push	af
   79EC 33            [ 6] 3671 	inc	sp
   79ED C5            [11] 3672 	push	bc
   79EE 33            [ 6] 3673 	inc	sp
   79EF D5            [11] 3674 	push	de
   79F0 21 AE 7C      [10] 3675 	ld	hl,#___str_3
   79F3 E5            [11] 3676 	push	hl
   79F4 CD AF 8D      [17] 3677 	call	_cpct_drawStringM0
   79F7 21 06 00      [10] 3678 	ld	hl,#6
   79FA 39            [11] 3679 	add	hl,sp
   79FB F9            [ 6] 3680 	ld	sp,hl
                           3681 ;src/main.c:603: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
   79FC 21 00 50      [10] 3682 	ld	hl,#0x5000
   79FF E5            [11] 3683 	push	hl
   7A00 26 C0         [ 7] 3684 	ld	h, #0xC0
   7A02 E5            [11] 3685 	push	hl
   7A03 CD 1E 91      [17] 3686 	call	_cpct_getScreenPtr
   7A06 5D            [ 4] 3687 	ld	e, l
   7A07 54            [ 4] 3688 	ld	d, h
                           3689 ;src/main.c:604: cpct_drawStringM0("Pulse 'I' para ver ", puntMem,g_palette[1],0);
   7A08 21 41 62      [10] 3690 	ld	hl, #(_g_palette + 0x0001) + 0
   7A0B 46            [ 7] 3691 	ld	b,(hl)
   7A0C AF            [ 4] 3692 	xor	a, a
   7A0D F5            [11] 3693 	push	af
   7A0E 33            [ 6] 3694 	inc	sp
   7A0F C5            [11] 3695 	push	bc
   7A10 33            [ 6] 3696 	inc	sp
   7A11 D5            [11] 3697 	push	de
   7A12 21 BF 7C      [10] 3698 	ld	hl,#___str_4
   7A15 E5            [11] 3699 	push	hl
   7A16 CD AF 8D      [17] 3700 	call	_cpct_drawStringM0
   7A19 21 06 00      [10] 3701 	ld	hl,#6
   7A1C 39            [11] 3702 	add	hl,sp
   7A1D F9            [ 6] 3703 	ld	sp,hl
                           3704 ;src/main.c:606: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
   7A1E 21 00 5F      [10] 3705 	ld	hl,#0x5F00
   7A21 E5            [11] 3706 	push	hl
   7A22 26 C0         [ 7] 3707 	ld	h, #0xC0
   7A24 E5            [11] 3708 	push	hl
   7A25 CD 1E 91      [17] 3709 	call	_cpct_getScreenPtr
   7A28 5D            [ 4] 3710 	ld	e, l
   7A29 54            [ 4] 3711 	ld	d, h
                           3712 ;src/main.c:607: cpct_drawStringM0("controles", puntMem,g_palette[1],0);
   7A2A 21 41 62      [10] 3713 	ld	hl, #(_g_palette + 0x0001) + 0
   7A2D 46            [ 7] 3714 	ld	b,(hl)
   7A2E AF            [ 4] 3715 	xor	a, a
   7A2F F5            [11] 3716 	push	af
   7A30 33            [ 6] 3717 	inc	sp
   7A31 C5            [11] 3718 	push	bc
   7A32 33            [ 6] 3719 	inc	sp
   7A33 D5            [11] 3720 	push	de
   7A34 21 D3 7C      [10] 3721 	ld	hl,#___str_5
   7A37 E5            [11] 3722 	push	hl
   7A38 CD AF 8D      [17] 3723 	call	_cpct_drawStringM0
   7A3B 21 06 00      [10] 3724 	ld	hl,#6
   7A3E 39            [11] 3725 	add	hl,sp
   7A3F F9            [ 6] 3726 	ld	sp,hl
                           3727 ;src/main.c:611: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
   7A40 21 00 78      [10] 3728 	ld	hl,#0x7800
   7A43 E5            [11] 3729 	push	hl
   7A44 26 C0         [ 7] 3730 	ld	h, #0xC0
   7A46 E5            [11] 3731 	push	hl
   7A47 CD 1E 91      [17] 3732 	call	_cpct_getScreenPtr
   7A4A 5D            [ 4] 3733 	ld	e, l
   7A4B 54            [ 4] 3734 	ld	d, h
                           3735 ;src/main.c:612: cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
   7A4C 21 41 62      [10] 3736 	ld	hl, #(_g_palette + 0x0001) + 0
   7A4F 46            [ 7] 3737 	ld	b,(hl)
   7A50 AF            [ 4] 3738 	xor	a, a
   7A51 F5            [11] 3739 	push	af
   7A52 33            [ 6] 3740 	inc	sp
   7A53 C5            [11] 3741 	push	bc
   7A54 33            [ 6] 3742 	inc	sp
   7A55 D5            [11] 3743 	push	de
   7A56 21 DD 7C      [10] 3744 	ld	hl,#___str_6
   7A59 E5            [11] 3745 	push	hl
   7A5A CD AF 8D      [17] 3746 	call	_cpct_drawStringM0
   7A5D 21 06 00      [10] 3747 	ld	hl,#6
   7A60 39            [11] 3748 	add	hl,sp
   7A61 F9            [ 6] 3749 	ld	sp,hl
                           3750 ;src/main.c:614: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
   7A62 21 00 87      [10] 3751 	ld	hl,#0x8700
   7A65 E5            [11] 3752 	push	hl
   7A66 26 C0         [ 7] 3753 	ld	h, #0xC0
   7A68 E5            [11] 3754 	push	hl
   7A69 CD 1E 91      [17] 3755 	call	_cpct_getScreenPtr
   7A6C 5D            [ 4] 3756 	ld	e, l
   7A6D 54            [ 4] 3757 	ld	d, h
                           3758 ;src/main.c:615: cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
   7A6E 21 41 62      [10] 3759 	ld	hl, #(_g_palette + 0x0001) + 0
   7A71 46            [ 7] 3760 	ld	b,(hl)
   7A72 AF            [ 4] 3761 	xor	a, a
   7A73 F5            [11] 3762 	push	af
   7A74 33            [ 6] 3763 	inc	sp
   7A75 C5            [11] 3764 	push	bc
   7A76 33            [ 6] 3765 	inc	sp
   7A77 D5            [11] 3766 	push	de
   7A78 21 EB 7C      [10] 3767 	ld	hl,#___str_7
   7A7B E5            [11] 3768 	push	hl
   7A7C CD AF 8D      [17] 3769 	call	_cpct_drawStringM0
   7A7F 21 06 00      [10] 3770 	ld	hl,#6
   7A82 39            [11] 3771 	add	hl,sp
   7A83 F9            [ 6] 3772 	ld	sp,hl
                           3773 ;src/main.c:619: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
   7A84 21 00 A0      [10] 3774 	ld	hl,#0xA000
   7A87 E5            [11] 3775 	push	hl
   7A88 26 C0         [ 7] 3776 	ld	h, #0xC0
   7A8A E5            [11] 3777 	push	hl
   7A8B CD 1E 91      [17] 3778 	call	_cpct_getScreenPtr
   7A8E 5D            [ 4] 3779 	ld	e, l
   7A8F 54            [ 4] 3780 	ld	d, h
                           3781 ;src/main.c:620: cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);
   7A90 21 41 62      [10] 3782 	ld	hl, #(_g_palette + 0x0001) + 0
   7A93 46            [ 7] 3783 	ld	b,(hl)
   7A94 AF            [ 4] 3784 	xor	a, a
   7A95 F5            [11] 3785 	push	af
   7A96 33            [ 6] 3786 	inc	sp
   7A97 C5            [11] 3787 	push	bc
   7A98 33            [ 6] 3788 	inc	sp
   7A99 D5            [11] 3789 	push	de
   7A9A 21 F6 7C      [10] 3790 	ld	hl,#___str_8
   7A9D E5            [11] 3791 	push	hl
   7A9E CD AF 8D      [17] 3792 	call	_cpct_drawStringM0
   7AA1 21 06 00      [10] 3793 	ld	hl,#6
   7AA4 39            [11] 3794 	add	hl,sp
   7AA5 F9            [ 6] 3795 	ld	sp,hl
                           3796 ;src/main.c:622: while(1){
   7AA6                    3797 00110$:
                           3798 ;src/main.c:623: cpct_scanKeyboard_f();
   7AA6 CD 10 85      [17] 3799 	call	_cpct_scanKeyboard_f
                           3800 ;src/main.c:625: if(cpct_isKeyPressed(Key_E) ){
   7AA9 21 07 04      [10] 3801 	ld	hl,#0x0407
   7AAC CD 04 85      [17] 3802 	call	_cpct_isKeyPressed
   7AAF 7D            [ 4] 3803 	ld	a,l
   7AB0 B7            [ 4] 3804 	or	a, a
   7AB1 28 03         [12] 3805 	jr	Z,00102$
                           3806 ;src/main.c:626: return 2;
   7AB3 2E 02         [ 7] 3807 	ld	l,#0x02
   7AB5 C9            [10] 3808 	ret
   7AB6                    3809 00102$:
                           3810 ;src/main.c:629: if(cpct_isKeyPressed(Key_V) ){
   7AB6 21 06 80      [10] 3811 	ld	hl,#0x8006
   7AB9 CD 04 85      [17] 3812 	call	_cpct_isKeyPressed
   7ABC 7D            [ 4] 3813 	ld	a,l
   7ABD B7            [ 4] 3814 	or	a, a
   7ABE CA 9A 7B      [10] 3815 	jp	Z,00104$
                           3816 ;src/main.c:631: cpct_clearScreen(0);
   7AC1 21 00 40      [10] 3817 	ld	hl,#0x4000
   7AC4 E5            [11] 3818 	push	hl
   7AC5 AF            [ 4] 3819 	xor	a, a
   7AC6 F5            [11] 3820 	push	af
   7AC7 33            [ 6] 3821 	inc	sp
   7AC8 26 C0         [ 7] 3822 	ld	h, #0xC0
   7ACA E5            [11] 3823 	push	hl
   7ACB CD 23 90      [17] 3824 	call	_cpct_memset
                           3825 ;src/main.c:633: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
   7ACE 21 00 0A      [10] 3826 	ld	hl,#0x0A00
   7AD1 E5            [11] 3827 	push	hl
   7AD2 26 C0         [ 7] 3828 	ld	h, #0xC0
   7AD4 E5            [11] 3829 	push	hl
   7AD5 CD 1E 91      [17] 3830 	call	_cpct_getScreenPtr
   7AD8 5D            [ 4] 3831 	ld	e, l
   7AD9 54            [ 4] 3832 	ld	d, h
                           3833 ;src/main.c:634: cpct_drawStringM0("Welcome to Zoo clean", puntMem ,g_palette[1],0);
   7ADA 21 41 62      [10] 3834 	ld	hl, #(_g_palette + 0x0001) + 0
   7ADD 46            [ 7] 3835 	ld	b,(hl)
   7ADE AF            [ 4] 3836 	xor	a, a
   7ADF F5            [11] 3837 	push	af
   7AE0 33            [ 6] 3838 	inc	sp
   7AE1 C5            [11] 3839 	push	bc
   7AE2 33            [ 6] 3840 	inc	sp
   7AE3 D5            [11] 3841 	push	de
   7AE4 21 0B 7D      [10] 3842 	ld	hl,#___str_9
   7AE7 E5            [11] 3843 	push	hl
   7AE8 CD AF 8D      [17] 3844 	call	_cpct_drawStringM0
   7AEB 21 06 00      [10] 3845 	ld	hl,#6
   7AEE 39            [11] 3846 	add	hl,sp
   7AEF F9            [ 6] 3847 	ld	sp,hl
                           3848 ;src/main.c:638: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
   7AF0 21 00 50      [10] 3849 	ld	hl,#0x5000
   7AF3 E5            [11] 3850 	push	hl
   7AF4 26 C0         [ 7] 3851 	ld	h, #0xC0
   7AF6 E5            [11] 3852 	push	hl
   7AF7 CD 1E 91      [17] 3853 	call	_cpct_getScreenPtr
   7AFA 5D            [ 4] 3854 	ld	e, l
   7AFB 54            [ 4] 3855 	ld	d, h
                           3856 ;src/main.c:639: cpct_drawStringM0("Recoge los excrementos", puntMem,g_palette[1],0);
   7AFC 21 41 62      [10] 3857 	ld	hl, #(_g_palette + 0x0001) + 0
   7AFF 46            [ 7] 3858 	ld	b,(hl)
   7B00 AF            [ 4] 3859 	xor	a, a
   7B01 F5            [11] 3860 	push	af
   7B02 33            [ 6] 3861 	inc	sp
   7B03 C5            [11] 3862 	push	bc
   7B04 33            [ 6] 3863 	inc	sp
   7B05 D5            [11] 3864 	push	de
   7B06 21 20 7D      [10] 3865 	ld	hl,#___str_10
   7B09 E5            [11] 3866 	push	hl
   7B0A CD AF 8D      [17] 3867 	call	_cpct_drawStringM0
   7B0D 21 06 00      [10] 3868 	ld	hl,#6
   7B10 39            [11] 3869 	add	hl,sp
   7B11 F9            [ 6] 3870 	ld	sp,hl
                           3871 ;src/main.c:641: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
   7B12 21 00 5F      [10] 3872 	ld	hl,#0x5F00
   7B15 E5            [11] 3873 	push	hl
   7B16 26 C0         [ 7] 3874 	ld	h, #0xC0
   7B18 E5            [11] 3875 	push	hl
   7B19 CD 1E 91      [17] 3876 	call	_cpct_getScreenPtr
   7B1C 5D            [ 4] 3877 	ld	e, l
   7B1D 54            [ 4] 3878 	ld	d, h
                           3879 ;src/main.c:642: cpct_drawStringM0("para abrir las jaulas", puntMem,g_palette[1],0);
   7B1E 21 41 62      [10] 3880 	ld	hl, #(_g_palette + 0x0001) + 0
   7B21 46            [ 7] 3881 	ld	b,(hl)
   7B22 AF            [ 4] 3882 	xor	a, a
   7B23 F5            [11] 3883 	push	af
   7B24 33            [ 6] 3884 	inc	sp
   7B25 C5            [11] 3885 	push	bc
   7B26 33            [ 6] 3886 	inc	sp
   7B27 D5            [11] 3887 	push	de
   7B28 21 37 7D      [10] 3888 	ld	hl,#___str_11
   7B2B E5            [11] 3889 	push	hl
   7B2C CD AF 8D      [17] 3890 	call	_cpct_drawStringM0
   7B2F 21 06 00      [10] 3891 	ld	hl,#6
   7B32 39            [11] 3892 	add	hl,sp
   7B33 F9            [ 6] 3893 	ld	sp,hl
                           3894 ;src/main.c:646: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
   7B34 21 00 78      [10] 3895 	ld	hl,#0x7800
   7B37 E5            [11] 3896 	push	hl
   7B38 26 C0         [ 7] 3897 	ld	h, #0xC0
   7B3A E5            [11] 3898 	push	hl
   7B3B CD 1E 91      [17] 3899 	call	_cpct_getScreenPtr
   7B3E 5D            [ 4] 3900 	ld	e, l
   7B3F 54            [ 4] 3901 	ld	d, h
                           3902 ;src/main.c:647: cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
   7B40 21 41 62      [10] 3903 	ld	hl, #(_g_palette + 0x0001) + 0
   7B43 46            [ 7] 3904 	ld	b,(hl)
   7B44 AF            [ 4] 3905 	xor	a, a
   7B45 F5            [11] 3906 	push	af
   7B46 33            [ 6] 3907 	inc	sp
   7B47 C5            [11] 3908 	push	bc
   7B48 33            [ 6] 3909 	inc	sp
   7B49 D5            [11] 3910 	push	de
   7B4A 21 DD 7C      [10] 3911 	ld	hl,#___str_6
   7B4D E5            [11] 3912 	push	hl
   7B4E CD AF 8D      [17] 3913 	call	_cpct_drawStringM0
   7B51 21 06 00      [10] 3914 	ld	hl,#6
   7B54 39            [11] 3915 	add	hl,sp
   7B55 F9            [ 6] 3916 	ld	sp,hl
                           3917 ;src/main.c:649: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
   7B56 21 00 87      [10] 3918 	ld	hl,#0x8700
   7B59 E5            [11] 3919 	push	hl
   7B5A 26 C0         [ 7] 3920 	ld	h, #0xC0
   7B5C E5            [11] 3921 	push	hl
   7B5D CD 1E 91      [17] 3922 	call	_cpct_getScreenPtr
   7B60 5D            [ 4] 3923 	ld	e, l
   7B61 54            [ 4] 3924 	ld	d, h
                           3925 ;src/main.c:650: cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
   7B62 21 41 62      [10] 3926 	ld	hl, #(_g_palette + 0x0001) + 0
   7B65 46            [ 7] 3927 	ld	b,(hl)
   7B66 AF            [ 4] 3928 	xor	a, a
   7B67 F5            [11] 3929 	push	af
   7B68 33            [ 6] 3930 	inc	sp
   7B69 C5            [11] 3931 	push	bc
   7B6A 33            [ 6] 3932 	inc	sp
   7B6B D5            [11] 3933 	push	de
   7B6C 21 EB 7C      [10] 3934 	ld	hl,#___str_7
   7B6F E5            [11] 3935 	push	hl
   7B70 CD AF 8D      [17] 3936 	call	_cpct_drawStringM0
   7B73 21 06 00      [10] 3937 	ld	hl,#6
   7B76 39            [11] 3938 	add	hl,sp
   7B77 F9            [ 6] 3939 	ld	sp,hl
                           3940 ;src/main.c:654: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
   7B78 21 00 A0      [10] 3941 	ld	hl,#0xA000
   7B7B E5            [11] 3942 	push	hl
   7B7C 26 C0         [ 7] 3943 	ld	h, #0xC0
   7B7E E5            [11] 3944 	push	hl
   7B7F CD 1E 91      [17] 3945 	call	_cpct_getScreenPtr
   7B82 5D            [ 4] 3946 	ld	e, l
   7B83 54            [ 4] 3947 	ld	d, h
                           3948 ;src/main.c:655: cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);
   7B84 21 41 62      [10] 3949 	ld	hl, #(_g_palette + 0x0001) + 0
   7B87 46            [ 7] 3950 	ld	b,(hl)
   7B88 AF            [ 4] 3951 	xor	a, a
   7B89 F5            [11] 3952 	push	af
   7B8A 33            [ 6] 3953 	inc	sp
   7B8B C5            [11] 3954 	push	bc
   7B8C 33            [ 6] 3955 	inc	sp
   7B8D D5            [11] 3956 	push	de
   7B8E 21 F6 7C      [10] 3957 	ld	hl,#___str_8
   7B91 E5            [11] 3958 	push	hl
   7B92 CD AF 8D      [17] 3959 	call	_cpct_drawStringM0
   7B95 21 06 00      [10] 3960 	ld	hl,#6
   7B98 39            [11] 3961 	add	hl,sp
   7B99 F9            [ 6] 3962 	ld	sp,hl
   7B9A                    3963 00104$:
                           3964 ;src/main.c:659: if(cpct_isKeyPressed(Key_I) ){
   7B9A 21 04 08      [10] 3965 	ld	hl,#0x0804
   7B9D CD 04 85      [17] 3966 	call	_cpct_isKeyPressed
   7BA0 7D            [ 4] 3967 	ld	a, l
   7BA1 B7            [ 4] 3968 	or	a, a
   7BA2 CA A0 7C      [10] 3969 	jp	Z,00106$
                           3970 ;src/main.c:661: cpct_clearScreen(0);
   7BA5 21 00 40      [10] 3971 	ld	hl,#0x4000
   7BA8 E5            [11] 3972 	push	hl
   7BA9 AF            [ 4] 3973 	xor	a, a
   7BAA F5            [11] 3974 	push	af
   7BAB 33            [ 6] 3975 	inc	sp
   7BAC 26 C0         [ 7] 3976 	ld	h, #0xC0
   7BAE E5            [11] 3977 	push	hl
   7BAF CD 23 90      [17] 3978 	call	_cpct_memset
                           3979 ;src/main.c:663: puntMem = cpct_getScreenPtr(MemVideo,0,10 );
   7BB2 21 00 0A      [10] 3980 	ld	hl,#0x0A00
   7BB5 E5            [11] 3981 	push	hl
   7BB6 26 C0         [ 7] 3982 	ld	h, #0xC0
   7BB8 E5            [11] 3983 	push	hl
   7BB9 CD 1E 91      [17] 3984 	call	_cpct_getScreenPtr
   7BBC 5D            [ 4] 3985 	ld	e, l
   7BBD 54            [ 4] 3986 	ld	d, h
                           3987 ;src/main.c:664: cpct_drawStringM0("Controles Scape", puntMem ,g_palette[1],0);
   7BBE 21 41 62      [10] 3988 	ld	hl, #(_g_palette + 0x0001) + 0
   7BC1 46            [ 7] 3989 	ld	b,(hl)
   7BC2 AF            [ 4] 3990 	xor	a, a
   7BC3 F5            [11] 3991 	push	af
   7BC4 33            [ 6] 3992 	inc	sp
   7BC5 C5            [11] 3993 	push	bc
   7BC6 33            [ 6] 3994 	inc	sp
   7BC7 D5            [11] 3995 	push	de
   7BC8 21 4D 7D      [10] 3996 	ld	hl,#___str_12
   7BCB E5            [11] 3997 	push	hl
   7BCC CD AF 8D      [17] 3998 	call	_cpct_drawStringM0
   7BCF 21 06 00      [10] 3999 	ld	hl,#6
   7BD2 39            [11] 4000 	add	hl,sp
   7BD3 F9            [ 6] 4001 	ld	sp,hl
                           4002 ;src/main.c:668: puntMem = cpct_getScreenPtr(MemVideo,0,80 );
   7BD4 21 00 50      [10] 4003 	ld	hl,#0x5000
   7BD7 E5            [11] 4004 	push	hl
   7BD8 26 C0         [ 7] 4005 	ld	h, #0xC0
   7BDA E5            [11] 4006 	push	hl
   7BDB CD 1E 91      [17] 4007 	call	_cpct_getScreenPtr
   7BDE 5D            [ 4] 4008 	ld	e, l
   7BDF 54            [ 4] 4009 	ld	d, h
                           4010 ;src/main.c:669: cpct_drawStringM0("Flechas de direccion", puntMem ,g_palette[1],0);
   7BE0 21 41 62      [10] 4011 	ld	hl, #(_g_palette + 0x0001) + 0
   7BE3 46            [ 7] 4012 	ld	b,(hl)
   7BE4 AF            [ 4] 4013 	xor	a, a
   7BE5 F5            [11] 4014 	push	af
   7BE6 33            [ 6] 4015 	inc	sp
   7BE7 C5            [11] 4016 	push	bc
   7BE8 33            [ 6] 4017 	inc	sp
   7BE9 D5            [11] 4018 	push	de
   7BEA 21 5D 7D      [10] 4019 	ld	hl,#___str_13
   7BED E5            [11] 4020 	push	hl
   7BEE CD AF 8D      [17] 4021 	call	_cpct_drawStringM0
   7BF1 21 06 00      [10] 4022 	ld	hl,#6
   7BF4 39            [11] 4023 	add	hl,sp
   7BF5 F9            [ 6] 4024 	ld	sp,hl
                           4025 ;src/main.c:671: puntMem = cpct_getScreenPtr(MemVideo,0,95 );
   7BF6 21 00 5F      [10] 4026 	ld	hl,#0x5F00
   7BF9 E5            [11] 4027 	push	hl
   7BFA 26 C0         [ 7] 4028 	ld	h, #0xC0
   7BFC E5            [11] 4029 	push	hl
   7BFD CD 1E 91      [17] 4030 	call	_cpct_getScreenPtr
   7C00 5D            [ 4] 4031 	ld	e, l
   7C01 54            [ 4] 4032 	ld	d, h
                           4033 ;src/main.c:672: cpct_drawStringM0("para mover", puntMem ,g_palette[1],0);
   7C02 21 41 62      [10] 4034 	ld	hl, #(_g_palette + 0x0001) + 0
   7C05 46            [ 7] 4035 	ld	b,(hl)
   7C06 AF            [ 4] 4036 	xor	a, a
   7C07 F5            [11] 4037 	push	af
   7C08 33            [ 6] 4038 	inc	sp
   7C09 C5            [11] 4039 	push	bc
   7C0A 33            [ 6] 4040 	inc	sp
   7C0B D5            [11] 4041 	push	de
   7C0C 21 72 7D      [10] 4042 	ld	hl,#___str_14
   7C0F E5            [11] 4043 	push	hl
   7C10 CD AF 8D      [17] 4044 	call	_cpct_drawStringM0
   7C13 21 06 00      [10] 4045 	ld	hl,#6
   7C16 39            [11] 4046 	add	hl,sp
   7C17 F9            [ 6] 4047 	ld	sp,hl
                           4048 ;src/main.c:676: puntMem = cpct_getScreenPtr(MemVideo,0,120 );
   7C18 21 00 78      [10] 4049 	ld	hl,#0x7800
   7C1B E5            [11] 4050 	push	hl
   7C1C 26 C0         [ 7] 4051 	ld	h, #0xC0
   7C1E E5            [11] 4052 	push	hl
   7C1F CD 1E 91      [17] 4053 	call	_cpct_getScreenPtr
   7C22 5D            [ 4] 4054 	ld	e, l
   7C23 54            [ 4] 4055 	ld	d, h
                           4056 ;src/main.c:677: cpct_drawStringM0("WASD para dejar señuelos", puntMem ,g_palette[1],0);
   7C24 21 41 62      [10] 4057 	ld	hl, #(_g_palette + 0x0001) + 0
   7C27 46            [ 7] 4058 	ld	b,(hl)
   7C28 AF            [ 4] 4059 	xor	a, a
   7C29 F5            [11] 4060 	push	af
   7C2A 33            [ 6] 4061 	inc	sp
   7C2B C5            [11] 4062 	push	bc
   7C2C 33            [ 6] 4063 	inc	sp
   7C2D D5            [11] 4064 	push	de
   7C2E 21 7D 7D      [10] 4065 	ld	hl,#___str_15
   7C31 E5            [11] 4066 	push	hl
   7C32 CD AF 8D      [17] 4067 	call	_cpct_drawStringM0
   7C35 21 06 00      [10] 4068 	ld	hl,#6
   7C38 39            [11] 4069 	add	hl,sp
   7C39 F9            [ 6] 4070 	ld	sp,hl
                           4071 ;src/main.c:679: puntMem = cpct_getScreenPtr(MemVideo,0,135 );
   7C3A 21 00 87      [10] 4072 	ld	hl,#0x8700
   7C3D E5            [11] 4073 	push	hl
   7C3E 26 C0         [ 7] 4074 	ld	h, #0xC0
   7C40 E5            [11] 4075 	push	hl
   7C41 CD 1E 91      [17] 4076 	call	_cpct_getScreenPtr
   7C44 5D            [ 4] 4077 	ld	e, l
   7C45 54            [ 4] 4078 	ld	d, h
                           4079 ;src/main.c:680: cpct_drawStringM0("dejar señuelo", puntMem ,g_palette[1],0);
   7C46 21 41 62      [10] 4080 	ld	hl, #(_g_palette + 0x0001) + 0
   7C49 46            [ 7] 4081 	ld	b,(hl)
   7C4A AF            [ 4] 4082 	xor	a, a
   7C4B F5            [11] 4083 	push	af
   7C4C 33            [ 6] 4084 	inc	sp
   7C4D C5            [11] 4085 	push	bc
   7C4E 33            [ 6] 4086 	inc	sp
   7C4F D5            [11] 4087 	push	de
   7C50 21 97 7D      [10] 4088 	ld	hl,#___str_16
   7C53 E5            [11] 4089 	push	hl
   7C54 CD AF 8D      [17] 4090 	call	_cpct_drawStringM0
   7C57 21 06 00      [10] 4091 	ld	hl,#6
   7C5A 39            [11] 4092 	add	hl,sp
   7C5B F9            [ 6] 4093 	ld	sp,hl
                           4094 ;src/main.c:684: puntMem = cpct_getScreenPtr(MemVideo,0,160 );
   7C5C 21 00 A0      [10] 4095 	ld	hl,#0xA000
   7C5F E5            [11] 4096 	push	hl
   7C60 26 C0         [ 7] 4097 	ld	h, #0xC0
   7C62 E5            [11] 4098 	push	hl
   7C63 CD 1E 91      [17] 4099 	call	_cpct_getScreenPtr
   7C66 5D            [ 4] 4100 	ld	e, l
   7C67 54            [ 4] 4101 	ld	d, h
                           4102 ;src/main.c:685: cpct_drawStringM0("Pulse 'V' para", puntMem,g_palette[1],0);
   7C68 21 41 62      [10] 4103 	ld	hl, #(_g_palette + 0x0001) + 0
   7C6B 46            [ 7] 4104 	ld	b,(hl)
   7C6C AF            [ 4] 4105 	xor	a, a
   7C6D F5            [11] 4106 	push	af
   7C6E 33            [ 6] 4107 	inc	sp
   7C6F C5            [11] 4108 	push	bc
   7C70 33            [ 6] 4109 	inc	sp
   7C71 D5            [11] 4110 	push	de
   7C72 21 A6 7D      [10] 4111 	ld	hl,#___str_17
   7C75 E5            [11] 4112 	push	hl
   7C76 CD AF 8D      [17] 4113 	call	_cpct_drawStringM0
   7C79 21 06 00      [10] 4114 	ld	hl,#6
   7C7C 39            [11] 4115 	add	hl,sp
   7C7D F9            [ 6] 4116 	ld	sp,hl
                           4117 ;src/main.c:687: puntMem = cpct_getScreenPtr(MemVideo,0,175 );
   7C7E 21 00 AF      [10] 4118 	ld	hl,#0xAF00
   7C81 E5            [11] 4119 	push	hl
   7C82 26 C0         [ 7] 4120 	ld	h, #0xC0
   7C84 E5            [11] 4121 	push	hl
   7C85 CD 1E 91      [17] 4122 	call	_cpct_getScreenPtr
   7C88 5D            [ 4] 4123 	ld	e, l
   7C89 54            [ 4] 4124 	ld	d, h
                           4125 ;src/main.c:688: cpct_drawStringM0("volver", puntMem,g_palette[1],0);
   7C8A 21 41 62      [10] 4126 	ld	hl, #(_g_palette + 0x0001) + 0
   7C8D 46            [ 7] 4127 	ld	b,(hl)
   7C8E AF            [ 4] 4128 	xor	a, a
   7C8F F5            [11] 4129 	push	af
   7C90 33            [ 6] 4130 	inc	sp
   7C91 C5            [11] 4131 	push	bc
   7C92 33            [ 6] 4132 	inc	sp
   7C93 D5            [11] 4133 	push	de
   7C94 21 B5 7D      [10] 4134 	ld	hl,#___str_18
   7C97 E5            [11] 4135 	push	hl
   7C98 CD AF 8D      [17] 4136 	call	_cpct_drawStringM0
   7C9B 21 06 00      [10] 4137 	ld	hl,#6
   7C9E 39            [11] 4138 	add	hl,sp
   7C9F F9            [ 6] 4139 	ld	sp,hl
   7CA0                    4140 00106$:
                           4141 ;src/main.c:692: if(cpct_isKeyPressed(Key_Space)){
   7CA0 21 05 80      [10] 4142 	ld	hl,#0x8005
   7CA3 CD 04 85      [17] 4143 	call	_cpct_isKeyPressed
   7CA6 7D            [ 4] 4144 	ld	a,l
   7CA7 B7            [ 4] 4145 	or	a, a
   7CA8 CA A6 7A      [10] 4146 	jp	Z,00110$
                           4147 ;src/main.c:693: return 1;
   7CAB 2E 01         [ 7] 4148 	ld	l,#0x01
   7CAD C9            [10] 4149 	ret
   7CAE                    4150 ___str_3:
   7CAE 57 65 6C 63 6F 6D  4151 	.ascii "Welcome to Scape"
        65 20 74 6F 20 53
        63 61 70 65
   7CBE 00                 4152 	.db 0x00
   7CBF                    4153 ___str_4:
   7CBF 50 75 6C 73 65 20  4154 	.ascii "Pulse 'I' para ver "
        27 49 27 20 70 61
        72 61 20 76 65 72
        20
   7CD2 00                 4155 	.db 0x00
   7CD3                    4156 ___str_5:
   7CD3 63 6F 6E 74 72 6F  4157 	.ascii "controles"
        6C 65 73
   7CDC 00                 4158 	.db 0x00
   7CDD                    4159 ___str_6:
   7CDD 50 75 6C 73 65 20  4160 	.ascii "Pulse Espacio"
        45 73 70 61 63 69
        6F
   7CEA 00                 4161 	.db 0x00
   7CEB                    4162 ___str_7:
   7CEB 70 61 72 61 20 6A  4163 	.ascii "para jugar"
        75 67 61 72
   7CF5 00                 4164 	.db 0x00
   7CF6                    4165 ___str_8:
   7CF6 50 75 6C 73 65 20  4166 	.ascii "Pulse 'E' para salir"
        27 45 27 20 70 61
        72 61 20 73 61 6C
        69 72
   7D0A 00                 4167 	.db 0x00
   7D0B                    4168 ___str_9:
   7D0B 57 65 6C 63 6F 6D  4169 	.ascii "Welcome to Zoo clean"
        65 20 74 6F 20 5A
        6F 6F 20 63 6C 65
        61 6E
   7D1F 00                 4170 	.db 0x00
   7D20                    4171 ___str_10:
   7D20 52 65 63 6F 67 65  4172 	.ascii "Recoge los excrementos"
        20 6C 6F 73 20 65
        78 63 72 65 6D 65
        6E 74 6F 73
   7D36 00                 4173 	.db 0x00
   7D37                    4174 ___str_11:
   7D37 70 61 72 61 20 61  4175 	.ascii "para abrir las jaulas"
        62 72 69 72 20 6C
        61 73 20 6A 61 75
        6C 61 73
   7D4C 00                 4176 	.db 0x00
   7D4D                    4177 ___str_12:
   7D4D 43 6F 6E 74 72 6F  4178 	.ascii "Controles Scape"
        6C 65 73 20 53 63
        61 70 65
   7D5C 00                 4179 	.db 0x00
   7D5D                    4180 ___str_13:
   7D5D 46 6C 65 63 68 61  4181 	.ascii "Flechas de direccion"
        73 20 64 65 20 64
        69 72 65 63 63 69
        6F 6E
   7D71 00                 4182 	.db 0x00
   7D72                    4183 ___str_14:
   7D72 70 61 72 61 20 6D  4184 	.ascii "para mover"
        6F 76 65 72
   7D7C 00                 4185 	.db 0x00
   7D7D                    4186 ___str_15:
   7D7D 57 41 53 44 20 70  4187 	.ascii "WASD para dejar se"
        61 72 61 20 64 65
        6A 61 72 20 73 65
   7D8F C3                 4188 	.db 0xC3
   7D90 B1                 4189 	.db 0xB1
   7D91 75 65 6C 6F 73     4190 	.ascii "uelos"
   7D96 00                 4191 	.db 0x00
   7D97                    4192 ___str_16:
   7D97 64 65 6A 61 72 20  4193 	.ascii "dejar se"
        73 65
   7D9F C3                 4194 	.db 0xC3
   7DA0 B1                 4195 	.db 0xB1
   7DA1 75 65 6C 6F        4196 	.ascii "uelo"
   7DA5 00                 4197 	.db 0x00
   7DA6                    4198 ___str_17:
   7DA6 50 75 6C 73 65 20  4199 	.ascii "Pulse 'V' para"
        27 56 27 20 70 61
        72 61
   7DB4 00                 4200 	.db 0x00
   7DB5                    4201 ___str_18:
   7DB5 76 6F 6C 76 65 72  4202 	.ascii "volver"
   7DBB 00                 4203 	.db 0x00
                           4204 ;src/main.c:699: void actualizarPower(PoderEntity *poder, mierdaEntity *mierda){
                           4205 ;	---------------------------------
                           4206 ; Function actualizarPower
                           4207 ; ---------------------------------
   7DBC                    4208 _actualizarPower::
   7DBC DD E5         [15] 4209 	push	ix
   7DBE DD 21 00 00   [14] 4210 	ld	ix,#0
   7DC2 DD 39         [15] 4211 	add	ix,sp
                           4212 ;src/main.c:701: if(!Power.dibujado)poder->dibujado=1;
   7DC4 21 6C 62      [10] 4213 	ld	hl, #_Power + 6
   7DC7 66            [ 7] 4214 	ld	h,(hl)
   7DC8 DD 5E 04      [19] 4215 	ld	e,4 (ix)
   7DCB DD 56 05      [19] 4216 	ld	d,5 (ix)
   7DCE 7C            [ 4] 4217 	ld	a,h
   7DCF B7            [ 4] 4218 	or	a, a
   7DD0 20 06         [12] 4219 	jr	NZ,00102$
   7DD2 21 06 00      [10] 4220 	ld	hl,#0x0006
   7DD5 19            [11] 4221 	add	hl,de
   7DD6 36 01         [10] 4222 	ld	(hl),#0x01
   7DD8                    4223 00102$:
                           4224 ;src/main.c:702: if(Power.cogido && !Power.borrado)poder->borrado=1;
   7DD8 3A 6E 62      [13] 4225 	ld	a, (#_Power + 8)
   7DDB B7            [ 4] 4226 	or	a, a
   7DDC 28 0C         [12] 4227 	jr	Z,00104$
   7DDE 3A 6D 62      [13] 4228 	ld	a, (#_Power + 7)
   7DE1 B7            [ 4] 4229 	or	a, a
   7DE2 20 06         [12] 4230 	jr	NZ,00104$
   7DE4 21 07 00      [10] 4231 	ld	hl,#0x0007
   7DE7 19            [11] 4232 	add	hl,de
   7DE8 36 01         [10] 4233 	ld	(hl),#0x01
   7DEA                    4234 00104$:
                           4235 ;src/main.c:704: if(!Mierda.dibujado)mierda->dibujado=1;
   7DEA 21 75 62      [10] 4236 	ld	hl, #_Mierda + 6
   7DED 66            [ 7] 4237 	ld	h,(hl)
   7DEE DD 5E 06      [19] 4238 	ld	e,6 (ix)
   7DF1 DD 56 07      [19] 4239 	ld	d,7 (ix)
   7DF4 7C            [ 4] 4240 	ld	a,h
   7DF5 B7            [ 4] 4241 	or	a, a
   7DF6 20 06         [12] 4242 	jr	NZ,00107$
   7DF8 21 06 00      [10] 4243 	ld	hl,#0x0006
   7DFB 19            [11] 4244 	add	hl,de
   7DFC 36 01         [10] 4245 	ld	(hl),#0x01
   7DFE                    4246 00107$:
                           4247 ;src/main.c:705: if(Mierda.cogido && !Mierda.borrado)mierda->borrado=1;
   7DFE 3A 77 62      [13] 4248 	ld	a, (#_Mierda + 8)
   7E01 B7            [ 4] 4249 	or	a, a
   7E02 28 0C         [12] 4250 	jr	Z,00111$
   7E04 3A 76 62      [13] 4251 	ld	a, (#_Mierda + 7)
   7E07 B7            [ 4] 4252 	or	a, a
   7E08 20 06         [12] 4253 	jr	NZ,00111$
   7E0A 21 07 00      [10] 4254 	ld	hl,#0x0007
   7E0D 19            [11] 4255 	add	hl,de
   7E0E 36 01         [10] 4256 	ld	(hl),#0x01
   7E10                    4257 00111$:
   7E10 DD E1         [14] 4258 	pop	ix
   7E12 C9            [10] 4259 	ret
                           4260 ;src/main.c:712: void main(void) {
                           4261 ;	---------------------------------
                           4262 ; Function main
                           4263 ; ---------------------------------
   7E13                    4264 _main::
   7E13 DD E5         [15] 4265 	push	ix
   7E15 DD 21 00 00   [14] 4266 	ld	ix,#0
   7E19 DD 39         [15] 4267 	add	ix,sp
   7E1B 3B            [ 6] 4268 	dec	sp
                           4269 ;src/main.c:725: TEntity *player=&Personaje;
                           4270 ;src/main.c:726: EnemyEntity *enemigo=&Enemy;
                           4271 ;src/main.c:727: PoderEntity *poder = &Power;
                           4272 ;src/main.c:728: mierdaEntity *mierda = &Mierda;
                           4273 ;src/main.c:729: u8 resultado_menu=0;
   7E1C DD 36 FF 00   [19] 4274 	ld	-1 (ix),#0x00
                           4275 ;src/main.c:734: iniciar();
   7E20 CD 1E 63      [17] 4276 	call	_iniciar
                           4277 ;src/main.c:740: while (resultado_menu!=2){
   7E23                    4278 00111$:
   7E23 DD 7E FF      [19] 4279 	ld	a,-1 (ix)
   7E26 D6 02         [ 7] 4280 	sub	a, #0x02
   7E28 CA E8 7E      [10] 4281 	jp	Z,00114$
                           4282 ;src/main.c:746: if(resultado_menu==0){
   7E2B DD 7E FF      [19] 4283 	ld	a,-1 (ix)
   7E2E B7            [ 4] 4284 	or	a, a
   7E2F 20 2C         [12] 4285 	jr	NZ,00104$
                           4286 ;src/main.c:747: resultado_menu =  menu();
   7E31 CD CD 79      [17] 4287 	call	_menu
                           4288 ;src/main.c:748: if(resultado_menu!=2){
   7E34 DD 75 FF      [19] 4289 	ld	-1 (ix), l
   7E37 7D            [ 4] 4290 	ld	a, l
   7E38 D6 02         [ 7] 4291 	sub	a, #0x02
   7E3A 28 21         [12] 4292 	jr	Z,00104$
                           4293 ;src/main.c:749: player->lives=3;
   7E3C 21 56 62      [10] 4294 	ld	hl,#_Personaje + 17
   7E3F 36 03         [10] 4295 	ld	(hl),#0x03
                           4296 ;src/main.c:750: cpct_clearScreen(0);
   7E41 21 00 40      [10] 4297 	ld	hl,#0x4000
   7E44 E5            [11] 4298 	push	hl
   7E45 AF            [ 4] 4299 	xor	a, a
   7E46 F5            [11] 4300 	push	af
   7E47 33            [ 6] 4301 	inc	sp
   7E48 26 C0         [ 7] 4302 	ld	h, #0xC0
   7E4A E5            [11] 4303 	push	hl
   7E4B CD 23 90      [17] 4304 	call	_cpct_memset
                           4305 ;src/main.c:752: cpct_etm_setTileset2x4(g_tilesetum);
   7E4E 21 AC 41      [10] 4306 	ld	hl,#_g_tilesetum
   7E51 CD 07 8F      [17] 4307 	call	_cpct_etm_setTileset2x4
                           4308 ;src/main.c:753: CargarLevel(Personaje.nivel);
   7E54 3A 58 62      [13] 4309 	ld	a, (#_Personaje + 19)
   7E57 F5            [11] 4310 	push	af
   7E58 33            [ 6] 4311 	inc	sp
   7E59 CD 93 62      [17] 4312 	call	_CargarLevel
   7E5C 33            [ 6] 4313 	inc	sp
   7E5D                    4314 00104$:
                           4315 ;src/main.c:759: if(resultado_menu==1){
   7E5D DD 7E FF      [19] 4316 	ld	a,-1 (ix)
   7E60 3D            [ 4] 4317 	dec	a
   7E61 20 C0         [12] 4318 	jr	NZ,00111$
                           4319 ;src/main.c:761: cpct_akp_musicPlay();
   7E63 CD 88 85      [17] 4320 	call	_cpct_akp_musicPlay
                           4321 ;src/main.c:762: cpct_setBorder(g_palette[1]);
   7E66 3A 41 62      [13] 4322 	ld	a, (#_g_palette + 1)
   7E69 57            [ 4] 4323 	ld	d,a
   7E6A 1E 10         [ 7] 4324 	ld	e,#0x10
   7E6C D5            [11] 4325 	push	de
   7E6D CD 7A 85      [17] 4326 	call	_cpct_setPALColour
                           4327 ;src/main.c:764: BorrarEntidades();
   7E70 CD 5C 63      [17] 4328 	call	_BorrarEntidades
                           4329 ;src/main.c:765: cpct_setBorder(g_palette[2]);
   7E73 3A 42 62      [13] 4330 	ld	a, (#_g_palette + 2)
   7E76 57            [ 4] 4331 	ld	d,a
   7E77 1E 10         [ 7] 4332 	ld	e,#0x10
   7E79 D5            [11] 4333 	push	de
   7E7A CD 7A 85      [17] 4334 	call	_cpct_setPALColour
                           4335 ;src/main.c:767: DibujarEntidades();
   7E7D CD F1 69      [17] 4336 	call	_DibujarEntidades
                           4337 ;src/main.c:771: cpct_setBorder(g_palette[0]);
   7E80 3A 40 62      [13] 4338 	ld	a, (#_g_palette + 0)
   7E83 57            [ 4] 4339 	ld	d,a
   7E84 1E 10         [ 7] 4340 	ld	e,#0x10
   7E86 D5            [11] 4341 	push	de
   7E87 CD 7A 85      [17] 4342 	call	_cpct_setPALColour
                           4343 ;src/main.c:774: cpct_setBorder(g_palette[0]);
   7E8A 3A 40 62      [13] 4344 	ld	a, (#_g_palette + 0)
   7E8D 57            [ 4] 4345 	ld	d,a
   7E8E 1E 10         [ 7] 4346 	ld	e,#0x10
   7E90 D5            [11] 4347 	push	de
   7E91 CD 7A 85      [17] 4348 	call	_cpct_setPALColour
                           4349 ;src/main.c:775: actualizarPower(poder,mierda);
   7E94 21 6F 62      [10] 4350 	ld	hl,#_Mierda
   7E97 E5            [11] 4351 	push	hl
   7E98 21 66 62      [10] 4352 	ld	hl,#_Power
   7E9B E5            [11] 4353 	push	hl
   7E9C CD BC 7D      [17] 4354 	call	_actualizarPower
   7E9F F1            [10] 4355 	pop	af
   7EA0 F1            [10] 4356 	pop	af
                           4357 ;src/main.c:776: ComprobarTeclado(player);
   7EA1 21 45 62      [10] 4358 	ld	hl,#_Personaje
   7EA4 E5            [11] 4359 	push	hl
   7EA5 CD C3 64      [17] 4360 	call	_ComprobarTeclado
                           4361 ;src/main.c:777: IA(enemigo,player);
   7EA8 21 45 62      [10] 4362 	ld	hl, #_Personaje
   7EAB E3            [19] 4363 	ex	(sp),hl
   7EAC 21 5A 62      [10] 4364 	ld	hl,#_Enemy
   7EAF E5            [11] 4365 	push	hl
   7EB0 CD 69 6C      [17] 4366 	call	_IA
   7EB3 F1            [10] 4367 	pop	af
                           4368 ;src/main.c:778: ComprobarColision(player,poder,enemigo,mierda);
   7EB4 21 6F 62      [10] 4369 	ld	hl, #_Mierda
   7EB7 E3            [19] 4370 	ex	(sp),hl
   7EB8 21 5A 62      [10] 4371 	ld	hl,#_Enemy
   7EBB E5            [11] 4372 	push	hl
   7EBC 21 66 62      [10] 4373 	ld	hl,#_Power
   7EBF E5            [11] 4374 	push	hl
   7EC0 21 45 62      [10] 4375 	ld	hl,#_Personaje
   7EC3 E5            [11] 4376 	push	hl
   7EC4 CD 3E 78      [17] 4377 	call	_ComprobarColision
   7EC7 21 08 00      [10] 4378 	ld	hl,#8
   7ECA 39            [11] 4379 	add	hl,sp
   7ECB F9            [ 6] 4380 	ld	sp,hl
                           4381 ;src/main.c:780: if (cpct_akp_songLoopTimes > 0)
   7ECC 3A 87 85      [13] 4382 	ld	a,(#_cpct_akp_songLoopTimes + 0)
   7ECF B7            [ 4] 4383 	or	a, a
   7ED0 28 08         [12] 4384 	jr	Z,00106$
                           4385 ;src/main.c:781: cpct_akp_musicInit(G_CancionRetro);
   7ED2 21 00 20      [10] 4386 	ld	hl,#_G_CancionRetro
   7ED5 E5            [11] 4387 	push	hl
   7ED6 CD 8B 8C      [17] 4388 	call	_cpct_akp_musicInit
   7ED9 F1            [10] 4389 	pop	af
   7EDA                    4390 00106$:
                           4391 ;src/main.c:783: if(Personaje.lives==0)resultado_menu=0;
   7EDA 3A 56 62      [13] 4392 	ld	a, (#_Personaje + 17)
   7EDD B7            [ 4] 4393 	or	a, a
   7EDE C2 23 7E      [10] 4394 	jp	NZ,00111$
   7EE1 DD 36 FF 00   [19] 4395 	ld	-1 (ix),#0x00
   7EE5 C3 23 7E      [10] 4396 	jp	00111$
   7EE8                    4397 00114$:
   7EE8 33            [ 6] 4398 	inc	sp
   7EE9 DD E1         [14] 4399 	pop	ix
   7EEB C9            [10] 4400 	ret
                           4401 	.area _CODE
                           4402 	.area _INITIALIZER
                           4403 	.area _CABS (ABS)
