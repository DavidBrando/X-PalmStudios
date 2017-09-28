;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module jugador
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ini_estado
	.globl _get_vida
	.globl _fin
	.globl _sobreSuelo
	.globl _get_BX
	.globl _mata_enemigo
	.globl _dibujarMapa
	.globl _sprintf
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_getScreenPtr
	.globl _cpct_waitVSYNC
	.globl _cpct_drawStringM0
	.globl _cpct_hflipSpriteM0
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_get2Bits
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_if
	.globl _Jy
	.globl _o
	.globl _mapaCU
	.globl _EMirar
	.globl _cuchillo
	.globl _EEstados
	.globl _prota
	.globl _q
	.globl _num_mapa
	.globl _map
	.globl _g_tablaSalto
	.globl _mapas
	.globl _anim_salto
	.globl _anim_andar
	.globl _g_frames
	.globl _dibujarProta
	.globl _borrarProta
	.globl _borrarCuchillo
	.globl _redibujarProta
	.globl _moverCuchillo
	.globl _dibujarCuchillo
	.globl _avanzarMapa
	.globl _retrocederMapa
	.globl _redibujarCuchillo
	.globl _obtenerTilePtr
	.globl _girarFrame
	.globl _asignarFrame
	.globl _ini_preSalto
	.globl _ini_salto
	.globl _ini_andar
	.globl _ini_quieto
	.globl _ini_caer
	.globl _caer
	.globl _cayendo_entrar
	.globl _ajustarAlSuelo
	.globl _imprimirMuni
	.globl _imprimirVida
	.globl _atacar
	.globl _estatico
	.globl _compruebaTeclas
	.globl _selectSprite
	.globl _descender
	.globl _cayendo
	.globl _ascender
	.globl _saltando
	.globl _saltar_ani
	.globl _finsalto
	.globl _andar_ani
	.globl _moverIzquierda
	.globl _moverDerecha
	.globl _moverIzq2
	.globl _moverDer2
	.globl _ante_salto
	.globl _saltar
	.globl _andar
	.globl _cambiarEstado
	.globl _imprimeHUD
	.globl _restaVida
	.globl _inicializar_cuchillo
	.globl _inicializar_jugador
	.globl _muerteCaida
	.globl _get_X
	.globl _get_Y
	.globl _get_CX
	.globl _get_CY
	.globl _get_mapa
	.globl _get_tip_mapa
	.globl _ejecutar_jugador
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_map::
	.ds 2
_num_mapa::
	.ds 1
_q::
	.ds 1
_prota::
	.ds 14
_EEstados::
	.ds 1
_cuchillo::
	.ds 12
_EMirar::
	.ds 1
_mapaCU::
	.ds 2
_o::
	.ds 1
_Jy::
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
;src/jugador/jugador.c:26: cpctm_createTransparentMaskTable (a,0x100, M0, 0);
;	---------------------------------
; Function dummy_cpct_transparentMaskTable0M0_container
; ---------------------------------
_dummy_cpct_transparentMaskTable0M0_container::
	.area _a_ (ABS) 
	.org 0x100 
	 _a::
	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.area _CSEG (REL, CON) 
