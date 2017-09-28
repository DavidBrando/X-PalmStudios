;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _teclado
	.globl _cambiaEstado
	.globl _inicializar
	.globl _muerteJug
	.globl _fin
	.globl _presenta
	.globl _inicializar_borracho
	.globl _ejecutar_jugador
	.globl _get_mapa
	.globl _get_X
	.globl _inicializar_jugador
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM0
	.globl _cpct_drawSprite
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _cpct_disableFirmware
	.globl _estados
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_estados::
	.ds 1
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
;src/main.c:36: void presenta()
;	---------------------------------
; Function presenta
; ---------------------------------
_presenta::
;src/main.c:38: cpct_drawSprite(g_async, TITULO, G_ASYNC_W, G_ASYNC_H);
	ld	hl,#0x1820
	push	hl
	ld	hl,#0xC338
	push	hl
	ld	hl,#_g_async
	push	hl
	call	_cpct_drawSprite
;src/main.c:39: cpct_drawStringM0("Presenta", PRESEN, 1, 0);
	ld	hl,#0x0001
	push	hl
	ld	hl,#0xF428
	push	hl
	ld	hl,#___str_0
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:40: cpct_drawStringM0 ("PLEASE!", SCREEN, 3, 0);
	ld	hl,#0x0003
	push	hl
	ld	hl,#0xF5BB
	push	hl
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:41: cpct_drawStringM0 ("PRESS INTRO!", SCREEN2, 3, 0);
	ld	hl,#0x0003
	push	hl
	ld	hl,#0xC651
	push	hl
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_0:
	.ascii "Presenta"
	.db 0x00
___str_1:
	.ascii "PLEASE!"
	.db 0x00
___str_2:
	.ascii "PRESS INTRO!"
	.db 0x00
;src/main.c:45: u8 fin()
;	---------------------------------
; Function fin
; ---------------------------------
_fin::
;src/main.c:47: u8 mapa=get_mapa();
	call	_get_mapa
;src/main.c:48: u8 x=get_X();
	push	hl
	call	_get_X
	ld	b,l
	pop	hl
;src/main.c:49: u8 t=0;
	ld	c,#0x00
;src/main.c:50: if(mapa==6&& x==74)
	ld	a,l
	sub	a, #0x06
	jr	NZ,00102$
	ld	a,b
	sub	a, #0x4A
	jr	NZ,00102$
;src/main.c:52: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:53: estados=2;
	ld	hl,#_estados + 0
	ld	(hl), #0x02
;src/main.c:54: t=1;
	ld	c,#0x01
00102$:
;src/main.c:56: return t;
	ld	l,c
	ret
;src/main.c:59: u8 muerteJug()
;	---------------------------------
; Function muerteJug
; ---------------------------------
_muerteJug::
;src/main.c:61: u8 vida=get_vida();
	call	_get_vida
;src/main.c:62: u8 v=0;
;src/main.c:63: if(vida<=0)
	ld	a, l
	ld	l, #0x00
	or	a, a
	ret	NZ
;src/main.c:65: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:66: estados=3;
	ld	hl,#_estados + 0
	ld	(hl), #0x03
;src/main.c:67: v=1;
	ld	l,#0x01
;src/main.c:69: return v;
	ret
;src/main.c:71: void inicializar()
;	---------------------------------
; Function inicializar
; ---------------------------------
_inicializar::
;src/main.c:73: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:74: cpct_setVideoMode(0);
	ld	l,#0x00
	call	_cpct_setVideoMode
;src/main.c:75: cpct_setBorder(HW_BLACK);
	ld	hl,#0x1410
	push	hl
	call	_cpct_setPALColour
;src/main.c:76: cpct_setPalette(g_palette,16);
	ld	hl,#0x0010
	push	hl
	ld	hl,#_g_palette
	push	hl
	call	_cpct_setPalette
;src/main.c:77: cpct_etm_setTileset2x4(g_tileset);
	ld	hl,#_g_tileset
	call	_cpct_etm_setTileset2x4
;src/main.c:78: estados=0;
	ld	hl,#_estados + 0
	ld	(hl), #0x00
	ret
;src/main.c:81: void cambiaEstado(u8 state)
;	---------------------------------
; Function cambiaEstado
; ---------------------------------
_cambiaEstado::
;src/main.c:83: estados=state;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_estados + 0),a
	ret
;src/main.c:86: void teclado(u8 k)
;	---------------------------------
; Function teclado
; ---------------------------------
_teclado::
;src/main.c:88: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/main.c:89: if ( cpct_isKeyPressed(Key_Return)) {
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/main.c:90: if(k==0)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;src/main.c:92: estados=1;
	ld	hl,#_estados + 0
	ld	(hl), #0x01
;src/main.c:93: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
00102$:
;src/main.c:96: if(k==1)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	dec	a
	jr	NZ,00104$
;src/main.c:99: estados=2;
	ld	hl,#_estados + 0
	ld	(hl), #0x02
00104$:
;src/main.c:102: if(k==2||k==3)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x02
	jr	Z,00105$
	ld	a,0 (iy)
	sub	a, #0x03
	ret	NZ
00105$:
;src/main.c:104: estados=0;
	ld	hl,#_estados + 0
	ld	(hl), #0x00
	ret
;src/main.c:110: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:111: inicializar();
	call	_inicializar
;src/main.c:112: while(1)
00107$:
;src/main.c:115: switch(estados)
	ld	a,#0x03
	ld	iy,#_estados
	sub	a, 0 (iy)
	jr	C,00107$
	ld	iy,#_estados
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00119$
	add	hl,de
	add	hl,de
;src/main.c:117: case 0: 
	jp	(hl)
00119$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
00101$:
;src/main.c:118: presenta();
	call	_presenta
;src/main.c:119: teclado(estados);
	ld	a,(_estados)
	push	af
	inc	sp
	call	_teclado
	inc	sp
;src/main.c:122: break;
	jr	00107$
;src/main.c:123: case 1:
00102$:
;src/main.c:124: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:125: inicializar_jugador();
	call	_inicializar_jugador
;src/main.c:126: inicializar_borracho();
	call	_inicializar_borracho
;src/main.c:127: ejecutar_jugador();
	call	_ejecutar_jugador
;src/main.c:128: break;
	jr	00107$
;src/main.c:130: case 2:
00103$:
;src/main.c:132: cpct_drawStringM0 ("THE END", FIN, 4, 0);
	ld	hl,#0x0004
	push	hl
	ld	hl,#0xDAE9
	push	hl
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:133: cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
	ld	hl,#0x0004
	push	hl
	ld	hl,#0xEB2E
	push	hl
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:134: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:135: teclado(estados);
	ld	a,(_estados)
	push	af
	inc	sp
	call	_teclado
	inc	sp
;src/main.c:136: break;
	jp	00107$
;src/main.c:138: case 3:
00104$:
;src/main.c:139: cpct_drawStringM0 ("YOUR PLAYER HAS DIED", DIED, 4, 0);
	ld	hl,#0x0004
	push	hl
	ld	hl,#0xF9E0
	push	hl
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:140: cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
	ld	hl,#0x0004
	push	hl
	ld	hl,#0xEB2E
	push	hl
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:141: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:142: teclado(estados);
	ld	a,(_estados)
	push	af
	inc	sp
	call	_teclado
	inc	sp
;src/main.c:144: }
	jp	00107$
___str_3:
	.ascii "THE END"
	.db 0x00
___str_4:
	.ascii "PRESS ENTER!!"
	.db 0x00
___str_5:
	.ascii "YOUR PLAYER HAS DIED"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
