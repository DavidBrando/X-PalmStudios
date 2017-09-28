;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module enemigo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _alive
	.globl _reviveIA
	.globl _get_BY
	.globl _wait4UserKeypress
	.globl _quitar_vida
	.globl _asignarFrame2
	.globl _get_tip_mapa
	.globl _get_CY
	.globl _get_CX
	.globl _get_Y
	.globl _get_X
	.globl _restaVida
	.globl _dibujarProta
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_restoreState_mxor_u8
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_waitVSYNC
	.globl _cpct_hflipSpriteM0
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _c
	.globl _j
	.globl _ENMirar
	.globl _e
	.globl _mapaJug
	.globl _pmapa
	.globl _borracho
	.globl _anim_golpear
	.globl _anim_andar2
	.globl _g_Frames
	.globl _girarFrame2
	.globl _seleccionarSpriteBorracho
	.globl _dibujarBorracho
	.globl _borrarBorracho
	.globl _redibujarBorracho
	.globl _andar_ani2
	.globl _golpear_ani2
	.globl _ini_andar2
	.globl _izquierda
	.globl _derecha
	.globl _golpear
	.globl _quietoENE
	.globl _mata_enemigo
	.globl _get_BX
	.globl _IA
	.globl _BOestado
	.globl _ini_estado
	.globl _inicializar_borracho
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_borracho::
	.ds 13
_pmapa::
	.ds 2
_mapaJug::
	.ds 2
_e::
	.ds 1
_ENMirar::
	.ds 1
_j::
	.ds 1