;src/jugador/jugador.c:116: void dibujarProta()
;	---------------------------------
; Function dibujarProta
; ---------------------------------
_dibujarProta::
;src/jugador/jugador.c:119: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
	ld	hl, #_prota + 1
	ld	d,(hl)
	ld	hl, #_prota + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/jugador/jugador.c:120: cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, G_PERSONAJE_00_W,G_PERSONAJE_00_H,a);
	ld	hl, (#_prota + 7)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#_a
	push	hl
	ld	hl,#0x2010
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
_g_frames:
	.db #0x00	; 0
	.dw _g_personaje_00
	.db #0x00	; 0
	.dw _g_personaje_01
	.db #0x00	; 0
	.dw _g_personaje_02
	.db #0x00	; 0
	.dw _g_personaje_03
	.db #0x00	; 0
	.dw _g_personaje_04
	.db #0x00	; 0
	.dw _g_personaje_05
	.db #0x00	; 0
	.dw _g_personaje_06
	.db #0x00	; 0
	.dw _g_personaje_07
	.db #0x00	; 0
	.dw _g_personaje_08
	.db #0x00	; 0
	.dw _g_personaje_09
	.db #0x00	; 0
	.dw _g_personaje_10
	.db 0x00
	.db 0x00
	.db 0x00
_anim_andar:
	.dw (_g_frames + 3)
	.dw (_g_frames + 6)
	.dw (_g_frames + 9)
	.dw (_g_frames + 12)
	.dw (_g_frames + 15)
_anim_salto:
	.dw (_g_frames + 21)
	.dw (_g_frames + 24)
	.dw (_g_frames + 27)
	.dw (_g_frames + 30)
_mapas:
	.dw _g_map1
	.dw _g_map2
	.dw _g_map3
	.dw _g_map4
	.dw _g_map5
	.dw _g_map6
	.dw _g_map7
_g_tablaSalto:
	.db #0xFF	; 255
	.db #0xFA	; 250
	.db #0xA9	; 169
	.db #0x55	; 85	'U'
	.db #0x40	; 64
	.db 0x00
;src/jugador/jugador.c:124: void borrarProta() {
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/jugador/jugador.c:125: u8 w = 3 + (prota.xp & 1);
	ld	hl, #_prota + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
	inc	b
;src/jugador/jugador.c:126: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
	ld	hl, #_prota + 3
	ld	e,(hl)
	ld	a,e
	and	a, #0x03
	jr	Z,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	ld	a,#0x00
00104$:
	add	a, #0x08
	ld	-3 (ix),a
;src/jugador/jugador.c:127: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
	ld	iy,(_map)
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
;src/jugador/jugador.c:131: void borrarCuchillo() {
;	---------------------------------
; Function borrarCuchillo
; ---------------------------------
_borrarCuchillo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/jugador/jugador.c:132: u8 w = 2 + (cuchillo.xp & 1);
	ld	hl, #_cuchillo + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
;src/jugador/jugador.c:133: u8 h = 1 + (cuchillo.yp & 3 ? 1 : 0);
	ld	hl, #_cuchillo + 3
	ld	e,(hl)
	ld	a,e
	and	a, #0x03
	jr	Z,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	ld	a,#0x00
00104$:
	inc	a
	ld	-3 (ix),a
;src/jugador/jugador.c:134: cpct_etm_drawTileBox2x4(cuchillo.xp / 2, (cuchillo.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
	ld	iy,(_map)
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
;src/jugador/jugador.c:138: void redibujarProta(){
;	---------------------------------
; Function redibujarProta
; ---------------------------------
_redibujarProta::
;src/jugador/jugador.c:139: borrarProta();
	call	_borrarProta
;src/jugador/jugador.c:140: prota.xp = prota.x;
	ld	bc,#_prota + 2
	ld	a, (#_prota + 0)
	ld	(bc),a
;src/jugador/jugador.c:141: prota.yp = prota.y;
	ld	bc,#_prota + 3
	ld	a, (#_prota + 1)
	ld	(bc),a
;src/jugador/jugador.c:142: dibujarProta();
	jp  _dibujarProta
;src/jugador/jugador.c:146: void moverCuchillo(){
;	---------------------------------
; Function moverCuchillo
; ---------------------------------
_moverCuchillo::
;src/jugador/jugador.c:148: if(cuchillo.lanzandoDerecha == SI)
	ld	bc,#_cuchillo+0
	ld	hl, #(_cuchillo + 0x0007) + 0
	ld	l,(hl)
;src/jugador/jugador.c:152: cuchillo.mover = SI;        
	ld	a,c
	add	a, #0x06
	ld	e,a
	ld	a,b
	adc	a, #0x00
	ld	d,a
;src/jugador/jugador.c:148: if(cuchillo.lanzandoDerecha == SI)
	ld	a,l
	dec	a
	jr	NZ,00110$
;src/jugador/jugador.c:150: if(cuchillo.x <= LIMITE_DERECHO_CUCHILLO-2){
	ld	a,(bc)
	ld	l,a
	ld	a,#0x4A
	sub	a, l
	jr	C,00102$
;src/jugador/jugador.c:151: cuchillo.x+=2;
	ld	a,l
	add	a, #0x02
	ld	(bc),a
;src/jugador/jugador.c:152: cuchillo.mover = SI;        
	ld	a,#0x01
	ld	(de),a
	ret
00102$:
;src/jugador/jugador.c:156: cuchillo.lanzandoDerecha = NO;
	ld	hl,#(_cuchillo + 0x0007)
	ld	(hl),#0x00
;src/jugador/jugador.c:157: cuchillo.mover = NO;
	xor	a, a
	ld	(de),a
	ret
00110$:
;src/jugador/jugador.c:163: if(cuchillo.lanzandoDerecha == NO)
	ld	a,l
	or	a, a
	ret	NZ
;src/jugador/jugador.c:164: if(cuchillo.x >= 2){
	ld	a,(bc)
	ld	l,a
	sub	a, #0x02
	jr	C,00105$
;src/jugador/jugador.c:165: cuchillo.x-=2;
	ld	a,l
	add	a,#0xFE
	ld	(bc),a
;src/jugador/jugador.c:166: cuchillo.mover = SI;
	ld	a,#0x01
	ld	(de),a
	ret
00105$:
;src/jugador/jugador.c:169: cuchillo.mover=NO;
	xor	a, a
	ld	(de),a
	ret
;src/jugador/jugador.c:176: void dibujarCuchillo(){
;	---------------------------------
; Function dibujarCuchillo
; ---------------------------------
_dibujarCuchillo::
;src/jugador/jugador.c:177: u8* pvmem2= cpct_getScreenPtr(CPCT_VMEM_START, cuchillo.x, cuchillo.y); //puntero a la memoria de video con la posicion del prota
	ld	hl, #_cuchillo + 1
	ld	d,(hl)
	ld	hl, #_cuchillo + 0
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
;src/jugador/jugador.c:179: cpct_drawSpriteMaskedAlignedTable (cuchillo.sprite, pvmem2, G_CUCHILLO_W, G_CUCHILLO_H, a);
	ld	bc, (#_cuchillo + 4)
	ld	hl,#_a
	push	hl
	ld	hl,#0x0404
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/jugador/jugador.c:184: void avanzarMapa() {
;	---------------------------------
; Function avanzarMapa
; ---------------------------------
_avanzarMapa::
;src/jugador/jugador.c:186: if (num_mapa < NUM_MAPAS-1) {
	ld	a,(#_num_mapa + 0)
	sub	a, #0x06
	ret	NC
;src/jugador/jugador.c:187: map = mapas[++num_mapa];
	ld	bc,#_mapas+0
	ld	hl, #_num_mapa+0
	inc	(hl)
	ld	iy,#_num_mapa
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl,bc
	ld	a,(hl)
	ld	iy,#_map
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#_map + 1),a
;src/jugador/jugador.c:188: prota.x = prota.xp = 0;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x00
	ld	hl,#_prota
	ld	(hl),#0x00
;src/jugador/jugador.c:189: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:190: inicializar_cuchillo(map);
	ld	hl,(_map)
	push	hl
	call	_inicializar_cuchillo
	pop	af
;src/jugador/jugador.c:191: dibujarMapa(map);
	ld	hl,(_map)
	push	hl
	call	_dibujarMapa
	pop	af
	ret
;src/jugador/jugador.c:195: void retrocederMapa() {
;	---------------------------------
; Function retrocederMapa
; ---------------------------------
_retrocederMapa::
;src/jugador/jugador.c:196: if (num_mapa > 0) {
	ld	a,(#_num_mapa + 0)
	or	a, a
	ret	Z
;src/jugador/jugador.c:197: map = mapas[--num_mapa];
	ld	bc,#_mapas+0
	ld	hl, #_num_mapa+0
	dec	(hl)
	ld	iy,#_num_mapa
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl,bc
	ld	a,(hl)
	ld	iy,#_map
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#_map + 1),a
;src/jugador/jugador.c:198: prota.x = prota.xp = ANCHO_PANTALLA - G_PERSONAJE_00_W;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x40
	ld	hl,#_prota
	ld	(hl),#0x40
;src/jugador/jugador.c:199: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:200: inicializar_cuchillo(map);
	ld	hl,(_map)
	push	hl
	call	_inicializar_cuchillo
	pop	af
;src/jugador/jugador.c:201: dibujarMapa(map);
	ld	hl,(_map)
	push	hl
	call	_dibujarMapa
	pop	af
	ret
;src/jugador/jugador.c:206: void redibujarCuchillo(){
;	---------------------------------
; Function redibujarCuchillo
; ---------------------------------
_redibujarCuchillo::
;src/jugador/jugador.c:207: borrarCuchillo();
	call	_borrarCuchillo
;src/jugador/jugador.c:208: cuchillo.xp = cuchillo.x;
	ld	bc,#_cuchillo + 2
	ld	a, (#_cuchillo + 0)
	ld	(bc),a
;src/jugador/jugador.c:209: cuchillo.yp = cuchillo.y;
	ld	bc,#_cuchillo + 3
	ld	a, (#_cuchillo + 1)
	ld	(bc),a
;src/jugador/jugador.c:210: dibujarCuchillo();
	jp  _dibujarCuchillo
;src/jugador/jugador.c:214: u8* obtenerTilePtr(u8 x, u8 y) {
;	---------------------------------
; Function obtenerTilePtr
; ---------------------------------
_obtenerTilePtr::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/jugador/jugador.c:215: return map + (y-ORIGEN_MAPA_Y)/4*g_map1_W + x/2;
	ld	c,5 (ix)
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
	jr	Z,00103$
	ld	hl,#0xFFBF
	add	hl,bc
00103$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	hl,(_map)
	add	hl,bc
	ld	c,4 (ix)
	srl	c
	ld	e,c
	ld	d,#0x00
	add	hl,de
	pop	ix
	ret
;src/jugador/jugador.c:218: void girarFrame() {
;	---------------------------------
; Function girarFrame
; ---------------------------------
_girarFrame::
;src/jugador/jugador.c:219: TFrame* f = prota.frame;
	ld	bc, (#_prota + 7)
;src/jugador/jugador.c:220: if (f->mira != prota.mira) {
	ld	a,(bc)
	ld	e,a
	ld	hl, #(_prota + 0x0009) + 0
	ld	d,(hl)
	ld	a,e
	sub	a, d
	ret	Z
;src/jugador/jugador.c:221: cpct_hflipSpriteM0(G_PERSONAJE_00_W, G_PERSONAJE_00_H, f->sprite);
	ld	l, c
	ld	h, b
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ld	hl,#0x2010
	push	hl
	call	_cpct_hflipSpriteM0
	pop	bc
;src/jugador/jugador.c:222: f->mira = prota.mira;
	ld	a, (#(_prota + 0x0009) + 0)
	ld	(bc),a
	ret
;src/jugador/jugador.c:228: void asignarFrame(TFrame **animacion) {
;	---------------------------------
; Function asignarFrame
; ---------------------------------
_asignarFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/jugador/jugador.c:229: prota.frame = animacion[prota.nframe / 4];
	ld	hl, #_prota + 10
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
	ld	((_prota + 0x0007)), bc
	pop	ix
	ret
;src/jugador/jugador.c:232: void ini_preSalto()
;	---------------------------------
; Function ini_preSalto
; ---------------------------------
_ini_preSalto::
;src/jugador/jugador.c:234: prota.nframe = 0;
	ld	hl,#(_prota + 0x000a)
	ld	(hl),#0x00
;src/jugador/jugador.c:235: prota.estado = ST_salto;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x02
;src/jugador/jugador.c:236: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
;src/jugador/jugador.c:240: void ini_salto()
;	---------------------------------
; Function ini_salto
; ---------------------------------
_ini_salto::
;src/jugador/jugador.c:243: prota.estado = ST_saltando;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x03
;src/jugador/jugador.c:244: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:245: prota.salto = 0;
	ld	hl,#(_prota + 0x000c)
	ld	(hl),#0x00
	ret
;src/jugador/jugador.c:248: void ini_andar(u8 direccion)
;	---------------------------------
; Function ini_andar
; ---------------------------------
_ini_andar::
;src/jugador/jugador.c:250: prota.nframe=0;
	ld	hl,#(_prota + 0x000a)
	ld	(hl),#0x00
;src/jugador/jugador.c:251: prota.estado=ST_andando;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
;src/jugador/jugador.c:252: prota.mira = direccion;
	ld	hl,#(_prota + 0x0009)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/jugador/jugador.c:253: prota.mover=SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
;src/jugador/jugador.c:256: void ini_quieto()
;	---------------------------------
; Function ini_quieto
; ---------------------------------
_ini_quieto::
;src/jugador/jugador.c:258: prota.estado = ST_quieto;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;src/jugador/jugador.c:259: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
;src/jugador/jugador.c:262: void ini_caer() {
;	---------------------------------
; Function ini_caer
; ---------------------------------
_ini_caer::
;src/jugador/jugador.c:263: prota.nframe = 0;
	ld	hl,#(_prota + 0x000a)
	ld	(hl),#0x00
;src/jugador/jugador.c:264: prota.estado = ST_caer;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x05
;src/jugador/jugador.c:265: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
;src/jugador/jugador.c:268: void caer() {
;	---------------------------------
; Function caer
; ---------------------------------
_caer::
;src/jugador/jugador.c:269: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:270: ini_quieto();      
	jp  _ini_quieto
;src/jugador/jugador.c:273: void cayendo_entrar() {
;	---------------------------------
; Function cayendo_entrar
; ---------------------------------
_cayendo_entrar::
;src/jugador/jugador.c:274: prota.estado = ST_cayendo;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x04
;src/jugador/jugador.c:275: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:276: prota.salto  = PASOS_SALTO - 3;
	ld	hl,#(_prota + 0x000c)
	ld	(hl),#0x11
	ret
;src/jugador/jugador.c:279: void ajustarAlSuelo() {
;	---------------------------------
; Function ajustarAlSuelo
; ---------------------------------
_ajustarAlSuelo::
;src/jugador/jugador.c:281: prota.y = (prota.y & 0b11111100);
	ld	bc,#_prota+1
	ld	a,(bc)
	and	a, #0xFC
	ld	(bc),a
	ret
;src/jugador/jugador.c:286: u8 sobreSuelo() {
;	---------------------------------
; Function sobreSuelo
; ---------------------------------
_sobreSuelo::
;src/jugador/jugador.c:288: u8* tileSuelo = obtenerTilePtr(prota.x+2, prota.y +32);
	ld	a, (#_prota + 1)
	add	a, #0x20
	ld	b,a
	ld	a, (#_prota + 0)
	add	a, #0x02
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_obtenerTilePtr
	pop	af
;src/jugador/jugador.c:290: if (*tileSuelo==13)
	ld	a,(hl)
	sub	a, #0x0D
	jr	NZ,00102$
;src/jugador/jugador.c:292: return 1;
	ld	l,#0x01
	ret
00102$:
;src/jugador/jugador.c:294: return 0;
	ld	l,#0x00
	ret
;src/jugador/jugador.c:297: void imprimirMuni()
;	---------------------------------
; Function imprimirMuni
; ---------------------------------
_imprimirMuni::
	push	ix
	dec	sp
;src/jugador/jugador.c:300: sprintf(str, "%2u", cuchillo.municion);
	ld	hl,#_cuchillo+9
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_0
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x0019
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x0004
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	inc	sp
	pop	ix
	ret
___str_0:
	.ascii "%2u"
	.db 0x00
;src/jugador/jugador.c:303: void imprimirVida()
;	---------------------------------
; Function imprimirVida
; ---------------------------------
_imprimirVida::
	push	ix
	dec	sp
;src/jugador/jugador.c:306: sprintf(str, "%2u", prota.vida);
	ld	hl,#_prota+13
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_1
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x0A19
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x0004
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	inc	sp
	pop	ix
	ret
___str_1:
	.ascii "%2u"
	.db 0x00
;src/jugador/jugador.c:312: void atacar(){
;	---------------------------------
; Function atacar
; ---------------------------------
_atacar::
;src/jugador/jugador.c:313: cuchillo.y = prota.y+10;
	ld	bc,#_cuchillo + 1
	ld	a, (#_prota + 1)
	add	a, #0x0A
	ld	(bc),a
;src/jugador/jugador.c:314: cuchillo.mover=SI;
	ld	hl,#(_cuchillo + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:315: if(cuchillo.mira != prota.mira){
	ld	bc,#_cuchillo + 8
	ld	a,(bc)
	ld	d,a
	ld	hl, #(_prota + 0x0009) + 0
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jr	Z,00102$
;src/jugador/jugador.c:316: cuchillo.mira = prota.mira;
	ld	a,e
	ld	(bc),a
;src/jugador/jugador.c:317: cpct_hflipSpriteM0(G_CUCHILLO_W, G_CUCHILLO_H, cuchillo.sprite);
	ld	hl, (#_cuchillo + 4)
	push	hl
	ld	hl,#0x0404
	push	hl
	call	_cpct_hflipSpriteM0
00102$:
;src/jugador/jugador.c:320: if(prota.mira == M_derecha){
	ld	a, (#(_prota + 0x0009) + 0)
;src/jugador/jugador.c:321: cuchillo.x = prota.x+5; 
	ld	hl, #_prota + 0
	ld	c,(hl)
;src/jugador/jugador.c:320: if(prota.mira == M_derecha){
	or	a, a
	jr	NZ,00104$
;src/jugador/jugador.c:321: cuchillo.x = prota.x+5; 
	ld	a,c
	add	a, #0x05
	ld	(#_cuchillo),a
;src/jugador/jugador.c:322: cuchillo.lanzandoDerecha = SI;
	ld	hl,#(_cuchillo + 0x0007)
	ld	(hl),#0x01
	jr	00105$
00104$:
;src/jugador/jugador.c:325: cuchillo.x = prota.x-5; 
	ld	a,c
	add	a,#0xFB
	ld	(#_cuchillo),a
00105$:
;src/jugador/jugador.c:327: if(cuchillo.municion!=0)
	ld	bc,#_cuchillo + 9
	ld	a,(bc)
	or	a, a
	ret	Z
;src/jugador/jugador.c:329: cuchillo.municion--;
	add	a,#0xFF
	ld	(bc),a
;src/jugador/jugador.c:330: imprimirMuni();
	call	_imprimirMuni
	ret
;src/jugador/jugador.c:336: void estatico() {
;	---------------------------------
; Function estatico
; ---------------------------------
_estatico::
;src/jugador/jugador.c:339: u8 k = compruebaTeclas(keys, 4);
	ld	a,#0x04
	push	af
	inc	sp
	ld	hl,#_estatico_keys_1_141
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
	ld	e,l
;src/jugador/jugador.c:340: switch(k) {
	ld	a,#0x04
	sub	a, e
	ret	C
	ld	d,#0x00
	ld	hl,#00129$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:341: case 0:  break; // Nada que hacer
;src/jugador/jugador.c:342: case 1: ini_preSalto(); break;
	jp	(hl)
00129$:
	jr	00111$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
	jr	00111$
00102$:
	jp  _ini_preSalto
;src/jugador/jugador.c:343: case 2: ini_andar(M_derecha);   break;
00103$:
	xor	a, a
	push	af
	inc	sp
	call	_ini_andar
	inc	sp
	ret
;src/jugador/jugador.c:344: case 3: ini_andar(M_izquierda); break;
00104$:
	ld	a,#0x01
	push	af
	inc	sp
	call	_ini_andar
	inc	sp
	ret
;src/jugador/jugador.c:345: case 4: 
00105$:
;src/jugador/jugador.c:346: if(cuchillo.lanzandoDerecha==NO && cuchillo.mover==NO && cuchillo.municion!=0)
	ld	a, (#_cuchillo + 7)
	or	a, a
	ret	NZ
	ld	a, (#_cuchillo + 6)
	or	a, a
	ret	NZ
	ld	a, (#_cuchillo + 9)
	or	a, a
	ret	Z
;src/jugador/jugador.c:348: atacar();
	call	_atacar
;src/jugador/jugador.c:351: }
00111$:
	ret
_estatico_keys_1_141:
	.dw #0x0100
	.dw #0x0200
	.dw #0x0101
	.dw #0x8005
;src/jugador/jugador.c:354: u8 compruebaTeclas(const cpct_keyID* k, u8 numk) {
;	---------------------------------
; Function compruebaTeclas
; ---------------------------------
_compruebaTeclas::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/jugador/jugador.c:356: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
;src/jugador/jugador.c:357: if (cpct_isAnyKeyPressed()) {
	call	_cpct_isAnyKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00105$
;src/jugador/jugador.c:358: for(i=1; i <= numk; i++, k++) {
	ld	bc,#0x0101
	ld	e,4 (ix)
	ld	d,5 (ix)
00107$:
	ld	a,6 (ix)
	sub	a, b
	jr	C,00105$
;src/jugador/jugador.c:359: if (cpct_isKeyPressed(*k))
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00108$
;src/jugador/jugador.c:360: return i;
	ld	l,c
	jr	00109$
00108$:
;src/jugador/jugador.c:358: for(i=1; i <= numk; i++, k++) {
	inc	b
	ld	c,b
	inc	de
	inc	de
	jr	00107$
00105$:
;src/jugador/jugador.c:363: return 0;
	ld	l,#0x00
00109$:
	pop	ix
	ret
;src/jugador/jugador.c:367: void selectSprite()
;	---------------------------------
; Function selectSprite
; ---------------------------------
_selectSprite::
;src/jugador/jugador.c:369: switch(prota.estado)
	ld	hl, #_prota + 11
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jp	C,_girarFrame
	ld	d,#0x00
	ld	hl,#00111$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:371: case ST_quieto: {
	jp	(hl)
00111$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;src/jugador/jugador.c:372: prota.frame = &g_frames[0];
	ld	hl,#_g_frames
	ld	((_prota + 0x0007)), hl
;src/jugador/jugador.c:373: break;
	jp	_girarFrame
;src/jugador/jugador.c:376: case ST_andando: {
00102$:
;src/jugador/jugador.c:377: asignarFrame(anim_andar);
	ld	hl,#_anim_andar
	push	hl
	call	_asignarFrame
	pop	af
;src/jugador/jugador.c:380: break;
	jp	_girarFrame
;src/jugador/jugador.c:383: case ST_salto:{ 
00103$:
;src/jugador/jugador.c:384: asignarFrame(anim_salto);   
	ld	hl,#_anim_salto
	push	hl
	call	_asignarFrame
	pop	af
;src/jugador/jugador.c:386: }
;src/jugador/jugador.c:387: girarFrame();	
	jp  _girarFrame
;src/jugador/jugador.c:390: void descender() {
;	---------------------------------
; Function descender
; ---------------------------------
_descender::
;src/jugador/jugador.c:391: prota.y += cpct_get2Bits(g_tablaSalto, prota.salto);
	ld	hl, #(_prota + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #(_prota + 0x000c) + 0
	ld	e,(hl)
	ld	d,#0x00
	push	bc
	push	de
	ld	hl,#_g_tablaSalto
	push	hl
	call	_cpct_get2Bits
	pop	bc
	ld	a,c
	add	a, l
	ld	(#(_prota + 0x0001)),a
;src/jugador/jugador.c:392: if (prota.salto > 1)
	ld	hl, #(_prota + 0x000c) + 0
	ld	c,(hl)
	ld	a,#0x01
	sub	a, c
	ret	NC
;src/jugador/jugador.c:393: prota.salto--;
	dec	c
	ld	hl,#(_prota + 0x000c)
	ld	(hl),c
	ret
;src/jugador/jugador.c:396: void cayendo() {
;	---------------------------------
; Function cayendo
; ---------------------------------
_cayendo::
;src/jugador/jugador.c:398: u8 k = compruebaTeclas(keys, 2);
	ld	a,#0x02
	push	af
	inc	sp
	ld	hl,#_cayendo_keys_1_154
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
	ld	e,l
;src/jugador/jugador.c:399: switch(k) {
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
	ld	d,#0x00
	ld	hl,#00117$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:400: case 0: break; // Nada que hacer
;src/jugador/jugador.c:401: case 1: moverDer2();  break;
	jp	(hl)
00117$:
	jr	00104$
	jr	00102$
	jr	00103$
	jr	00104$
00102$:
	call	_moverDer2
	jr	00104$
;src/jugador/jugador.c:402: case 2: moverIzq2(); break;
00103$:
	call	_moverIzq2
;src/jugador/jugador.c:403: }
00104$:
;src/jugador/jugador.c:405: descender();
	call	_descender
;src/jugador/jugador.c:407: if (sobreSuelo()) {
	call	_sobreSuelo
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/jugador/jugador.c:408: ajustarAlSuelo();
	call	_ajustarAlSuelo
;src/jugador/jugador.c:409: ini_caer();
	call	_ini_caer
00106$:
;src/jugador/jugador.c:412: prota.mover=SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
_cayendo_keys_1_154:
	.dw #0x0200
	.dw #0x0101
;src/jugador/jugador.c:415: void ascender() {
;	---------------------------------
; Function ascender
; ---------------------------------
_ascender::
;src/jugador/jugador.c:416: prota.y -= cpct_get2Bits(g_tablaSalto, prota.salto);
	ld	hl, #(_prota + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #(_prota + 0x000c) + 0
	ld	e,(hl)
	ld	d,#0x00
	push	bc
	push	de
	ld	hl,#_g_tablaSalto
	push	hl
	call	_cpct_get2Bits
	pop	bc
	ld	a,c
	sub	a, l
	ld	c,a
	ld	hl,#(_prota + 0x0001)
	ld	(hl),c
;src/jugador/jugador.c:417: if (prota.y < ORIGEN_MAPA_Y)
	ld	a,c
	sub	a, #0x44
	jr	NC,00102$
;src/jugador/jugador.c:418: prota.y = ORIGEN_MAPA_Y;
	ld	(hl),#0x44
00102$:
;src/jugador/jugador.c:419: if (++prota.salto == PASOS_SALTO)
	ld	a, (#(_prota + 0x000c) + 0)
	inc	a
	ld	(#(_prota + 0x000c)),a
	sub	a, #0x14
	ret	NZ
;src/jugador/jugador.c:420: cayendo_entrar();
	call	_cayendo_entrar
	ret
;src/jugador/jugador.c:424: void saltando()
;	---------------------------------
; Function saltando
; ---------------------------------
_saltando::
;src/jugador/jugador.c:427: if (!cpct_isKeyPressed(Key_CursorUp)) {
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/jugador/jugador.c:428: cayendo_entrar();
	jp	Z,_cayendo_entrar
;src/jugador/jugador.c:431: u8 k = compruebaTeclas(keys, 2);
	ld	a,#0x02
	push	af
	inc	sp
	ld	hl,#_saltando_keys_2_160
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
	ld	e,l
;src/jugador/jugador.c:432: switch(k) {
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
	ld	d,#0x00
	ld	hl,#00118$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:433: case 0: break;
;src/jugador/jugador.c:434: case 1: moverDer2();   break;
	jp	(hl)
00118$:
	jr	00104$
	jr	00102$
	jr	00103$
	jr	00104$
00102$:
	call	_moverDer2
	jr	00104$
;src/jugador/jugador.c:435: case 2: moverIzq2(); break;
00103$:
	call	_moverIzq2
;src/jugador/jugador.c:436: }
00104$:
;src/jugador/jugador.c:437: ascender();
	call	_ascender
;src/jugador/jugador.c:438: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
_saltando_keys_2_160:
	.dw #0x0200
	.dw #0x0101
;src/jugador/jugador.c:443: void saltar_ani()
;	---------------------------------
; Function saltar_ani
; ---------------------------------
_saltar_ani::
;src/jugador/jugador.c:445: while(++prota.nframe == 4*4)
00103$:
	ld	bc,#_prota + 10
	ld	a,(bc)
	inc	a
	ld	(bc),a
	sub	a, #0x10
	ret	NZ
;src/jugador/jugador.c:447: prota.nframe = 0;
	xor	a, a
	ld	(bc),a
;src/jugador/jugador.c:449: if(prota.frame==&g_frames[10])
	ld	bc, (#_prota + 7)
	ld	a,c
	sub	a, #<((_g_frames + 0x001e))
	jr	NZ,00103$
	ld	a,b
	sub	a, #>((_g_frames + 0x001e))
	jr	NZ,00103$
;src/jugador/jugador.c:451: prota.estado=ST_sal_salto;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x06
	jr	00103$
;src/jugador/jugador.c:458: void finsalto()
;	---------------------------------
; Function finsalto
; ---------------------------------
_finsalto::
;src/jugador/jugador.c:460: if (!cpct_isKeyPressed(Key_CursorUp)) {
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/jugador/jugador.c:461: cayendo_entrar();
	jp	Z,_cayendo_entrar
;src/jugador/jugador.c:464: u8 k = compruebaTeclas(keys, 2);
	ld	a,#0x02
	push	af
	inc	sp
	ld	hl,#_finsalto_keys_2_167
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
	ld	e,l
;src/jugador/jugador.c:465: switch(k) {
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
	ld	d,#0x00
	ld	hl,#00118$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:466: case 0: break;
;src/jugador/jugador.c:467: case 1: moverDerecha();   break;
	jp	(hl)
00118$:
	jr	00104$
	jr	00102$
	jr	00103$
	jr	00104$
00102$:
	call	_moverDerecha
	jr	00104$
;src/jugador/jugador.c:468: case 2: moverIzquierda(); break;
00103$:
	call	_moverIzquierda
;src/jugador/jugador.c:469: }
00104$:
;src/jugador/jugador.c:470: saltando();
	call	_saltando
;src/jugador/jugador.c:471: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
_finsalto_keys_2_167:
	.dw #0x0200
	.dw #0x0101
;src/jugador/jugador.c:476: void andar_ani(u8 direccion)
;	---------------------------------
; Function andar_ani
; ---------------------------------
_andar_ani::
;src/jugador/jugador.c:478: prota.mira  = direccion;
	ld	hl,#(_prota + 0x0009)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;src/jugador/jugador.c:479: if(++prota.nframe == 5*4)
	ld	bc,#_prota + 10
	ld	a,(bc)
	inc	a
	ld	(bc),a
	sub	a, #0x14
	ret	NZ
;src/jugador/jugador.c:480: prota.nframe = 0;
	xor	a, a
	ld	(bc),a
	ret
;src/jugador/jugador.c:486: void moverIzquierda()
;	---------------------------------
; Function moverIzquierda
; ---------------------------------
_moverIzquierda::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/jugador/jugador.c:488: u8 x = get_BX() + G_PERSONAJE_00_W+2;
	call	_get_BX
	ld	a,l
	add	a, #0x12
	ld	-3 (ix),a
;src/jugador/jugador.c:489: u8 j= alive();
	call	_alive
	ld	-4 (ix),l
;src/jugador/jugador.c:490: u8 y =get_BY();
	call	_get_BY
	ld	-5 (ix),l
;src/jugador/jugador.c:492: if(prota.x > 0)
	ld	bc,#_prota+0
	ld	a,(bc)
	ld	e,a
	or	a, a
	jr	Z,00112$
;src/jugador/jugador.c:494: if(((prota.x>x || prota.x<x) && (prota.x > x || prota.x < x-G_PERSONAJE_00_W+3)) || prota.y<132|| y==0||j==1){
	ld	a,-3 (ix)
	sub	a, e
	ld	a,#0x00
	rla
	ld	d,a
	or	a, a
	jr	NZ,00105$
	ld	a,e
	sub	a, -3 (ix)
	jr	NC,00106$
00105$:
	ld	a,d
	or	a, a
	jr	NZ,00101$
	ld	l,-3 (ix)
	ld	h,#0x00
	push	de
	ld	de,#0xFFF3
	add	hl, de
	pop	de
	ld	-2 (ix),e
	ld	-1 (ix),#0x00
	ld	a,-2 (ix)
	sub	a, l
	ld	a,-1 (ix)
	sbc	a, h
	jp	PO, 00140$
	xor	a, #0x80
00140$:
	jp	M,00101$
00106$:
	ld	a,(#_prota+1)
	sub	a, #0x84
	jr	C,00101$
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,-4 (ix)
	dec	a
	jr	NZ,00114$
00101$:
;src/jugador/jugador.c:495: prota.x-=2;
	dec	e
	dec	e
	ld	a,e
	ld	(bc),a
;src/jugador/jugador.c:496: prota.mira = M_izquierda;
	ld	hl,#(_prota + 0x0009)
	ld	(hl),#0x01
	jr	00114$
00112$:
;src/jugador/jugador.c:500: if(map!=g_map1)
	ld	a,(#_map + 0)
	sub	a, #<(_g_map1)
	jr	NZ,00143$
	ld	a,(#_map + 1)
	sub	a, #>(_g_map1)
	jr	Z,00114$
00143$:
;src/jugador/jugador.c:502: retrocederMapa();
	call	_retrocederMapa
00114$:
	ld	sp, ix
	pop	ix
	ret
;src/jugador/jugador.c:509: void moverDerecha()
;	---------------------------------
; Function moverDerecha
; ---------------------------------
_moverDerecha::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/jugador/jugador.c:511: u8 x =get_BX() - 6;
	call	_get_BX
	ld	a,l
	add	a,#0xFA
	ld	-4 (ix),a
;src/jugador/jugador.c:512: u8 j= alive();
	call	_alive
	ld	-6 (ix),l
;src/jugador/jugador.c:513: u8 y =get_BY();
	call	_get_BY
	ld	-5 (ix),l
;src/jugador/jugador.c:515: if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
	ld	a,(#_prota + 0)
	ld	-1 (ix), a
	ld	-3 (ix),a
	ld	-2 (ix),#0x00
	ld	a,-3 (ix)
	add	a, #0x10
	ld	c,a
	ld	a,-2 (ix)
	adc	a, #0x00
	ld	b,a
	ld	a,c
	sub	a, #0x50
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00110$
;src/jugador/jugador.c:517: if(((prota.x<x || prota.x>x ) && (prota.x<x || prota.x > x + G_PERSONAJE_00_W ))|| prota.y<132 || y==0||j==1){
	ld	a,-1 (ix)
	sub	a, -4 (ix)
	ld	a,#0x00
	rla
	ld	c,a
	or	a, a
	jr	NZ,00105$
	ld	a,-4 (ix)
	sub	a, -1 (ix)
	jr	NC,00106$
00105$:
	ld	a,c
	or	a, a
	jr	NZ,00101$
	ld	c,-4 (ix)
	ld	b,#0x00
	ld	hl,#0x0010
	add	hl,bc
	ld	a,l
	sub	a, -3 (ix)
	ld	a,h
	sbc	a, -2 (ix)
	jp	PO, 00134$
	xor	a, #0x80
00134$:
	jp	M,00101$
00106$:
	ld	a,(#_prota+1)
	sub	a, #0x84
	jr	C,00101$
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00101$
	ld	a,-6 (ix)
	dec	a
	jr	NZ,00112$
00101$:
;src/jugador/jugador.c:518: prota.x+=2;
	ld	c,-1 (ix)
	inc	c
	inc	c
	ld	hl,#_prota
	ld	(hl),c
;src/jugador/jugador.c:519: prota.mira = M_derecha;
	ld	hl,#(_prota + 0x0009)
	ld	(hl),#0x00
	jr	00112$
00110$:
;src/jugador/jugador.c:523: avanzarMapa();
	call	_avanzarMapa
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/jugador/jugador.c:527: void moverIzq2()
;	---------------------------------
; Function moverIzq2
; ---------------------------------
_moverIzq2::
;src/jugador/jugador.c:529: if(prota.x > 0)
	ld	bc,#_prota+0
	ld	a,(bc)
	or	a, a
	jr	Z,00104$
;src/jugador/jugador.c:531: prota.x--;
	add	a,#0xFF
	ld	(bc),a
;src/jugador/jugador.c:532: prota.mira = M_izquierda;
	ld	hl,#(_prota + 0x0009)
	ld	(hl),#0x01
	ret
00104$:
;src/jugador/jugador.c:536: if(map!=g_map1)
	ld	a,(#_map + 0)
	sub	a, #<(_g_map1)
	jp	NZ,_retrocederMapa
	ld	a,(#_map + 1)
	sub	a, #>(_g_map1)
	ret	Z
;src/jugador/jugador.c:538: retrocederMapa();
	jp  _retrocederMapa
;src/jugador/jugador.c:543: void moverDer2()
;	---------------------------------
; Function moverDer2
; ---------------------------------
_moverDer2::
;src/jugador/jugador.c:546: if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	e,c
	ld	d,#0x00
	ld	hl,#0x0010
	add	hl,de
	ld	de, #0x8050
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jp	NC,_avanzarMapa
;src/jugador/jugador.c:548: prota.x++;
	inc	c
	ld	hl,#_prota
	ld	(hl),c
;src/jugador/jugador.c:549: prota.mira = M_derecha;
	ld	hl,#(_prota + 0x0009)
	ld	(hl),#0x00
	ret
;src/jugador/jugador.c:552: avanzarMapa();
	jp  _avanzarMapa
;src/jugador/jugador.c:557: void ante_salto()
;	---------------------------------
; Function ante_salto
; ---------------------------------
_ante_salto::
;src/jugador/jugador.c:559: while (++prota.nframe == 4*4)
00101$:
	ld	bc,#_prota+10
	ld	a,(bc)
	inc	a
	ld	(bc),a
	sub	a, #0x10
	ret	NZ
;src/jugador/jugador.c:560: ini_salto();
	call	_ini_salto
	jr	00101$
;src/jugador/jugador.c:565: void saltar()
;	---------------------------------
; Function saltar
; ---------------------------------
_saltar::
;src/jugador/jugador.c:568: u8 k = compruebaTeclas(keys, 1);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#_saltar_keys_1_188
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
;src/jugador/jugador.c:569: switch(k) {
	ld	a,l
	or	a, a
	jr	Z,00101$
	dec	l
	jr	Z,00102$
	jr	00103$
;src/jugador/jugador.c:570: case 0: ini_quieto(); break; 
00101$:
	call	_ini_quieto
	jr	00103$
;src/jugador/jugador.c:571: case 1: ante_salto(); break;
00102$:
	call	_ante_salto
;src/jugador/jugador.c:572: }
00103$:
;src/jugador/jugador.c:573: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
	ret
_saltar_keys_1_188:
	.dw #0x0100
;src/jugador/jugador.c:579: void andar()
;	---------------------------------
; Function andar
; ---------------------------------
_andar::
;src/jugador/jugador.c:582: u8 k = compruebaTeclas(keys, 3);
	ld	a,#0x03
	push	af
	inc	sp
	ld	hl,#_andar_keys_1_190
	push	hl
	call	_compruebaTeclas
	pop	af
	inc	sp
	ld	e,l
;src/jugador/jugador.c:583: switch(k) {
	ld	a,#0x03
	sub	a, e
	jr	C,00105$
	ld	d,#0x00
	ld	hl,#00118$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:584: case 0:  ini_quieto();   break;
	jp	(hl)
00118$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
00101$:
	call	_ini_quieto
	jr	00105$
;src/jugador/jugador.c:585: case 1:  saltar(); break;
00102$:
	call	_saltar
	jr	00105$
;src/jugador/jugador.c:586: case 2: moverDerecha();   andar_ani(M_derecha);  break;
00103$:
	call	_moverDerecha
	xor	a, a
	push	af
	inc	sp
	call	_andar_ani
	inc	sp
	jr	00105$
;src/jugador/jugador.c:587: case 3: moverIzquierda(); andar_ani(M_izquierda); break;
00104$:
	call	_moverIzquierda
	ld	a,#0x01
	push	af
	inc	sp
	call	_andar_ani
	inc	sp
;src/jugador/jugador.c:588: }
00105$:
;src/jugador/jugador.c:589: prota.mover=SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/jugador/jugador.c:590: if (!sobreSuelo())
	call	_sobreSuelo
	ld	a,l
	or	a, a
	ret	NZ
;src/jugador/jugador.c:591: cayendo_entrar();
	jp  _cayendo_entrar
_andar_keys_1_190:
	.dw #0x0100
	.dw #0x0200
	.dw #0x0101
;src/jugador/jugador.c:597: void cambiarEstado()
;	---------------------------------
; Function cambiarEstado
; ---------------------------------
_cambiarEstado::
;src/jugador/jugador.c:599: switch(prota.estado) {
	ld	hl, #(_prota + 0x000b) + 0
	ld	e,(hl)
	ld	a,#0x06
	sub	a, e
	ret	C
	ld	d,#0x00
	ld	hl,#00115$
	add	hl,de
	add	hl,de
;src/jugador/jugador.c:600: case ST_quieto:      estatico();      break;
	jp	(hl)
00115$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00106$
	jr	00107$
	jr	00105$
00101$:
	jp  _estatico
;src/jugador/jugador.c:601: case ST_andando:  andar(); break;
00102$:
	jp  _andar
;src/jugador/jugador.c:602: case ST_salto:   saltar();   break;
00103$:
	jp  _saltar
;src/jugador/jugador.c:603: case ST_saltando: saltando(); break;
00104$:
	jp  _saltando
;src/jugador/jugador.c:604: case ST_sal_salto: finsalto(); break;
00105$:
	jp  _finsalto
;src/jugador/jugador.c:605: case ST_cayendo:     cayendo();     break;
00106$:
	jp  _cayendo
;src/jugador/jugador.c:606: case ST_caer: caer(); break;  
00107$:
;src/jugador/jugador.c:607: }
	jp  _caer
;src/jugador/jugador.c:610: void imprimeHUD()
;	---------------------------------
; Function imprimeHUD
; ---------------------------------
_imprimeHUD::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/jugador/jugador.c:613: cpct_drawStringM0 ("Balas:", POS_MUNI, 4, 0);
	ld	hl,#0x0000
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0004
	push	hl
	push	bc
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/jugador/jugador.c:614: cpct_drawStringM0 ("Vidas:", POS_VIDA, 4, 0);
	ld	hl,#0x0A00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	ld	hl,#0x0004
	push	hl
	push	bc
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/jugador/jugador.c:615: sprintf(str, "%u", cuchillo.municion);
	ld	hl,#_cuchillo+9
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	push	de
	ld	de,#___str_4
	push	de
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x0019
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
	push	hl
	pop	iy
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x0004
	push	hl
	push	iy
	push	de
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
;src/jugador/jugador.c:617: sprintf(str, "%u", 1);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x0001
	push	hl
	ld	hl,#___str_4
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	hl,#0x0A19
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
	ld	hl,#0x0004
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "Balas:"
	.db 0x00
___str_3:
	.ascii "Vidas:"
	.db 0x00
___str_4:
	.ascii "%u"
	.db 0x00
;src/jugador/jugador.c:622: void restaVida()
;	---------------------------------
; Function restaVida
; ---------------------------------
_restaVida::
;src/jugador/jugador.c:625: prota.vida--;
	ld	bc,#_prota+13
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
	ret
;src/jugador/jugador.c:631: void inicializar_cuchillo(u8* mapacuchi)
;	---------------------------------
; Function inicializar_cuchillo
; ---------------------------------
_inicializar_cuchillo::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/jugador/jugador.c:633: cuchillo.municion=10;
	ld	hl,#(_cuchillo + 0x0009)
	ld	(hl),#0x0A
;src/jugador/jugador.c:634: cuchillo.x =prota.x;
	ld	a, (#_prota + 0)
	ld	(#_cuchillo),a
;src/jugador/jugador.c:635: cuchillo.y =prota.y;
	ld	bc,#_cuchillo + 1
	ld	a, (#(_prota + 0x0001) + 0)
	ld	(bc),a
;src/jugador/jugador.c:636: cuchillo.sprite = g_cuchillo;
	ld	hl,#_g_cuchillo
	ld	((_cuchillo + 0x0004)), hl
;src/jugador/jugador.c:637: cuchillo.mover = NO;
	ld	hl,#(_cuchillo + 0x0006)
	ld	(hl),#0x00
;src/jugador/jugador.c:638: cuchillo.lanzandoDerecha = NO;
	ld	hl,#(_cuchillo + 0x0007)
	ld	(hl),#0x00
;src/jugador/jugador.c:639: cuchillo.mira = M_derecha;
	ld	hl,#(_cuchillo + 0x0008)
	ld	(hl),#0x00
;src/jugador/jugador.c:640: mapaCU=mapacuchi;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	(_mapaCU),hl
	pop	ix
	ret
;src/jugador/jugador.c:647: void inicializar_jugador()
;	---------------------------------
; Function inicializar_jugador
; ---------------------------------
_inicializar_jugador::
;src/jugador/jugador.c:649: prota.x = prota.xp = 20;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x14
	ld	hl,#_prota
	ld	(hl),#0x14
;src/jugador/jugador.c:650: prota.y = prota.yp = 156;
	ld	hl,#(_prota + 0x0003)
	ld	(hl),#0x9C
	ld	hl,#(_prota + 0x0001)
	ld	(hl),#0x9C
;src/jugador/jugador.c:651: prota.mover=NO;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x00
;src/jugador/jugador.c:652: prota.nframe=0;
	ld	hl,#(_prota + 0x000a)
	ld	(hl),#0x00
;src/jugador/jugador.c:653: prota.estado=ST_quieto;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;src/jugador/jugador.c:654: prota.mira=M_derecha;
	ld	hl,#(_prota + 0x0009)
	ld	(hl),#0x00
;src/jugador/jugador.c:655: prota.frame  = &g_frames[0];
	ld	hl,#_g_frames
	ld	((_prota + 0x0007)), hl
;src/jugador/jugador.c:656: prota.vida=100;
	ld	hl,#(_prota + 0x000d)
	ld	(hl),#0x64
;src/jugador/jugador.c:657: map = g_map1;
	ld	hl,#_g_map1+0
	ld	(_map),hl
;src/jugador/jugador.c:658: num_mapa=0;
	ld	hl,#_num_mapa + 0
	ld	(hl), #0x00
;src/jugador/jugador.c:659: dibujarMapa(map);
	ld	hl,(_map)
	push	hl
	call	_dibujarMapa
	pop	af
;src/jugador/jugador.c:660: dibujarProta();
	call	_dibujarProta
;src/jugador/jugador.c:661: inicializar_cuchillo(map);
	ld	hl,(_map)
	push	hl
	call	_inicializar_cuchillo
	pop	af
;src/jugador/jugador.c:662: o=0;
	ld	hl,#_o + 0
	ld	(hl), #0x00
;src/jugador/jugador.c:663: q=0;
	ld	hl,#_q + 0
	ld	(hl), #0x00
;src/jugador/jugador.c:664: imprimeHUD();
	jp  _imprimeHUD
;src/jugador/jugador.c:668: void muerteCaida()
;	---------------------------------
; Function muerteCaida
; ---------------------------------
_muerteCaida::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/jugador/jugador.c:670: if(prota.x<40)
	ld	hl,#_prota+0
	ld	c,(hl)
;src/jugador/jugador.c:676: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
	ld	hl,(_map)
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/jugador/jugador.c:670: if(prota.x<40)
	ld	a,c
	sub	a, #0x28
	jp	NC,00108$
;src/jugador/jugador.c:672: if(prota.y<180&&prota.y>170)
	ld	hl, #(_prota + 0x0001) + 0
	ld	c,(hl)
	ld	a,c
	sub	a, #0xB4
	jp	NC,00110$
	ld	a,#0xAA
	sub	a, c
	jp	NC,00110$
;src/jugador/jugador.c:674: u8 w = 3 + (prota.xp & 1);
	ld	a,(#(_prota + 0x0002) + 0)
	ld	-4 (ix), a
	and	a, #0x01
	add	a, #0x03
	ld	-6 (ix),a
;src/jugador/jugador.c:675: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
	ld	a,(#(_prota + 0x0003) + 0)
	ld	-3 (ix), a
	and	a, #0x03
	jr	Z,00112$
	ld	a,#0x01
	jr	00113$
00112$:
	ld	a,#0x00
00113$:
	add	a, #0x08
	ld	-5 (ix),a
;src/jugador/jugador.c:676: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
	ld	c,-3 (ix)
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
	jr	Z,00114$
	ld	hl,#0xFFBF
	add	hl,bc
00114$:
	ld	d,l
	sra	h
	rr	d
	sra	h
	rr	d
	ld	b,-4 (ix)
	srl	b
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	hl,#0xE280
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-6 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_cpct_etm_drawTileBox2x4
;src/jugador/jugador.c:678: prota.x=prota.xp=prota.x-10;
	ld	a, (#_prota + 0)
	add	a,#0xF6
	ld	(#(_prota + 0x0002)),a
	ld	(#_prota),a
;src/jugador/jugador.c:679: prota.y=prota.yp=156;
	ld	hl,#(_prota + 0x0003)
	ld	(hl),#0x9C
	ld	hl,#(_prota + 0x0001)
	ld	(hl),#0x9C
	jp	00110$
00108$:
;src/jugador/jugador.c:684: if(prota.y<180&&prota.y>170)
	ld	hl, #(_prota + 0x0001) + 0
	ld	c,(hl)
	ld	a,c
	sub	a, #0xB4
	jp	NC,00110$
	ld	a,#0xAA
	sub	a, c
	jr	NC,00110$
;src/jugador/jugador.c:686: u8 w = 3 + (prota.xp & 1);
	ld	a,(#(_prota + 0x0002) + 0)
	ld	-3 (ix), a
	and	a, #0x01
	add	a, #0x03
	ld	-5 (ix),a
;src/jugador/jugador.c:687: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
	ld	a,(#(_prota + 0x0003) + 0)
	ld	-4 (ix), a
	and	a, #0x03
	jr	Z,00115$
	ld	a,#0x01
	jr	00116$
00115$:
	ld	a,#0x00
00116$:
	add	a, #0x08
	ld	-6 (ix),a
;src/jugador/jugador.c:688: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
	ld	c,-4 (ix)
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
	jr	Z,00117$
	ld	hl,#0xFFBF
	add	hl,bc
00117$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b,l
	ld	d,-3 (ix)
	srl	d
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	hl,#0xE280
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-6 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	c, d
	push	bc
	call	_cpct_etm_drawTileBox2x4
;src/jugador/jugador.c:690: prota.x=prota.xp=prota.x-30;
	ld	a, (#_prota + 0)
	add	a,#0xE2
	ld	(#(_prota + 0x0002)),a
	ld	(#_prota),a
;src/jugador/jugador.c:691: prota.y=prota.yp=156;
	ld	hl,#(_prota + 0x0003)
	ld	(hl),#0x9C
	ld	hl,#(_prota + 0x0001)
	ld	(hl),#0x9C
00110$:
	ld	sp, ix
	pop	ix
	ret
;src/jugador/jugador.c:697: u8 get_X()
;	---------------------------------
; Function get_X
; ---------------------------------
_get_X::
;src/jugador/jugador.c:699: return prota.x;
	ld	hl, #_prota + 0
	ld	l,(hl)
	ret
;src/jugador/jugador.c:702: u8 get_Y()
;	---------------------------------
; Function get_Y
; ---------------------------------
_get_Y::
;src/jugador/jugador.c:705: return prota.y;
	ld	hl, #(_prota + 0x0001) + 0
	ld	l,(hl)
	ret
;src/jugador/jugador.c:709: u8 get_CX()
;	---------------------------------
; Function get_CX
; ---------------------------------
_get_CX::
;src/jugador/jugador.c:711: return cuchillo.x;
	ld	hl, #_cuchillo + 0
	ld	l,(hl)
	ret
;src/jugador/jugador.c:714: u8 get_CY()
;	---------------------------------
; Function get_CY
; ---------------------------------
_get_CY::
;src/jugador/jugador.c:717: return cuchillo.y;
	ld	hl, #(_cuchillo + 0x0001) + 0
	ld	l,(hl)
	ret
;src/jugador/jugador.c:720: u8 get_mapa()
;	---------------------------------
; Function get_mapa
; ---------------------------------
_get_mapa::
;src/jugador/jugador.c:722: return num_mapa;
	ld	iy,#_num_mapa
	ld	l,0 (iy)
	ret
;src/jugador/jugador.c:725: u8* get_tip_mapa()
;	---------------------------------
; Function get_tip_mapa
; ---------------------------------
_get_tip_mapa::
;src/jugador/jugador.c:727: return map;
	ld	hl,(_map)
	ret
;src/jugador/jugador.c:730: u8 get_vida()
;	---------------------------------
; Function get_vida
; ---------------------------------
_get_vida::
;src/jugador/jugador.c:732: return prota.vida;
	ld	hl, #(_prota + 0x000d) + 0
	ld	l,(hl)
	ret
;src/jugador/jugador.c:737: void ejecutar_jugador()
;	---------------------------------
; Function ejecutar_jugador
; ---------------------------------
_ejecutar_jugador::
;src/jugador/jugador.c:740: while(1) //bucle juego
00114$:
;src/jugador/jugador.c:742: cambiarEstado();
	call	_cambiarEstado
;src/jugador/jugador.c:744: o=fin();
	call	_fin
	ld	iy,#_o
	ld	0 (iy),l
;src/jugador/jugador.c:745: if(o==1)
	ld	a,(#_o + 0)
	dec	a
	ret	Z
;src/jugador/jugador.c:750: q=muerteJug();
	call	_muerteJug
	ld	iy,#_q
	ld	0 (iy),l
;src/jugador/jugador.c:751: if(q==1)
	ld	a,(#_q + 0)
	dec	a
	ret	Z
;src/jugador/jugador.c:756: if(prota.mover)
	ld	a, (#(_prota + 0x0006) + 0)
	or	a, a
	jr	Z,00106$
;src/jugador/jugador.c:757: {	    muerteCaida();
	call	_muerteCaida
;src/jugador/jugador.c:758: selectSprite();
	call	_selectSprite
;src/jugador/jugador.c:759: cpct_waitVSYNC(); 
	call	_cpct_waitVSYNC
;src/jugador/jugador.c:760: redibujarProta();
	call	_redibujarProta
;src/jugador/jugador.c:761: prota.mover=NO;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x00
00106$:
;src/jugador/jugador.c:764: if(cuchillo.mover){
	ld	a, (#(_cuchillo + 0x0006) + 0)
	or	a, a
	jr	Z,00110$
;src/jugador/jugador.c:766: moverCuchillo();
	call	_moverCuchillo
;src/jugador/jugador.c:768: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/jugador/jugador.c:769: redibujarCuchillo();
	call	_redibujarCuchillo
;src/jugador/jugador.c:770: imprimirMuni();
	call	_imprimirMuni
;src/jugador/jugador.c:771: if(!cuchillo.mover)
	ld	a, (#(_cuchillo + 0x0006) + 0)
	or	a, a
	jr	NZ,00110$
;src/jugador/jugador.c:772: borrarCuchillo();  
	call	_borrarCuchillo
00110$:
;src/jugador/jugador.c:774: mata_enemigo();
	call	_mata_enemigo
;src/jugador/jugador.c:775: ini_estado();
	call	_ini_estado
;src/jugador/jugador.c:777: if(prota.vida/5==0)
	ld	hl, #_prota + 13
	ld	b,(hl)
	ld	a,#0x05
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__divuchar
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00114$
;src/jugador/jugador.c:779: imprimirVida();
	call	_imprimirVida
	jr	00114$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
