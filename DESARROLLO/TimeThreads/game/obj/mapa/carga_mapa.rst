                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module carga_mapa
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_etm_setTileset2x4
                             12 	.globl _cpct_etm_drawTileBox2x4
                             13 	.globl _mapa
                             14 	.globl _inicializar_mapa
                             15 	.globl _dibujarMapa
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _DATA
   A178                      23 _mapa::
   A178                      24 	.ds 2
                             25 ;--------------------------------------------------------
                             26 ; ram data
                             27 ;--------------------------------------------------------
                             28 	.area _INITIALIZED
                             29 ;--------------------------------------------------------
                             30 ; absolute external ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DABS (ABS)
                             33 ;--------------------------------------------------------
                             34 ; global & static initialisations
                             35 ;--------------------------------------------------------
                             36 	.area _HOME
                             37 	.area _GSINIT
                             38 	.area _GSFINAL
                             39 	.area _GSINIT
                             40 ;--------------------------------------------------------
                             41 ; Home
                             42 ;--------------------------------------------------------
                             43 	.area _HOME
                             44 	.area _HOME
                             45 ;--------------------------------------------------------
                             46 ; code
                             47 ;--------------------------------------------------------
                             48 	.area _CODE
                             49 ;src/mapa/carga_mapa.c:7: void inicializar_mapa()
                             50 ;	---------------------------------
                             51 ; Function inicializar_mapa
                             52 ; ---------------------------------
   8A44                      53 _inicializar_mapa::
                             54 ;src/mapa/carga_mapa.c:11: cpct_etm_setTileset2x4(g_tileset);
   8A44 21 72 8F      [10]   55 	ld	hl,#_g_tileset
   8A47 CD 88 92      [17]   56 	call	_cpct_etm_setTileset2x4
                             57 ;src/mapa/carga_mapa.c:12: mapa = g_map1;
   8A4A 21 F0 5E      [10]   58 	ld	hl,#_g_map1+0
   8A4D 22 78 A1      [16]   59 	ld	(_mapa),hl
                             60 ;src/mapa/carga_mapa.c:13: dibujarMapa();
   8A50 C3 53 8A      [10]   61 	jp  _dibujarMapa
                             62 ;src/mapa/carga_mapa.c:16: void dibujarMapa(u8* map)
                             63 ;	---------------------------------
                             64 ; Function dibujarMapa
                             65 ; ---------------------------------
   8A53                      66 _dibujarMapa::
                             67 ;src/mapa/carga_mapa.c:18: cpct_etm_drawTilemap2x4 (g_map1_W, g_map1_H, ORIGEN_MAPA, map);
   8A53 D1            [10]   68 	pop	de
   8A54 C1            [10]   69 	pop	bc
   8A55 C5            [11]   70 	push	bc
   8A56 D5            [11]   71 	push	de
   8A57 C5            [11]   72 	push	bc
   8A58 21 80 E2      [10]   73 	ld	hl,#0xE280
   8A5B E5            [11]   74 	push	hl
   8A5C 21 21 28      [10]   75 	ld	hl,#0x2821
   8A5F E5            [11]   76 	push	hl
   8A60 2E 00         [ 7]   77 	ld	l, #0x00
   8A62 E5            [11]   78 	push	hl
   8A63 AF            [ 4]   79 	xor	a, a
   8A64 F5            [11]   80 	push	af
   8A65 33            [ 6]   81 	inc	sp
   8A66 CD E2 91      [17]   82 	call	_cpct_etm_drawTileBox2x4
   8A69 C9            [10]   83 	ret
                             84 	.area _CODE
                             85 	.area _INITIALIZER
                             86 	.area _CABS (ABS)