_c::
	.ds 4
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
;src/enemigo/enemigo.c:50: void asignarFrame2(Tframe **animacion) {
;	---------------------------------
; Function asignarFrame2
; ---------------------------------
_asignarFrame2::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/enemigo/enemigo.c:51: borracho.frame = animacion[borracho.nframe / ANIM_PAUSA];
	ld	hl, #_borracho + 10
	ld	l,(hl)
	srl	l
	srl	l
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	((_borracho + 0x0008)), bc
	pop	ix
	ret
_g_Frames:
	.db #0x00	; 0
	.dw _g_borracho_0
	.db #0x00	; 0
	.dw _g_borracho_1
	.db #0x00	; 0
	.dw _g_borracho_2
	.db #0x00	; 0
	.dw _g_borracho_3
	.db #0x00	; 0
	.dw _g_borracho_4
	.db #0x00	; 0
	.dw _g_borracho_5
	.db #0x00	; 0
	.dw _g_borracho_6
	.db #0x00	; 0
	.dw _g_borracho_7
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_anim_andar2:
	.dw (_g_Frames + 3)
	.dw (_g_Frames + 6)
	.dw (_g_Frames + 9)
	.dw (_g_Frames + 12)
	.dw (_g_Frames + 15)
_anim_golpear:
	.dw (_g_Frames + 21)
	.dw (_g_Frames + 18)
;src/enemigo/enemigo.c:55: void girarFrame2() {
;	---------------------------------
; Function girarFrame2
; ---------------------------------
_girarFrame2::
;src/enemigo/enemigo.c:56: Tframe* f = borracho.frame;
	ld	bc, (#_borracho + 8)
;src/enemigo/enemigo.c:57: if (f->mira != borracho.mira) {
	ld	a,(bc)
	ld	e,a
	ld	hl, #(_borracho + 0x000b) + 0
	ld	d,(hl)
	ld	a,e
	sub	a, d
	ret	Z
;src/enemigo/enemigo.c:58: cpct_hflipSpriteM0(G_BORRACHO_0_W, G_BORRACHO_0_H, f->sprite);
	ld	l, c
	ld	h, b
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x1B08
	push	hl
	call	_cpct_hflipSpriteM0
	pop	bc
;src/enemigo/enemigo.c:59: f->mira = borracho.mira;
	ld	a, (#(_borracho + 0x000b) + 0)
	ld	(bc),a
	ret
;src/enemigo/enemigo.c:63: void seleccionarSpriteBorracho() {
;	---------------------------------
; Function seleccionarSpriteBorracho
; ---------------------------------
_seleccionarSpriteBorracho::
;src/enemigo/enemigo.c:64: switch(borracho.estado) {
	ld	hl, #_borracho + 7
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jp	C,_girarFrame2
	ld	d,#0x00
	ld	hl,#00111$
	add	hl,de
	add	hl,de
;src/enemigo/enemigo.c:65: case 0:      { borracho.frame = &g_Frames[0];  break; }
	jp	(hl)
00111$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
	ld	hl,#_g_Frames
	ld	((_borracho + 0x0008)), hl
	jp	_girarFrame2
;src/enemigo/enemigo.c:66: case 1:     { asignarFrame2(anim_andar2);    break; }
00102$:
	ld	hl,#_anim_andar2
	push	hl
	call	_asignarFrame2
	pop	af
	jp	_girarFrame2
;src/enemigo/enemigo.c:67: case 2:		{ asignarFrame2(anim_golpear);   break; }
00103$:
	ld	hl,#_anim_golpear
	push	hl
	call	_asignarFrame2
	pop	af
;src/enemigo/enemigo.c:68: }
;src/enemigo/enemigo.c:69: girarFrame2();
	jp  _girarFrame2
;src/enemigo/enemigo.c:72: void dibujarBorracho()
;	---------------------------------
; Function dibujarBorracho
; ---------------------------------
_dibujarBorracho::
;src/enemigo/enemigo.c:74: u8* punte = cpct_getScreenPtr(CPCT_VMEM_START, borracho.x, borracho.y);
	ld	hl, #_borracho + 1
	ld	d,(hl)
	ld	hl, #_borracho + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	e,l
	ld	d,h
;src/enemigo/enemigo.c:75: cpct_drawSpriteMaskedAlignedTable(borracho.frame->sprite, punte, G_BORRACHO_0_W, G_BORRACHO_0_H, a);
	ld	hl, (#_borracho + 8)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_a
	push	hl
	ld	hl,#0x1B08
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/enemigo/enemigo.c:78: void borrarBorracho() {
;	---------------------------------
; Function borrarBorracho
; ---------------------------------
_borrarBorracho::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/enemigo/enemigo.c:79: u8 w = 4 + (borracho.px & 1);
	ld	hl, #_borracho + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
	inc	b
	inc	b
;src/enemigo/enemigo.c:80: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
	ld	hl, #_borracho + 3
	ld	e,(hl)
	ld	a,e
	and	a, #0x03
	jr	Z,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	ld	a,#0x00
00104$:
	add	a, #0x07
	ld	-3 (ix),a
;src/enemigo/enemigo.c:81: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
	ld	iy,(_pmapa)
	ld	d,#0x00
	ld	a,e
	add	a,#0xBC
	ld	-2 (ix),a
	ld	a,d
	adc	a,#0xFF
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	bit	7, -1 (ix)
	jr	Z,00105$
	ld	hl,#0xFFBF
	add	hl,de
00105$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	d,l
	srl	c
	push	iy
	ld	hl,#0xE280
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ld	sp, ix
	pop	ix
	ret
;src/enemigo/enemigo.c:85: void redibujarBorracho() {
;	---------------------------------
; Function redibujarBorracho
; ---------------------------------
_redibujarBorracho::
;src/enemigo/enemigo.c:86: borrarBorracho();
	call	_borrarBorracho
;src/enemigo/enemigo.c:87: borracho.px = borracho.x;
	ld	bc,#_borracho + 2
	ld	a, (#_borracho + 0)
	ld	(bc),a
;src/enemigo/enemigo.c:88: borracho.py = borracho.y;
	ld	bc,#_borracho + 3
	ld	a, (#_borracho + 1)
	ld	(bc),a
;src/enemigo/enemigo.c:89: dibujarBorracho();
	jp  _dibujarBorracho
;src/enemigo/enemigo.c:92: void andar_ani2(u8 direccion)
;	---------------------------------
; Function andar_ani2
; ---------------------------------
_andar_ani2::
;src/enemigo/enemigo.c:94: borracho.mira  = direccion;
	ld	hl,#(_borracho + 0x000b)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/enemigo/enemigo.c:95: if(++borracho.nframe == 5*4)
	ld	bc,#_borracho + 10
	ld	a,(bc)
	inc	a
	ld	(bc),a
	sub	a, #0x14
	ret	NZ
;src/enemigo/enemigo.c:96: borracho.nframe = 0;
	xor	a, a
	ld	(bc),a
	ret
;src/enemigo/enemigo.c:99: void golpear_ani2(u8 direccion){
;	---------------------------------
; Function golpear_ani2
; ---------------------------------
_golpear_ani2::
;src/enemigo/enemigo.c:100: borracho.mira = direccion;
	ld	hl,#(_borracho + 0x000b)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/enemigo/enemigo.c:101: if(++borracho.nframe == GOLPE_FRAMES*ANIM_PAUSA)
	ld	bc,#_borracho + 10
	ld	a,(bc)
	inc	a
	ld	(bc),a
	sub	a, #0x08
	ret	NZ
;src/enemigo/enemigo.c:102: borracho.nframe = 0;
	xor	a, a
	ld	(bc),a
	ret
;src/enemigo/enemigo.c:105: void ini_andar2(u8 direccion)
;	---------------------------------
; Function ini_andar2
; ---------------------------------
_ini_andar2::
;src/enemigo/enemigo.c:107: borracho.nframe=0;
	ld	hl,#(_borracho + 0x000a)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:108: borracho.estado=1;
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:109: borracho.mira = direccion;
	ld	hl,#(_borracho + 0x000b)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/enemigo/enemigo.c:110: borracho.mover=SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
	ret
;src/enemigo/enemigo.c:113: void izquierda()
;	---------------------------------
; Function izquierda
; ---------------------------------
_izquierda::
;src/enemigo/enemigo.c:115: borracho.x--;
	ld	bc,#_borracho+0
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;src/enemigo/enemigo.c:116: andar_ani2(E_izquierda);
	ld	a,#0x01
	push	af
	inc	sp
	call	_andar_ani2
	inc	sp
;src/enemigo/enemigo.c:117: borracho.estado=1;
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:119: borracho.mover=SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:121: if(borracho.mover){
	ld	a, (#(_borracho + 0x0006) + 0)
	or	a, a
	ret	Z
;src/enemigo/enemigo.c:123: seleccionarSpriteBorracho();
	call	_seleccionarSpriteBorracho
;src/enemigo/enemigo.c:124: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/enemigo/enemigo.c:125: redibujarBorracho();
	call	_redibujarBorracho
;src/enemigo/enemigo.c:126: borracho.mover = NO;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x00
	ret
;src/enemigo/enemigo.c:130: void derecha()
;	---------------------------------
; Function derecha
; ---------------------------------
_derecha::
;src/enemigo/enemigo.c:132: borracho.x++;
	ld	bc,#_borracho+0
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/enemigo/enemigo.c:133: andar_ani2(E_derecha);
	xor	a, a
	push	af
	inc	sp
	call	_andar_ani2
	inc	sp
;src/enemigo/enemigo.c:134: borracho.estado=1;
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:135: borracho.mover=SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:137: if(borracho.mover){
	ld	a, (#(_borracho + 0x0006) + 0)
	or	a, a
	ret	Z
;src/enemigo/enemigo.c:138: seleccionarSpriteBorracho();
	call	_seleccionarSpriteBorracho
;src/enemigo/enemigo.c:139: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/enemigo/enemigo.c:140: redibujarBorracho();
	call	_redibujarBorracho
;src/enemigo/enemigo.c:141: borracho.mover = NO;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x00
	ret
;src/enemigo/enemigo.c:147: void golpear(u8 direccion){
;	---------------------------------
; Function golpear
; ---------------------------------
_golpear::
;src/enemigo/enemigo.c:150: golpear_ani2(direccion);
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_golpear_ani2
	inc	sp
;src/enemigo/enemigo.c:151: borracho.estado = 2;
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x02
;src/enemigo/enemigo.c:152: borracho.mover=SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:154: if(borracho.mover){
	ld	a, (#(_borracho + 0x0006) + 0)
	or	a, a
	jp	Z,_restaVida
;src/enemigo/enemigo.c:155: seleccionarSpriteBorracho();
	call	_seleccionarSpriteBorracho
;src/enemigo/enemigo.c:156: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/enemigo/enemigo.c:157: redibujarBorracho();
	call	_redibujarBorracho
;src/enemigo/enemigo.c:158: borracho.mover = NO;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:161: restaVida();
	jp  _restaVida
;src/enemigo/enemigo.c:166: void quietoENE()
;	---------------------------------
; Function quietoENE
; ---------------------------------
_quietoENE::
;src/enemigo/enemigo.c:168: borracho.estado=0;
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:169: borracho.mover = SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:170: borracho.nframe=0;
	ld	hl,#(_borracho + 0x000a)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:171: if(borracho.mover){
	ld	a, (#(_borracho + 0x0006) + 0)
	or	a, a
	ret	Z
;src/enemigo/enemigo.c:172: seleccionarSpriteBorracho();
	call	_seleccionarSpriteBorracho
;src/enemigo/enemigo.c:173: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/enemigo/enemigo.c:174: redibujarBorracho();
	call	_redibujarBorracho
;src/enemigo/enemigo.c:175: e=1;
	ld	hl,#_e + 0
	ld	(hl), #0x01
;src/enemigo/enemigo.c:176: borracho.mover = NO;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x00
	ret
;src/enemigo/enemigo.c:181: void mata_enemigo()
;	---------------------------------
; Function mata_enemigo
; ---------------------------------
_mata_enemigo::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;src/enemigo/enemigo.c:183: u8 cX=get_CX();
	call	_get_CX
	ld	-10 (ix),l
;src/enemigo/enemigo.c:184: u8 cY=get_CY();
	call	_get_CY
;src/enemigo/enemigo.c:188: if(borracho.x-5 < cX && cX < borracho.x)
	ld	a,(#_borracho+0)
	ld	-1 (ix), a
	ld	-3 (ix),a
	ld	-2 (ix),#0x00
	ld	a,-3 (ix)
	add	a,#0xFB
	ld	c,a
	ld	a,-2 (ix)
	adc	a,#0xFF
	ld	b,a
	ld	a,-10 (ix)
	ld	-5 (ix),a
	ld	-4 (ix),#0x00
;src/enemigo/enemigo.c:191: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
	ld	hl,(_pmapa)
	ld	-7 (ix),l
	ld	-6 (ix),h
;src/enemigo/enemigo.c:188: if(borracho.x-5 < cX && cX < borracho.x)
	ld	a,c
	sub	a, -5 (ix)
	ld	a,b
	sbc	a, -4 (ix)
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	P,00105$
	ld	a,-10 (ix)
	sub	a, -1 (ix)
	jr	NC,00105$
;src/enemigo/enemigo.c:189: { u8 w = 4 + (borracho.px & 1);
	ld	hl, #_borracho + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	e,a
	inc	e
	inc	e
	inc	e
	inc	e
;src/enemigo/enemigo.c:190: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
	ld	hl, #_borracho + 3
	ld	l,(hl)
	ld	a,l
	and	a, #0x03
	jr	Z,00110$
	ld	a,#0x01
	jr	00111$
00110$:
	ld	a,#0x00
00111$:
	add	a, #0x07
	ld	-11 (ix),a
;src/enemigo/enemigo.c:191: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
	ld	b,l
	ld	d,#0x00
	ld	a,b
	add	a,#0xBC
	ld	-9 (ix),a
	ld	a,d
	adc	a,#0xFF
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	bit	7, -8 (ix)
	jr	Z,00112$
	ld	a,b
	add	a, #0xBF
	ld	l,a
	ld	a,d
	adc	a, #0xFF
	ld	h,a
00112$:
	ld	d,l
	sra	h
	rr	d
	sra	h
	rr	d
	ld	b,c
	srl	b
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	hl,#0xE280
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-11 (ix)
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_cpct_etm_drawTileBox2x4
;src/enemigo/enemigo.c:192: j=1;
	ld	hl,#_j + 0
	ld	(hl), #0x01
	jp	00108$
00105$:
;src/enemigo/enemigo.c:195: else if(borracho.x<cX && cX<borracho.x+5)
	ld	a,-1 (ix)
	sub	a, -10 (ix)
	jp	NC,00108$
	ld	a,-3 (ix)
	add	a, #0x05
	ld	c,a
	ld	a,-2 (ix)
	adc	a, #0x00
	ld	b,a
	ld	a,-5 (ix)
	sub	a, c
	ld	a,-4 (ix)
	sbc	a, b
	jp	PO, 00150$
	xor	a, #0x80
00150$:
	jp	P,00108$
;src/enemigo/enemigo.c:197: u8 w = 4 + (borracho.px & 1);
	ld	a,(#_borracho + 2)
	ld	-9 (ix), a
	and	a, #0x01
	add	a, #0x04
	ld	-11 (ix),a
;src/enemigo/enemigo.c:198: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
	ld	a,(#_borracho + 3)
	ld	-5 (ix), a
	and	a, #0x03
	jr	Z,00113$
	ld	-3 (ix),#0x01
	jr	00114$
00113$:
	ld	-3 (ix),#0x00
00114$:
	ld	a,-3 (ix)
	add	a, #0x07
	ld	-12 (ix),a
;src/enemigo/enemigo.c:199: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
	ld	c,-5 (ix)
	ld	b,#0x00
	ld	a,c
	add	a,#0xBC
	ld	e,a
	ld	a,b
	adc	a,#0xFF
	ld	d,a
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00115$
	ld	hl,#0xFFBF
	add	hl,bc
00115$:
	ld	d,l
	sra	h
	rr	d
	sra	h
	rr	d
	ld	b,-9 (ix)
	srl	b
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	hl,#0xE280
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	h,-12 (ix)
	ld	l,-11 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_cpct_etm_drawTileBox2x4
;src/enemigo/enemigo.c:200: j=1;     
	ld	hl,#_j + 0
	ld	(hl), #0x01
00108$:
	ld	sp, ix
	pop	ix
	ret
;src/enemigo/enemigo.c:207: void quitar_vida()
;	---------------------------------
; Function quitar_vida
; ---------------------------------
_quitar_vida::
;src/enemigo/enemigo.c:209: u8 x=get_X();
	call	_get_X
	ld	c,l
;src/enemigo/enemigo.c:211: if(borracho.x==x)
	ld	hl,#_borracho+0
	ld	b,(hl)
	ld	a,c
	sub	a, b
	ret	NZ
;src/enemigo/enemigo.c:213: restaVida();
	jp  _restaVida
;src/enemigo/enemigo.c:218: void wait4UserKeypress() {
;	---------------------------------
; Function wait4UserKeypress
; ---------------------------------
_wait4UserKeypress::
;src/enemigo/enemigo.c:221: cpct_scanKeyboard_f(); 
	call	_cpct_scanKeyboard_f
;src/enemigo/enemigo.c:222: if (cpct_isAnyKeyPressed()) 
	call	_cpct_isAnyKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/enemigo/enemigo.c:224: if(cpct_isKeyPressed(Key_CursorRight)||cpct_isKeyPressed(Key_CursorLeft)||cpct_isKeyPressed(Key_CursorUp))
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00101$
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00101$
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	Z
00101$:
;src/enemigo/enemigo.c:226: c++;
	ld	hl, #_c+0
	inc	(hl)
	ret	NZ
	ld	hl, #_c+1
	inc	(hl)
	ret	NZ
	ld	hl, #_c+2
	inc	(hl)
	ret	NZ
	ld	hl, #_c+3
	inc	(hl)
	ret
;src/enemigo/enemigo.c:231: u8 get_BX(){
;	---------------------------------
; Function get_BX
; ---------------------------------
_get_BX::
;src/enemigo/enemigo.c:232: return borracho.x;
	ld	hl, #_borracho + 0
	ld	l,(hl)
	ret
;src/enemigo/enemigo.c:235: u8 get_BY(){
;	---------------------------------
; Function get_BY
; ---------------------------------
_get_BY::
;src/enemigo/enemigo.c:236: return borracho.y;
	ld	hl, #(_borracho + 0x0001) + 0
	ld	l,(hl)
	ret
;src/enemigo/enemigo.c:240: void reviveIA( )
;	---------------------------------
; Function reviveIA
; ---------------------------------
_reviveIA::
;src/enemigo/enemigo.c:244: cpct_srand(c);
	ld	iy,#_c
	ld	l,0 (iy)
	ld	iy,#_c
	ld	h,1 (iy)
	ld	iy,#_c
	ld	e,2 (iy)
	ld	iy,#_c
	ld	d,3 (iy)
	call	_cpct_setSeed_mxor
	call	_cpct_restoreState_mxor_u8
;src/enemigo/enemigo.c:245: random=cpct_rand()%70;
	call	_cpct_getRandom_mxor_u8
	ld	b,l
	ld	a,#0x46
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	ld	c,l
;src/enemigo/enemigo.c:246: borracho.x=borracho.px=5+random;
	ld	hl,#_borracho + 2
	ld	a,c
	add	a, #0x05
	ld	(hl),a
	ld	(#_borracho),a
;src/enemigo/enemigo.c:247: borracho.y=borracho.py=162;
	ld	hl,#(_borracho + 0x0003)
	ld	(hl),#0xA2
	ld	hl,#(_borracho + 0x0001)
	ld	(hl),#0xA2
;src/enemigo/enemigo.c:248: pmapa=mapaJug;
	ld	hl,(_mapaJug)
	ld	(_pmapa),hl
;src/enemigo/enemigo.c:249: c=0;
	xor	a, a
	ld	(#_c + 0),a
	ld	(#_c + 1),a
	ld	(#_c + 2),a
	ld	(#_c + 3),a
;src/enemigo/enemigo.c:250: j=0;
	ld	hl,#_j + 0
	ld	(hl), #0x00
;src/enemigo/enemigo.c:251: redibujarBorracho();
	call	_redibujarBorracho
;src/enemigo/enemigo.c:252: ini_estado();
	jp  _ini_estado
;src/enemigo/enemigo.c:255: void IA()
;	---------------------------------
; Function IA
; ---------------------------------
_IA::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;src/enemigo/enemigo.c:258: u8 x = get_X();
	call	_get_X
	ld	-10 (ix),l
;src/enemigo/enemigo.c:259: u8 y = get_Y();
	call	_get_Y
	ld	-9 (ix),l
;src/enemigo/enemigo.c:261: mapaJug=get_tip_mapa();
	call	_get_tip_mapa
	ld	(_mapaJug),hl
;src/enemigo/enemigo.c:262: if(mapaJug==pmapa)
	ld	a,(#_mapaJug + 0)
	ld	iy,#_pmapa
	sub	a, 0 (iy)
	jp	NZ,00140$
	ld	a,(#_mapaJug + 1)
	ld	iy,#_pmapa
	sub	a, 1 (iy)
	jp	NZ,00140$
;src/enemigo/enemigo.c:264: wait4UserKeypress();
	call	_wait4UserKeypress
;src/enemigo/enemigo.c:265: if(borracho.x-20 < x && x < borracho.x-6 && y==borracho.y-6)
	ld	bc,#_borracho+0
	ld	a,(bc)
	ld	e,a
	ld	d,#0x00
	ld	a,e
	add	a,#0xEC
	ld	l,a
	ld	a,d
	adc	a,#0xFF
	ld	h,a
	ld	a,-10 (ix)
	ld	-8 (ix),a
	ld	-7 (ix),#0x00
	ld	a,-9 (ix)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	a,l
	sub	a, -8 (ix)
	ld	a,h
	sbc	a, -7 (ix)
	jp	PO, 00242$
	xor	a, #0x80
00242$:
	jp	P,00135$
	ld	a,e
	add	a,#0xFA
	ld	l,a
	ld	a,d
	adc	a,#0xFF
	ld	h,a
	ld	a,-8 (ix)
	sub	a, l
	ld	a,-7 (ix)
	sbc	a, h
	jp	PO, 00243$
	xor	a, #0x80
00243$:
	jp	P,00135$
	ld	hl,#_borracho+1
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xFA
	ld	-4 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-3 (ix),a
	ld	a,-2 (ix)
	sub	a, -4 (ix)
	jr	NZ,00135$
	ld	a,-1 (ix)
	sub	a, -3 (ix)
	jr	NZ,00135$
;src/enemigo/enemigo.c:267: if(j==0)
	ld	a,(#_j + 0)
	or	a, a
	jp	NZ,00142$
;src/enemigo/enemigo.c:269: izquierda();
	call	_izquierda
;src/enemigo/enemigo.c:270: e=0;
	ld	hl,#_e + 0
	ld	(hl), #0x00
	jp	00142$
00135$:
;src/enemigo/enemigo.c:274: else if(borracho.x+8<x && x<borracho.x+20 && y==borracho.y-6)
	ld	hl,#0x0008
	add	hl,de
	ld	a,l
	sub	a, -8 (ix)
	ld	a,h
	sbc	a, -7 (ix)
	jp	PO, 00246$
	xor	a, #0x80
00246$:
	jp	P,00130$
	ld	hl,#0x0014
	add	hl,de
	ld	a,-8 (ix)
	sub	a, l
	ld	a,-7 (ix)
	sbc	a, h
	jp	PO, 00247$
	xor	a, #0x80
00247$:
	jp	P,00130$
	ld	hl,#_borracho+1
	ld	e,(hl)
	ld	d,#0x00
	ld	a,e
	add	a,#0xFA
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	ld	a,-2 (ix)
	sub	a, e
	jr	NZ,00130$
	ld	a,-1 (ix)
	sub	a, d
	jr	NZ,00130$
;src/enemigo/enemigo.c:276: if(j==0)
	ld	a,(#_j + 0)
	or	a, a
	jp	NZ,00142$
;src/enemigo/enemigo.c:278: derecha();
	call	_derecha
;src/enemigo/enemigo.c:279: e=0;
	ld	hl,#_e + 0
	ld	(hl), #0x00
	jp	00142$
00130$:
;src/enemigo/enemigo.c:284: if(e==0)
	ld	a,(#_e + 0)
	or	a, a
	jr	NZ,00106$
;src/enemigo/enemigo.c:286: quietoENE();
	push	bc
	call	_quietoENE
	pop	bc
00106$:
;src/enemigo/enemigo.c:289: if( borracho.x-20 < x && x <= borracho.x-6 && (y<162 && y>135)){
	ld	a,(bc)
	ld	c,a
	ld	e,c
	ld	d,#0x00
	ld	a,e
	add	a,#0xEC
	ld	b,a
	ld	a,d
	adc	a,#0xFF
	ld	l,a
	ld	a,-9 (ix)
	sub	a, #0xA2
	ld	a,#0x00
	rla
	ld	-4 (ix),a
	ld	a,#0x87
	sub	a, -9 (ix)
	ld	a,#0x00
	rla
	ld	-2 (ix),a
	ld	a,b
	sub	a, -8 (ix)
	ld	a,l
	sbc	a, -7 (ix)
	jp	PO, 00250$
	xor	a, #0x80
00250$:
	jp	P,00124$
	ld	a,e
	add	a,#0xFA
	ld	b,a
	ld	a,d
	adc	a,#0xFF
	ld	l,a
	ld	a,b
	sub	a, -8 (ix)
	ld	a,l
	sbc	a, -7 (ix)
	jp	PO, 00251$
	xor	a, #0x80
00251$:
	jp	M,00124$
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00124$
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00124$
;src/enemigo/enemigo.c:291: golpear(E_izquierda);
	ld	a,#0x01
	push	af
	inc	sp
	call	_golpear
	inc	sp
;src/enemigo/enemigo.c:293: e=1;
	ld	hl,#_e + 0
	ld	(hl), #0x01
	jp	00142$
00124$:
;src/enemigo/enemigo.c:294: }else if(borracho.x+8<=x && x<borracho.x+20 && (y<162 && y>135)){
	ld	hl,#0x0008
	add	hl,de
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,-8 (ix)
	sub	a, -6 (ix)
	ld	a,-7 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00252$
	xor	a, #0x80
00252$:
	jp	M,00118$
	ld	hl,#0x0014
	add	hl,de
	ld	a,-8 (ix)
	sub	a, l
	ld	a,-7 (ix)
	sbc	a, h
	jp	PO, 00253$
	xor	a, #0x80
00253$:
	jp	P,00118$
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00118$
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00118$
;src/enemigo/enemigo.c:295: golpear(E_derecha);
	xor	a, a
	push	af
	inc	sp
	call	_golpear
	inc	sp
;src/enemigo/enemigo.c:297: e=1;
	ld	hl,#_e + 0
	ld	(hl), #0x01
	jr	00142$
00118$:
;src/enemigo/enemigo.c:299: else if(borracho.x<x && x<borracho.x+G_BORRACHO_0_W && y==156){
	ld	a,-9 (ix)
	sub	a, #0x9C
	jr	NZ,00254$
	ld	a,#0x01
	jr	00255$
00254$:
	xor	a,a
00255$:
	ld	l,a
	ld	a,c
	sub	a, -10 (ix)
	jr	NC,00113$
	ld	a,-8 (ix)
	sub	a, -6 (ix)
	ld	a,-7 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00256$
	xor	a, #0x80
00256$:
	jp	P,00113$
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/enemigo/enemigo.c:300: izquierda();
	call	_izquierda
;src/enemigo/enemigo.c:301: dibujarProta();
	call	_dibujarProta
;src/enemigo/enemigo.c:302: e=1;
	ld	hl,#_e + 0
	ld	(hl), #0x01
	jr	00142$
00113$:
;src/enemigo/enemigo.c:304: else if(borracho.x-10<x && x<borracho.x && y==156){
	ld	a,e
	add	a,#0xF6
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	ld	a,e
	sub	a, -8 (ix)
	ld	a,d
	sbc	a, -7 (ix)
	jp	PO, 00257$
	xor	a, #0x80
00257$:
	jp	P,00108$
	ld	a,-10 (ix)
	sub	a, c
	jr	NC,00108$
	ld	a,l
	or	a, a
	jr	Z,00108$
;src/enemigo/enemigo.c:305: derecha();
	call	_derecha
;src/enemigo/enemigo.c:306: dibujarProta();
	call	_dibujarProta
;src/enemigo/enemigo.c:307: e=1;
	ld	hl,#_e + 0
	ld	(hl), #0x01
	jr	00142$
00108$:
;src/enemigo/enemigo.c:310: e=0;
	ld	hl,#_e + 0
	ld	(hl), #0x00
	jr	00142$
00140$:
;src/enemigo/enemigo.c:315: reviveIA();
	call	_reviveIA
00142$:
	ld	sp, ix
	pop	ix
	ret
;src/enemigo/enemigo.c:320: u8 alive()
;	---------------------------------
; Function alive
; ---------------------------------
_alive::
;src/enemigo/enemigo.c:322: return j;
	ld	iy,#_j
	ld	l,0 (iy)
	ret
;src/enemigo/enemigo.c:325: void BOestado(u8 k)
;	---------------------------------
; Function BOestado
; ---------------------------------
_BOestado::
;src/enemigo/enemigo.c:327: switch(k)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	ret	NZ
;src/enemigo/enemigo.c:329: case 0: IA();  break;
;src/enemigo/enemigo.c:331: }
	jp  _IA
;src/enemigo/enemigo.c:334: void ini_estado()
;	---------------------------------
; Function ini_estado
; ---------------------------------
_ini_estado::
;src/enemigo/enemigo.c:336: BOestado(0);
	xor	a, a
	push	af
	inc	sp
	call	_BOestado
	inc	sp
	ret
;src/enemigo/enemigo.c:339: void inicializar_borracho()
;	---------------------------------
; Function inicializar_borracho
; ---------------------------------
_inicializar_borracho::
;src/enemigo/enemigo.c:342: borracho.x= borracho.px = 60;
	ld	hl,#(_borracho + 0x0002)
	ld	(hl),#0x3C
	ld	hl,#_borracho
	ld	(hl),#0x3C
;src/enemigo/enemigo.c:343: borracho.y= borracho.py = 162;
	ld	hl,#(_borracho + 0x0003)
	ld	(hl),#0xA2
	ld	hl,#(_borracho + 0x0001)
	ld	(hl),#0xA2
;src/enemigo/enemigo.c:344: borracho.mover=SI;
	ld	hl,#(_borracho + 0x0006)
	ld	(hl),#0x01
;src/enemigo/enemigo.c:345: borracho.estado = 0;//quieto
	ld	hl,#(_borracho + 0x0007)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:346: borracho.nframe = 0;
	ld	hl,#(_borracho + 0x000a)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:347: borracho.frame  = &g_Frames[0];
	ld	hl,#_g_Frames
	ld	((_borracho + 0x0008)), hl
;src/enemigo/enemigo.c:348: borracho.mira   = E_derecha;
	ld	hl,#(_borracho + 0x000b)
	ld	(hl),#0x00
;src/enemigo/enemigo.c:349: pmapa=g_map1;
	ld	hl,#_g_map1+0
	ld	(_pmapa),hl
;src/enemigo/enemigo.c:350: mapaJug=get_tip_mapa();
	call	_get_tip_mapa
	ld	(_mapaJug),hl
;src/enemigo/enemigo.c:351: e=0;
	ld	hl,#_e + 0
	ld	(hl), #0x00
;src/enemigo/enemigo.c:352: c=0;
	xor	a, a
	ld	(#_c + 0),a
	ld	(#_c + 1),a
	ld	(#_c + 2),a
	ld	(#_c + 3),a
;src/enemigo/enemigo.c:353: j=0;
	ld	hl,#_j + 0
	ld	(hl), #0x00
;src/enemigo/enemigo.c:354: dibujarBorracho();
	jp  _dibujarBorracho
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
