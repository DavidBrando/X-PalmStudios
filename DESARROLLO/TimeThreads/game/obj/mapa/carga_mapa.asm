;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module carga_mapa
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_etm_drawTileBox2x4
	.globl _mapa
	.globl _inicializar_mapa
	.globl _dibujarMapa
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_mapa::
	.ds 2
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
;src/mapa/carga_mapa.c:7: void inicializar_mapa()
;	---------------------------------
; Function inicializar_mapa
; ---------------------------------
_inicializar_mapa::
;src/mapa/carga_mapa.c:11: cpct_etm_setTileset2x4(g_tileset);
	ld	hl,#_g_tileset
	call	_cpct_etm_setTileset2x4
;src/mapa/carga_mapa.c:12: mapa = g_map1;
	ld	hl,#_g_map1+0
	ld	(_mapa),hl
;src/mapa/carga_mapa.c:13: dibujarMapa();
	jp  _dibujarMapa
;src/mapa/carga_mapa.c:16: void dibujarMapa(u8* map)
;	---------------------------------
; Function dibujarMapa
; ---------------------------------
_dibujarMapa::
;src/mapa/carga_mapa.c:18: cpct_etm_drawTilemap2x4 (g_map1_W, g_map1_H, ORIGEN_MAPA, map);
	pop	de
	pop	bc
	push	bc
	push	de
	push	bc
	ld	hl,#0xE280
	push	hl
	ld	hl,#0x2821
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
