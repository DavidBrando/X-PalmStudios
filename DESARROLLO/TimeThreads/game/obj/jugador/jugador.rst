                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module jugador
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _ini_estado
                             12 	.globl _get_vida
                             13 	.globl _fin
                             14 	.globl _sobreSuelo
                             15 	.globl _get_BX
                             16 	.globl _mata_enemigo
                             17 	.globl _dibujarMapa
                             18 	.globl _sprintf
                             19 	.globl _cpct_etm_drawTileBox2x4
                             20 	.globl _cpct_getScreenPtr
                             21 	.globl _cpct_waitVSYNC
                             22 	.globl _cpct_drawStringM0
                             23 	.globl _cpct_hflipSpriteM0
                             24 	.globl _cpct_drawSpriteMaskedAlignedTable
                             25 	.globl _cpct_get2Bits
                             26 	.globl _cpct_isAnyKeyPressed
                             27 	.globl _cpct_isKeyPressed
                             28 	.globl _cpct_scanKeyboard_if
                             29 	.globl _Jy
                             30 	.globl _o
                             31 	.globl _mapaCU
                             32 	.globl _EMirar
                             33 	.globl _cuchillo
                             34 	.globl _EEstados
                             35 	.globl _prota
                             36 	.globl _q
                             37 	.globl _num_mapa
                             38 	.globl _map
                             39 	.globl _g_tablaSalto
                             40 	.globl _mapas
                             41 	.globl _anim_salto
                             42 	.globl _anim_andar
                             43 	.globl _g_frames
                             44 	.globl _dibujarProta
                             45 	.globl _borrarProta
                             46 	.globl _borrarCuchillo
                             47 	.globl _redibujarProta
                             48 	.globl _moverCuchillo
                             49 	.globl _dibujarCuchillo
                             50 	.globl _avanzarMapa
                             51 	.globl _retrocederMapa
                             52 	.globl _redibujarCuchillo
                             53 	.globl _obtenerTilePtr
                             54 	.globl _girarFrame
                             55 	.globl _asignarFrame
                             56 	.globl _ini_preSalto
                             57 	.globl _ini_salto
                             58 	.globl _ini_andar
                             59 	.globl _ini_quieto
                             60 	.globl _ini_caer
                             61 	.globl _caer
                             62 	.globl _cayendo_entrar
                             63 	.globl _ajustarAlSuelo
                             64 	.globl _imprimirMuni
                             65 	.globl _imprimirVida
                             66 	.globl _atacar
                             67 	.globl _estatico
                             68 	.globl _compruebaTeclas
                             69 	.globl _selectSprite
                             70 	.globl _descender
                             71 	.globl _cayendo
                             72 	.globl _ascender
                             73 	.globl _saltando
                             74 	.globl _saltar_ani
                             75 	.globl _finsalto
                             76 	.globl _andar_ani
                             77 	.globl _moverIzquierda
                             78 	.globl _moverDerecha
                             79 	.globl _moverIzq2
                             80 	.globl _moverDer2
                             81 	.globl _ante_salto
                             82 	.globl _saltar
                             83 	.globl _andar
                             84 	.globl _cambiarEstado
                             85 	.globl _imprimeHUD
                             86 	.globl _restaVida
                             87 	.globl _inicializar_cuchillo
                             88 	.globl _inicializar_jugador
                             89 	.globl _muerteCaida
                             90 	.globl _get_X
                             91 	.globl _get_Y
                             92 	.globl _get_CX
                             93 	.globl _get_CY
                             94 	.globl _get_mapa
                             95 	.globl _get_tip_mapa
                             96 	.globl _ejecutar_jugador
                             97 ;--------------------------------------------------------
                             98 ; special function registers
                             99 ;--------------------------------------------------------
                            100 ;--------------------------------------------------------
                            101 ; ram data
                            102 ;--------------------------------------------------------
                            103 	.area _DATA
   A154                     104 _map::
   A154                     105 	.ds 2
   A156                     106 _num_mapa::
   A156                     107 	.ds 1
   A157                     108 _q::
   A157                     109 	.ds 1
   A158                     110 _prota::
   A158                     111 	.ds 14
   A166                     112 _EEstados::
   A166                     113 	.ds 1
   A167                     114 _cuchillo::
   A167                     115 	.ds 12
   A173                     116 _EMirar::
   A173                     117 	.ds 1
   A174                     118 _mapaCU::
   A174                     119 	.ds 2
   A176                     120 _o::
   A176                     121 	.ds 1
   A177                     122 _Jy::
   A177                     123 	.ds 1
                            124 ;--------------------------------------------------------
                            125 ; ram data
                            126 ;--------------------------------------------------------
                            127 	.area _INITIALIZED
                            128 ;--------------------------------------------------------
                            129 ; absolute external ram data
                            130 ;--------------------------------------------------------
                            131 	.area _DABS (ABS)
                            132 ;--------------------------------------------------------
                            133 ; global & static initialisations
                            134 ;--------------------------------------------------------
                            135 	.area _HOME
                            136 	.area _GSINIT
                            137 	.area _GSFINAL
                            138 	.area _GSINIT
                            139 ;--------------------------------------------------------
                            140 ; Home
                            141 ;--------------------------------------------------------
                            142 	.area _HOME
                            143 	.area _HOME
                            144 ;--------------------------------------------------------
                            145 ; code
                            146 ;--------------------------------------------------------
                            147 	.area _CODE
                            148 ;src/jugador/jugador.c:26: cpctm_createTransparentMaskTable (a,0x100, M0, 0);
                            149 ;	---------------------------------
                            150 ; Function dummy_cpct_transparentMaskTable0M0_container
                            151 ; ---------------------------------
   8A34                     152 _dummy_cpct_transparentMaskTable0M0_container::
                            153 	.area _a_ (ABS) 
   0100                     154 	.org 0x100 
   0100                     155 	 _a::
   0100 FF AA 55 00 AA AA   156 	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0108 55 00 55 00 00 00   157 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0110 AA AA 00 00 AA AA   158 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0118 00 00 00 00 00 00   159 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0120 55 00 55 00 00 00   160 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0128 55 00 55 00 00 00   161 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0130 00 00 00 00 00 00   162 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0138 00 00 00 00 00 00   163 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 AA AA 00 00 AA AA   164 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0148 00 00 00 00 00 00   165 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0150 AA AA 00 00 AA AA   166 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0158 00 00 00 00 00 00   167 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0160 00 00 00 00 00 00   168 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0168 00 00 00 00 00 00   169 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0170 00 00 00 00 00 00   170 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0178 00 00 00 00 00 00   171 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 55 00 55 00 00 00   172 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0188 55 00 55 00 00 00   173 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0190 00 00 00 00 00 00   174 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0198 00 00 00 00 00 00   175 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A0 55 00 55 00 00 00   176 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A8 55 00 55 00 00 00   177 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B0 00 00 00 00 00 00   178 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 00 00 00 00 00 00   179 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 00 00 00 00 00 00   180 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C8 00 00 00 00 00 00   181 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D0 00 00 00 00 00 00   182 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D8 00 00 00 00 00 00   183 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E0 00 00 00 00 00 00   184 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E8 00 00 00 00 00 00   185 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F0 00 00 00 00 00 00   186 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   187 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            188 	.area _CSEG (REL, CON) 
                            189 ;src/jugador/jugador.c:116: void dibujarProta()
                            190 ;	---------------------------------
                            191 ; Function dibujarProta
                            192 ; ---------------------------------
   A17A                     193 _dibujarProta::
                            194 ;src/jugador/jugador.c:119: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
   A17A 21 59 A1      [10]  195 	ld	hl, #_prota + 1
   A17D 56            [ 7]  196 	ld	d,(hl)
   A17E 21 58 A1      [10]  197 	ld	hl, #_prota + 0
   A181 46            [ 7]  198 	ld	b,(hl)
   A182 D5            [11]  199 	push	de
   A183 33            [ 6]  200 	inc	sp
   A184 C5            [11]  201 	push	bc
   A185 33            [ 6]  202 	inc	sp
   A186 21 00 C0      [10]  203 	ld	hl,#0xC000
   A189 E5            [11]  204 	push	hl
   A18A CD AA 95      [17]  205 	call	_cpct_getScreenPtr
   A18D EB            [ 4]  206 	ex	de,hl
                            207 ;src/jugador/jugador.c:120: cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, G_PERSONAJE_00_W,G_PERSONAJE_00_H,a);
   A18E 2A 5F A1      [16]  208 	ld	hl, (#_prota + 7)
   A191 23            [ 6]  209 	inc	hl
   A192 4E            [ 7]  210 	ld	c,(hl)
   A193 23            [ 6]  211 	inc	hl
   A194 46            [ 7]  212 	ld	b,(hl)
   A195 21 00 01      [10]  213 	ld	hl,#_a
   A198 E5            [11]  214 	push	hl
   A199 21 10 20      [10]  215 	ld	hl,#0x2010
   A19C E5            [11]  216 	push	hl
   A19D D5            [11]  217 	push	de
   A19E C5            [11]  218 	push	bc
   A19F CD CA 95      [17]  219 	call	_cpct_drawSpriteMaskedAlignedTable
   A1A2 C9            [10]  220 	ret
   A1A3                     221 _g_frames:
   A1A3 00                  222 	.db #0x00	; 0
   A1A4 28 64               223 	.dw _g_personaje_00
   A1A6 00                  224 	.db #0x00	; 0
   A1A7 28 66               225 	.dw _g_personaje_01
   A1A9 00                  226 	.db #0x00	; 0
   A1AA 28 68               227 	.dw _g_personaje_02
   A1AC 00                  228 	.db #0x00	; 0
   A1AD 28 6A               229 	.dw _g_personaje_03
   A1AF 00                  230 	.db #0x00	; 0
   A1B0 28 6C               231 	.dw _g_personaje_04
   A1B2 00                  232 	.db #0x00	; 0
   A1B3 28 6E               233 	.dw _g_personaje_05
   A1B5 00                  234 	.db #0x00	; 0
   A1B6 28 70               235 	.dw _g_personaje_06
   A1B8 00                  236 	.db #0x00	; 0
   A1B9 28 72               237 	.dw _g_personaje_07
   A1BB 00                  238 	.db #0x00	; 0
   A1BC 28 74               239 	.dw _g_personaje_08
   A1BE 00                  240 	.db #0x00	; 0
   A1BF 28 76               241 	.dw _g_personaje_09
   A1C1 00                  242 	.db #0x00	; 0
   A1C2 28 78               243 	.dw _g_personaje_10
   A1C4 00                  244 	.db 0x00
   A1C5 00                  245 	.db 0x00
   A1C6 00                  246 	.db 0x00
   A1C7                     247 _anim_andar:
   A1C7 A6 A1               248 	.dw (_g_frames + 3)
   A1C9 A9 A1               249 	.dw (_g_frames + 6)
   A1CB AC A1               250 	.dw (_g_frames + 9)
   A1CD AF A1               251 	.dw (_g_frames + 12)
   A1CF B2 A1               252 	.dw (_g_frames + 15)
   A1D1                     253 _anim_salto:
   A1D1 B8 A1               254 	.dw (_g_frames + 21)
   A1D3 BB A1               255 	.dw (_g_frames + 24)
   A1D5 BE A1               256 	.dw (_g_frames + 27)
   A1D7 C1 A1               257 	.dw (_g_frames + 30)
   A1D9                     258 _mapas:
   A1D9 F0 5E               259 	.dw _g_map1
   A1DB C8 59               260 	.dw _g_map2
   A1DD A0 54               261 	.dw _g_map3
   A1DF 78 4F               262 	.dw _g_map4
   A1E1 50 4A               263 	.dw _g_map5
   A1E3 28 45               264 	.dw _g_map6
   A1E5 00 40               265 	.dw _g_map7
   A1E7                     266 _g_tablaSalto:
   A1E7 FF                  267 	.db #0xFF	; 255
   A1E8 FA                  268 	.db #0xFA	; 250
   A1E9 A9                  269 	.db #0xA9	; 169
   A1EA 55                  270 	.db #0x55	; 85	'U'
   A1EB 40                  271 	.db #0x40	; 64
   A1EC 00                  272 	.db 0x00
                            273 ;src/jugador/jugador.c:124: void borrarProta() {
                            274 ;	---------------------------------
                            275 ; Function borrarProta
                            276 ; ---------------------------------
   A1ED                     277 _borrarProta::
   A1ED DD E5         [15]  278 	push	ix
   A1EF DD 21 00 00   [14]  279 	ld	ix,#0
   A1F3 DD 39         [15]  280 	add	ix,sp
   A1F5 F5            [11]  281 	push	af
   A1F6 3B            [ 6]  282 	dec	sp
                            283 ;src/jugador/jugador.c:125: u8 w = 3 + (prota.xp & 1);
   A1F7 21 5A A1      [10]  284 	ld	hl, #_prota + 2
   A1FA 4E            [ 7]  285 	ld	c,(hl)
   A1FB 79            [ 4]  286 	ld	a,c
   A1FC E6 01         [ 7]  287 	and	a, #0x01
   A1FE 47            [ 4]  288 	ld	b,a
   A1FF 04            [ 4]  289 	inc	b
   A200 04            [ 4]  290 	inc	b
   A201 04            [ 4]  291 	inc	b
                            292 ;src/jugador/jugador.c:126: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
   A202 21 5B A1      [10]  293 	ld	hl, #_prota + 3
   A205 5E            [ 7]  294 	ld	e,(hl)
   A206 7B            [ 4]  295 	ld	a,e
   A207 E6 03         [ 7]  296 	and	a, #0x03
   A209 28 04         [12]  297 	jr	Z,00103$
   A20B 3E 01         [ 7]  298 	ld	a,#0x01
   A20D 18 02         [12]  299 	jr	00104$
   A20F                     300 00103$:
   A20F 3E 00         [ 7]  301 	ld	a,#0x00
   A211                     302 00104$:
   A211 C6 08         [ 7]  303 	add	a, #0x08
   A213 DD 77 FD      [19]  304 	ld	-3 (ix),a
                            305 ;src/jugador/jugador.c:127: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
   A216 FD 2A 54 A1   [20]  306 	ld	iy,(_map)
   A21A 16 00         [ 7]  307 	ld	d,#0x00
   A21C 7B            [ 4]  308 	ld	a,e
   A21D C6 BC         [ 7]  309 	add	a,#0xBC
   A21F DD 77 FE      [19]  310 	ld	-2 (ix),a
   A222 7A            [ 4]  311 	ld	a,d
   A223 CE FF         [ 7]  312 	adc	a,#0xFF
   A225 DD 77 FF      [19]  313 	ld	-1 (ix),a
   A228 DD 6E FE      [19]  314 	ld	l,-2 (ix)
   A22B DD 66 FF      [19]  315 	ld	h,-1 (ix)
   A22E DD CB FF 7E   [20]  316 	bit	7, -1 (ix)
   A232 28 04         [12]  317 	jr	Z,00105$
   A234 21 BF FF      [10]  318 	ld	hl,#0xFFBF
   A237 19            [11]  319 	add	hl,de
   A238                     320 00105$:
   A238 CB 2C         [ 8]  321 	sra	h
   A23A CB 1D         [ 8]  322 	rr	l
   A23C CB 2C         [ 8]  323 	sra	h
   A23E CB 1D         [ 8]  324 	rr	l
   A240 55            [ 4]  325 	ld	d,l
   A241 CB 39         [ 8]  326 	srl	c
   A243 FD E5         [15]  327 	push	iy
   A245 21 80 E2      [10]  328 	ld	hl,#0xE280
   A248 E5            [11]  329 	push	hl
   A249 3E 28         [ 7]  330 	ld	a,#0x28
   A24B F5            [11]  331 	push	af
   A24C 33            [ 6]  332 	inc	sp
   A24D DD 7E FD      [19]  333 	ld	a,-3 (ix)
   A250 F5            [11]  334 	push	af
   A251 33            [ 6]  335 	inc	sp
   A252 C5            [11]  336 	push	bc
   A253 33            [ 6]  337 	inc	sp
   A254 D5            [11]  338 	push	de
   A255 33            [ 6]  339 	inc	sp
   A256 79            [ 4]  340 	ld	a,c
   A257 F5            [11]  341 	push	af
   A258 33            [ 6]  342 	inc	sp
   A259 CD E2 91      [17]  343 	call	_cpct_etm_drawTileBox2x4
   A25C DD F9         [10]  344 	ld	sp, ix
   A25E DD E1         [14]  345 	pop	ix
   A260 C9            [10]  346 	ret
                            347 ;src/jugador/jugador.c:131: void borrarCuchillo() {
                            348 ;	---------------------------------
                            349 ; Function borrarCuchillo
                            350 ; ---------------------------------
   A261                     351 _borrarCuchillo::
   A261 DD E5         [15]  352 	push	ix
   A263 DD 21 00 00   [14]  353 	ld	ix,#0
   A267 DD 39         [15]  354 	add	ix,sp
   A269 F5            [11]  355 	push	af
   A26A 3B            [ 6]  356 	dec	sp
                            357 ;src/jugador/jugador.c:132: u8 w = 2 + (cuchillo.xp & 1);
   A26B 21 69 A1      [10]  358 	ld	hl, #_cuchillo + 2
   A26E 4E            [ 7]  359 	ld	c,(hl)
   A26F 79            [ 4]  360 	ld	a,c
   A270 E6 01         [ 7]  361 	and	a, #0x01
   A272 47            [ 4]  362 	ld	b,a
   A273 04            [ 4]  363 	inc	b
   A274 04            [ 4]  364 	inc	b
                            365 ;src/jugador/jugador.c:133: u8 h = 1 + (cuchillo.yp & 3 ? 1 : 0);
   A275 21 6A A1      [10]  366 	ld	hl, #_cuchillo + 3
   A278 5E            [ 7]  367 	ld	e,(hl)
   A279 7B            [ 4]  368 	ld	a,e
   A27A E6 03         [ 7]  369 	and	a, #0x03
   A27C 28 04         [12]  370 	jr	Z,00103$
   A27E 3E 01         [ 7]  371 	ld	a,#0x01
   A280 18 02         [12]  372 	jr	00104$
   A282                     373 00103$:
   A282 3E 00         [ 7]  374 	ld	a,#0x00
   A284                     375 00104$:
   A284 3C            [ 4]  376 	inc	a
   A285 DD 77 FD      [19]  377 	ld	-3 (ix),a
                            378 ;src/jugador/jugador.c:134: cpct_etm_drawTileBox2x4(cuchillo.xp / 2, (cuchillo.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
   A288 FD 2A 54 A1   [20]  379 	ld	iy,(_map)
   A28C 16 00         [ 7]  380 	ld	d,#0x00
   A28E 7B            [ 4]  381 	ld	a,e
   A28F C6 BC         [ 7]  382 	add	a,#0xBC
   A291 DD 77 FE      [19]  383 	ld	-2 (ix),a
   A294 7A            [ 4]  384 	ld	a,d
   A295 CE FF         [ 7]  385 	adc	a,#0xFF
   A297 DD 77 FF      [19]  386 	ld	-1 (ix),a
   A29A DD 6E FE      [19]  387 	ld	l,-2 (ix)
   A29D DD 66 FF      [19]  388 	ld	h,-1 (ix)
   A2A0 DD CB FF 7E   [20]  389 	bit	7, -1 (ix)
   A2A4 28 04         [12]  390 	jr	Z,00105$
   A2A6 21 BF FF      [10]  391 	ld	hl,#0xFFBF
   A2A9 19            [11]  392 	add	hl,de
   A2AA                     393 00105$:
   A2AA CB 2C         [ 8]  394 	sra	h
   A2AC CB 1D         [ 8]  395 	rr	l
   A2AE CB 2C         [ 8]  396 	sra	h
   A2B0 CB 1D         [ 8]  397 	rr	l
   A2B2 55            [ 4]  398 	ld	d,l
   A2B3 CB 39         [ 8]  399 	srl	c
   A2B5 FD E5         [15]  400 	push	iy
   A2B7 21 80 E2      [10]  401 	ld	hl,#0xE280
   A2BA E5            [11]  402 	push	hl
   A2BB 3E 28         [ 7]  403 	ld	a,#0x28
   A2BD F5            [11]  404 	push	af
   A2BE 33            [ 6]  405 	inc	sp
   A2BF DD 7E FD      [19]  406 	ld	a,-3 (ix)
   A2C2 F5            [11]  407 	push	af
   A2C3 33            [ 6]  408 	inc	sp
   A2C4 C5            [11]  409 	push	bc
   A2C5 33            [ 6]  410 	inc	sp
   A2C6 D5            [11]  411 	push	de
   A2C7 33            [ 6]  412 	inc	sp
   A2C8 79            [ 4]  413 	ld	a,c
   A2C9 F5            [11]  414 	push	af
   A2CA 33            [ 6]  415 	inc	sp
   A2CB CD E2 91      [17]  416 	call	_cpct_etm_drawTileBox2x4
   A2CE DD F9         [10]  417 	ld	sp, ix
   A2D0 DD E1         [14]  418 	pop	ix
   A2D2 C9            [10]  419 	ret
                            420 ;src/jugador/jugador.c:138: void redibujarProta(){
                            421 ;	---------------------------------
                            422 ; Function redibujarProta
                            423 ; ---------------------------------
   A2D3                     424 _redibujarProta::
                            425 ;src/jugador/jugador.c:139: borrarProta();
   A2D3 CD ED A1      [17]  426 	call	_borrarProta
                            427 ;src/jugador/jugador.c:140: prota.xp = prota.x;
   A2D6 01 5A A1      [10]  428 	ld	bc,#_prota + 2
   A2D9 3A 58 A1      [13]  429 	ld	a, (#_prota + 0)
   A2DC 02            [ 7]  430 	ld	(bc),a
                            431 ;src/jugador/jugador.c:141: prota.yp = prota.y;
   A2DD 01 5B A1      [10]  432 	ld	bc,#_prota + 3
   A2E0 3A 59 A1      [13]  433 	ld	a, (#_prota + 1)
   A2E3 02            [ 7]  434 	ld	(bc),a
                            435 ;src/jugador/jugador.c:142: dibujarProta();
   A2E4 C3 7A A1      [10]  436 	jp  _dibujarProta
                            437 ;src/jugador/jugador.c:146: void moverCuchillo(){
                            438 ;	---------------------------------
                            439 ; Function moverCuchillo
                            440 ; ---------------------------------
   A2E7                     441 _moverCuchillo::
                            442 ;src/jugador/jugador.c:148: if(cuchillo.lanzandoDerecha == SI)
   A2E7 01 67 A1      [10]  443 	ld	bc,#_cuchillo+0
   A2EA 21 6E A1      [10]  444 	ld	hl, #(_cuchillo + 0x0007) + 0
   A2ED 6E            [ 7]  445 	ld	l,(hl)
                            446 ;src/jugador/jugador.c:152: cuchillo.mover = SI;        
   A2EE 79            [ 4]  447 	ld	a,c
   A2EF C6 06         [ 7]  448 	add	a, #0x06
   A2F1 5F            [ 4]  449 	ld	e,a
   A2F2 78            [ 4]  450 	ld	a,b
   A2F3 CE 00         [ 7]  451 	adc	a, #0x00
   A2F5 57            [ 4]  452 	ld	d,a
                            453 ;src/jugador/jugador.c:148: if(cuchillo.lanzandoDerecha == SI)
   A2F6 7D            [ 4]  454 	ld	a,l
   A2F7 3D            [ 4]  455 	dec	a
   A2F8 20 17         [12]  456 	jr	NZ,00110$
                            457 ;src/jugador/jugador.c:150: if(cuchillo.x <= LIMITE_DERECHO_CUCHILLO-2){
   A2FA 0A            [ 7]  458 	ld	a,(bc)
   A2FB 6F            [ 4]  459 	ld	l,a
   A2FC 3E 4A         [ 7]  460 	ld	a,#0x4A
   A2FE 95            [ 4]  461 	sub	a, l
   A2FF 38 08         [12]  462 	jr	C,00102$
                            463 ;src/jugador/jugador.c:151: cuchillo.x+=2;
   A301 7D            [ 4]  464 	ld	a,l
   A302 C6 02         [ 7]  465 	add	a, #0x02
   A304 02            [ 7]  466 	ld	(bc),a
                            467 ;src/jugador/jugador.c:152: cuchillo.mover = SI;        
   A305 3E 01         [ 7]  468 	ld	a,#0x01
   A307 12            [ 7]  469 	ld	(de),a
   A308 C9            [10]  470 	ret
   A309                     471 00102$:
                            472 ;src/jugador/jugador.c:156: cuchillo.lanzandoDerecha = NO;
   A309 21 6E A1      [10]  473 	ld	hl,#(_cuchillo + 0x0007)
   A30C 36 00         [10]  474 	ld	(hl),#0x00
                            475 ;src/jugador/jugador.c:157: cuchillo.mover = NO;
   A30E AF            [ 4]  476 	xor	a, a
   A30F 12            [ 7]  477 	ld	(de),a
   A310 C9            [10]  478 	ret
   A311                     479 00110$:
                            480 ;src/jugador/jugador.c:163: if(cuchillo.lanzandoDerecha == NO)
   A311 7D            [ 4]  481 	ld	a,l
   A312 B7            [ 4]  482 	or	a, a
   A313 C0            [11]  483 	ret	NZ
                            484 ;src/jugador/jugador.c:164: if(cuchillo.x >= 2){
   A314 0A            [ 7]  485 	ld	a,(bc)
   A315 6F            [ 4]  486 	ld	l,a
   A316 D6 02         [ 7]  487 	sub	a, #0x02
   A318 38 08         [12]  488 	jr	C,00105$
                            489 ;src/jugador/jugador.c:165: cuchillo.x-=2;
   A31A 7D            [ 4]  490 	ld	a,l
   A31B C6 FE         [ 7]  491 	add	a,#0xFE
   A31D 02            [ 7]  492 	ld	(bc),a
                            493 ;src/jugador/jugador.c:166: cuchillo.mover = SI;
   A31E 3E 01         [ 7]  494 	ld	a,#0x01
   A320 12            [ 7]  495 	ld	(de),a
   A321 C9            [10]  496 	ret
   A322                     497 00105$:
                            498 ;src/jugador/jugador.c:169: cuchillo.mover=NO;
   A322 AF            [ 4]  499 	xor	a, a
   A323 12            [ 7]  500 	ld	(de),a
   A324 C9            [10]  501 	ret
                            502 ;src/jugador/jugador.c:176: void dibujarCuchillo(){
                            503 ;	---------------------------------
                            504 ; Function dibujarCuchillo
                            505 ; ---------------------------------
   A325                     506 _dibujarCuchillo::
                            507 ;src/jugador/jugador.c:177: u8* pvmem2= cpct_getScreenPtr(CPCT_VMEM_START, cuchillo.x, cuchillo.y); //puntero a la memoria de video con la posicion del prota
   A325 21 68 A1      [10]  508 	ld	hl, #_cuchillo + 1
   A328 56            [ 7]  509 	ld	d,(hl)
   A329 21 67 A1      [10]  510 	ld	hl, #_cuchillo + 0
   A32C 46            [ 7]  511 	ld	b,(hl)
   A32D D5            [11]  512 	push	de
   A32E 33            [ 6]  513 	inc	sp
   A32F C5            [11]  514 	push	bc
   A330 33            [ 6]  515 	inc	sp
   A331 21 00 C0      [10]  516 	ld	hl,#0xC000
   A334 E5            [11]  517 	push	hl
   A335 CD AA 95      [17]  518 	call	_cpct_getScreenPtr
   A338 5D            [ 4]  519 	ld	e,l
   A339 54            [ 4]  520 	ld	d,h
                            521 ;src/jugador/jugador.c:179: cpct_drawSpriteMaskedAlignedTable (cuchillo.sprite, pvmem2, G_CUCHILLO_W, G_CUCHILLO_H, a);
   A33A ED 4B 6B A1   [20]  522 	ld	bc, (#_cuchillo + 4)
   A33E 21 00 01      [10]  523 	ld	hl,#_a
   A341 E5            [11]  524 	push	hl
   A342 21 04 04      [10]  525 	ld	hl,#0x0404
   A345 E5            [11]  526 	push	hl
   A346 D5            [11]  527 	push	de
   A347 C5            [11]  528 	push	bc
   A348 CD CA 95      [17]  529 	call	_cpct_drawSpriteMaskedAlignedTable
   A34B C9            [10]  530 	ret
                            531 ;src/jugador/jugador.c:184: void avanzarMapa() {
                            532 ;	---------------------------------
                            533 ; Function avanzarMapa
                            534 ; ---------------------------------
   A34C                     535 _avanzarMapa::
                            536 ;src/jugador/jugador.c:186: if (num_mapa < NUM_MAPAS-1) {
   A34C 3A 56 A1      [13]  537 	ld	a,(#_num_mapa + 0)
   A34F D6 06         [ 7]  538 	sub	a, #0x06
   A351 D0            [11]  539 	ret	NC
                            540 ;src/jugador/jugador.c:187: map = mapas[++num_mapa];
   A352 01 D9 A1      [10]  541 	ld	bc,#_mapas+0
   A355 21 56 A1      [10]  542 	ld	hl, #_num_mapa+0
   A358 34            [11]  543 	inc	(hl)
   A359 FD 21 56 A1   [14]  544 	ld	iy,#_num_mapa
   A35D FD 6E 00      [19]  545 	ld	l,0 (iy)
   A360 26 00         [ 7]  546 	ld	h,#0x00
   A362 29            [11]  547 	add	hl, hl
   A363 09            [11]  548 	add	hl,bc
   A364 7E            [ 7]  549 	ld	a,(hl)
   A365 FD 21 54 A1   [14]  550 	ld	iy,#_map
   A369 FD 77 00      [19]  551 	ld	0 (iy),a
   A36C 23            [ 6]  552 	inc	hl
   A36D 7E            [ 7]  553 	ld	a,(hl)
   A36E 32 55 A1      [13]  554 	ld	(#_map + 1),a
                            555 ;src/jugador/jugador.c:188: prota.x = prota.xp = 0;
   A371 21 5A A1      [10]  556 	ld	hl,#(_prota + 0x0002)
   A374 36 00         [10]  557 	ld	(hl),#0x00
   A376 21 58 A1      [10]  558 	ld	hl,#_prota
   A379 36 00         [10]  559 	ld	(hl),#0x00
                            560 ;src/jugador/jugador.c:189: prota.mover = SI;
   A37B 21 5E A1      [10]  561 	ld	hl,#(_prota + 0x0006)
   A37E 36 01         [10]  562 	ld	(hl),#0x01
                            563 ;src/jugador/jugador.c:190: inicializar_cuchillo(map);
   A380 2A 54 A1      [16]  564 	ld	hl,(_map)
   A383 E5            [11]  565 	push	hl
   A384 CD 07 AB      [17]  566 	call	_inicializar_cuchillo
   A387 F1            [10]  567 	pop	af
                            568 ;src/jugador/jugador.c:191: dibujarMapa(map);
   A388 2A 54 A1      [16]  569 	ld	hl,(_map)
   A38B E5            [11]  570 	push	hl
   A38C CD 53 8A      [17]  571 	call	_dibujarMapa
   A38F F1            [10]  572 	pop	af
   A390 C9            [10]  573 	ret
                            574 ;src/jugador/jugador.c:195: void retrocederMapa() {
                            575 ;	---------------------------------
                            576 ; Function retrocederMapa
                            577 ; ---------------------------------
   A391                     578 _retrocederMapa::
                            579 ;src/jugador/jugador.c:196: if (num_mapa > 0) {
   A391 3A 56 A1      [13]  580 	ld	a,(#_num_mapa + 0)
   A394 B7            [ 4]  581 	or	a, a
   A395 C8            [11]  582 	ret	Z
                            583 ;src/jugador/jugador.c:197: map = mapas[--num_mapa];
   A396 01 D9 A1      [10]  584 	ld	bc,#_mapas+0
   A399 21 56 A1      [10]  585 	ld	hl, #_num_mapa+0
   A39C 35            [11]  586 	dec	(hl)
   A39D FD 21 56 A1   [14]  587 	ld	iy,#_num_mapa
   A3A1 FD 6E 00      [19]  588 	ld	l,0 (iy)
   A3A4 26 00         [ 7]  589 	ld	h,#0x00
   A3A6 29            [11]  590 	add	hl, hl
   A3A7 09            [11]  591 	add	hl,bc
   A3A8 7E            [ 7]  592 	ld	a,(hl)
   A3A9 FD 21 54 A1   [14]  593 	ld	iy,#_map
   A3AD FD 77 00      [19]  594 	ld	0 (iy),a
   A3B0 23            [ 6]  595 	inc	hl
   A3B1 7E            [ 7]  596 	ld	a,(hl)
   A3B2 32 55 A1      [13]  597 	ld	(#_map + 1),a
                            598 ;src/jugador/jugador.c:198: prota.x = prota.xp = ANCHO_PANTALLA - G_PERSONAJE_00_W;
   A3B5 21 5A A1      [10]  599 	ld	hl,#(_prota + 0x0002)
   A3B8 36 40         [10]  600 	ld	(hl),#0x40
   A3BA 21 58 A1      [10]  601 	ld	hl,#_prota
   A3BD 36 40         [10]  602 	ld	(hl),#0x40
                            603 ;src/jugador/jugador.c:199: prota.mover = SI;
   A3BF 21 5E A1      [10]  604 	ld	hl,#(_prota + 0x0006)
   A3C2 36 01         [10]  605 	ld	(hl),#0x01
                            606 ;src/jugador/jugador.c:200: inicializar_cuchillo(map);
   A3C4 2A 54 A1      [16]  607 	ld	hl,(_map)
   A3C7 E5            [11]  608 	push	hl
   A3C8 CD 07 AB      [17]  609 	call	_inicializar_cuchillo
   A3CB F1            [10]  610 	pop	af
                            611 ;src/jugador/jugador.c:201: dibujarMapa(map);
   A3CC 2A 54 A1      [16]  612 	ld	hl,(_map)
   A3CF E5            [11]  613 	push	hl
   A3D0 CD 53 8A      [17]  614 	call	_dibujarMapa
   A3D3 F1            [10]  615 	pop	af
   A3D4 C9            [10]  616 	ret
                            617 ;src/jugador/jugador.c:206: void redibujarCuchillo(){
                            618 ;	---------------------------------
                            619 ; Function redibujarCuchillo
                            620 ; ---------------------------------
   A3D5                     621 _redibujarCuchillo::
                            622 ;src/jugador/jugador.c:207: borrarCuchillo();
   A3D5 CD 61 A2      [17]  623 	call	_borrarCuchillo
                            624 ;src/jugador/jugador.c:208: cuchillo.xp = cuchillo.x;
   A3D8 01 69 A1      [10]  625 	ld	bc,#_cuchillo + 2
   A3DB 3A 67 A1      [13]  626 	ld	a, (#_cuchillo + 0)
   A3DE 02            [ 7]  627 	ld	(bc),a
                            628 ;src/jugador/jugador.c:209: cuchillo.yp = cuchillo.y;
   A3DF 01 6A A1      [10]  629 	ld	bc,#_cuchillo + 3
   A3E2 3A 68 A1      [13]  630 	ld	a, (#_cuchillo + 1)
   A3E5 02            [ 7]  631 	ld	(bc),a
                            632 ;src/jugador/jugador.c:210: dibujarCuchillo();
   A3E6 C3 25 A3      [10]  633 	jp  _dibujarCuchillo
                            634 ;src/jugador/jugador.c:214: u8* obtenerTilePtr(u8 x, u8 y) {
                            635 ;	---------------------------------
                            636 ; Function obtenerTilePtr
                            637 ; ---------------------------------
   A3E9                     638 _obtenerTilePtr::
   A3E9 DD E5         [15]  639 	push	ix
   A3EB DD 21 00 00   [14]  640 	ld	ix,#0
   A3EF DD 39         [15]  641 	add	ix,sp
                            642 ;src/jugador/jugador.c:215: return map + (y-ORIGEN_MAPA_Y)/4*g_map1_W + x/2;
   A3F1 DD 4E 05      [19]  643 	ld	c,5 (ix)
   A3F4 06 00         [ 7]  644 	ld	b,#0x00
   A3F6 79            [ 4]  645 	ld	a,c
   A3F7 C6 BC         [ 7]  646 	add	a,#0xBC
   A3F9 5F            [ 4]  647 	ld	e,a
   A3FA 78            [ 4]  648 	ld	a,b
   A3FB CE FF         [ 7]  649 	adc	a,#0xFF
   A3FD 57            [ 4]  650 	ld	d,a
   A3FE 6B            [ 4]  651 	ld	l, e
   A3FF 62            [ 4]  652 	ld	h, d
   A400 CB 7A         [ 8]  653 	bit	7, d
   A402 28 04         [12]  654 	jr	Z,00103$
   A404 21 BF FF      [10]  655 	ld	hl,#0xFFBF
   A407 09            [11]  656 	add	hl,bc
   A408                     657 00103$:
   A408 CB 2C         [ 8]  658 	sra	h
   A40A CB 1D         [ 8]  659 	rr	l
   A40C CB 2C         [ 8]  660 	sra	h
   A40E CB 1D         [ 8]  661 	rr	l
   A410 4D            [ 4]  662 	ld	c, l
   A411 44            [ 4]  663 	ld	b, h
   A412 29            [11]  664 	add	hl, hl
   A413 29            [11]  665 	add	hl, hl
   A414 09            [11]  666 	add	hl, bc
   A415 29            [11]  667 	add	hl, hl
   A416 29            [11]  668 	add	hl, hl
   A417 29            [11]  669 	add	hl, hl
   A418 4D            [ 4]  670 	ld	c,l
   A419 44            [ 4]  671 	ld	b,h
   A41A 2A 54 A1      [16]  672 	ld	hl,(_map)
   A41D 09            [11]  673 	add	hl,bc
   A41E DD 4E 04      [19]  674 	ld	c,4 (ix)
   A421 CB 39         [ 8]  675 	srl	c
   A423 59            [ 4]  676 	ld	e,c
   A424 16 00         [ 7]  677 	ld	d,#0x00
   A426 19            [11]  678 	add	hl,de
   A427 DD E1         [14]  679 	pop	ix
   A429 C9            [10]  680 	ret
                            681 ;src/jugador/jugador.c:218: void girarFrame() {
                            682 ;	---------------------------------
                            683 ; Function girarFrame
                            684 ; ---------------------------------
   A42A                     685 _girarFrame::
                            686 ;src/jugador/jugador.c:219: TFrame* f = prota.frame;
   A42A ED 4B 5F A1   [20]  687 	ld	bc, (#_prota + 7)
                            688 ;src/jugador/jugador.c:220: if (f->mira != prota.mira) {
   A42E 0A            [ 7]  689 	ld	a,(bc)
   A42F 5F            [ 4]  690 	ld	e,a
   A430 21 61 A1      [10]  691 	ld	hl, #(_prota + 0x0009) + 0
   A433 56            [ 7]  692 	ld	d,(hl)
   A434 7B            [ 4]  693 	ld	a,e
   A435 92            [ 4]  694 	sub	a, d
   A436 C8            [11]  695 	ret	Z
                            696 ;src/jugador/jugador.c:221: cpct_hflipSpriteM0(G_PERSONAJE_00_W, G_PERSONAJE_00_H, f->sprite);
   A437 69            [ 4]  697 	ld	l, c
   A438 60            [ 4]  698 	ld	h, b
   A439 23            [ 6]  699 	inc	hl
   A43A 5E            [ 7]  700 	ld	e,(hl)
   A43B 23            [ 6]  701 	inc	hl
   A43C 56            [ 7]  702 	ld	d,(hl)
   A43D C5            [11]  703 	push	bc
   A43E D5            [11]  704 	push	de
   A43F 21 10 20      [10]  705 	ld	hl,#0x2010
   A442 E5            [11]  706 	push	hl
   A443 CD 00 95      [17]  707 	call	_cpct_hflipSpriteM0
   A446 C1            [10]  708 	pop	bc
                            709 ;src/jugador/jugador.c:222: f->mira = prota.mira;
   A447 3A 61 A1      [13]  710 	ld	a, (#(_prota + 0x0009) + 0)
   A44A 02            [ 7]  711 	ld	(bc),a
   A44B C9            [10]  712 	ret
                            713 ;src/jugador/jugador.c:228: void asignarFrame(TFrame **animacion) {
                            714 ;	---------------------------------
                            715 ; Function asignarFrame
                            716 ; ---------------------------------
   A44C                     717 _asignarFrame::
   A44C DD E5         [15]  718 	push	ix
   A44E DD 21 00 00   [14]  719 	ld	ix,#0
   A452 DD 39         [15]  720 	add	ix,sp
                            721 ;src/jugador/jugador.c:229: prota.frame = animacion[prota.nframe / 4];
   A454 21 62 A1      [10]  722 	ld	hl, #_prota + 10
   A457 6E            [ 7]  723 	ld	l,(hl)
   A458 CB 3D         [ 8]  724 	srl	l
   A45A CB 3D         [ 8]  725 	srl	l
   A45C 26 00         [ 7]  726 	ld	h,#0x00
   A45E 29            [11]  727 	add	hl, hl
   A45F 4D            [ 4]  728 	ld	c, l
   A460 44            [ 4]  729 	ld	b, h
   A461 DD 6E 04      [19]  730 	ld	l,4 (ix)
   A464 DD 66 05      [19]  731 	ld	h,5 (ix)
   A467 09            [11]  732 	add	hl,bc
   A468 4E            [ 7]  733 	ld	c,(hl)
   A469 23            [ 6]  734 	inc	hl
   A46A 46            [ 7]  735 	ld	b,(hl)
   A46B ED 43 5F A1   [20]  736 	ld	((_prota + 0x0007)), bc
   A46F DD E1         [14]  737 	pop	ix
   A471 C9            [10]  738 	ret
                            739 ;src/jugador/jugador.c:232: void ini_preSalto()
                            740 ;	---------------------------------
                            741 ; Function ini_preSalto
                            742 ; ---------------------------------
   A472                     743 _ini_preSalto::
                            744 ;src/jugador/jugador.c:234: prota.nframe = 0;
   A472 21 62 A1      [10]  745 	ld	hl,#(_prota + 0x000a)
   A475 36 00         [10]  746 	ld	(hl),#0x00
                            747 ;src/jugador/jugador.c:235: prota.estado = ST_salto;
   A477 21 63 A1      [10]  748 	ld	hl,#(_prota + 0x000b)
   A47A 36 02         [10]  749 	ld	(hl),#0x02
                            750 ;src/jugador/jugador.c:236: prota.mover  = SI;
   A47C 21 5E A1      [10]  751 	ld	hl,#(_prota + 0x0006)
   A47F 36 01         [10]  752 	ld	(hl),#0x01
   A481 C9            [10]  753 	ret
                            754 ;src/jugador/jugador.c:240: void ini_salto()
                            755 ;	---------------------------------
                            756 ; Function ini_salto
                            757 ; ---------------------------------
   A482                     758 _ini_salto::
                            759 ;src/jugador/jugador.c:243: prota.estado = ST_saltando;
   A482 21 63 A1      [10]  760 	ld	hl,#(_prota + 0x000b)
   A485 36 03         [10]  761 	ld	(hl),#0x03
                            762 ;src/jugador/jugador.c:244: prota.mover  = SI;
   A487 21 5E A1      [10]  763 	ld	hl,#(_prota + 0x0006)
   A48A 36 01         [10]  764 	ld	(hl),#0x01
                            765 ;src/jugador/jugador.c:245: prota.salto = 0;
   A48C 21 64 A1      [10]  766 	ld	hl,#(_prota + 0x000c)
   A48F 36 00         [10]  767 	ld	(hl),#0x00
   A491 C9            [10]  768 	ret
                            769 ;src/jugador/jugador.c:248: void ini_andar(u8 direccion)
                            770 ;	---------------------------------
                            771 ; Function ini_andar
                            772 ; ---------------------------------
   A492                     773 _ini_andar::
                            774 ;src/jugador/jugador.c:250: prota.nframe=0;
   A492 21 62 A1      [10]  775 	ld	hl,#(_prota + 0x000a)
   A495 36 00         [10]  776 	ld	(hl),#0x00
                            777 ;src/jugador/jugador.c:251: prota.estado=ST_andando;
   A497 21 63 A1      [10]  778 	ld	hl,#(_prota + 0x000b)
   A49A 36 01         [10]  779 	ld	(hl),#0x01
                            780 ;src/jugador/jugador.c:252: prota.mira = direccion;
   A49C 21 61 A1      [10]  781 	ld	hl,#(_prota + 0x0009)
   A49F FD 21 02 00   [14]  782 	ld	iy,#2
   A4A3 FD 39         [15]  783 	add	iy,sp
   A4A5 FD 7E 00      [19]  784 	ld	a,0 (iy)
   A4A8 77            [ 7]  785 	ld	(hl),a
                            786 ;src/jugador/jugador.c:253: prota.mover=SI;
   A4A9 21 5E A1      [10]  787 	ld	hl,#(_prota + 0x0006)
   A4AC 36 01         [10]  788 	ld	(hl),#0x01
   A4AE C9            [10]  789 	ret
                            790 ;src/jugador/jugador.c:256: void ini_quieto()
                            791 ;	---------------------------------
                            792 ; Function ini_quieto
                            793 ; ---------------------------------
   A4AF                     794 _ini_quieto::
                            795 ;src/jugador/jugador.c:258: prota.estado = ST_quieto;
   A4AF 21 63 A1      [10]  796 	ld	hl,#(_prota + 0x000b)
   A4B2 36 00         [10]  797 	ld	(hl),#0x00
                            798 ;src/jugador/jugador.c:259: prota.mover  = SI;
   A4B4 21 5E A1      [10]  799 	ld	hl,#(_prota + 0x0006)
   A4B7 36 01         [10]  800 	ld	(hl),#0x01
   A4B9 C9            [10]  801 	ret
                            802 ;src/jugador/jugador.c:262: void ini_caer() {
                            803 ;	---------------------------------
                            804 ; Function ini_caer
                            805 ; ---------------------------------
   A4BA                     806 _ini_caer::
                            807 ;src/jugador/jugador.c:263: prota.nframe = 0;
   A4BA 21 62 A1      [10]  808 	ld	hl,#(_prota + 0x000a)
   A4BD 36 00         [10]  809 	ld	(hl),#0x00
                            810 ;src/jugador/jugador.c:264: prota.estado = ST_caer;
   A4BF 21 63 A1      [10]  811 	ld	hl,#(_prota + 0x000b)
   A4C2 36 05         [10]  812 	ld	(hl),#0x05
                            813 ;src/jugador/jugador.c:265: prota.mover  = SI;
   A4C4 21 5E A1      [10]  814 	ld	hl,#(_prota + 0x0006)
   A4C7 36 01         [10]  815 	ld	(hl),#0x01
   A4C9 C9            [10]  816 	ret
                            817 ;src/jugador/jugador.c:268: void caer() {
                            818 ;	---------------------------------
                            819 ; Function caer
                            820 ; ---------------------------------
   A4CA                     821 _caer::
                            822 ;src/jugador/jugador.c:269: prota.mover = SI;
   A4CA 21 5E A1      [10]  823 	ld	hl,#(_prota + 0x0006)
   A4CD 36 01         [10]  824 	ld	(hl),#0x01
                            825 ;src/jugador/jugador.c:270: ini_quieto();      
   A4CF C3 AF A4      [10]  826 	jp  _ini_quieto
                            827 ;src/jugador/jugador.c:273: void cayendo_entrar() {
                            828 ;	---------------------------------
                            829 ; Function cayendo_entrar
                            830 ; ---------------------------------
   A4D2                     831 _cayendo_entrar::
                            832 ;src/jugador/jugador.c:274: prota.estado = ST_cayendo;
   A4D2 21 63 A1      [10]  833 	ld	hl,#(_prota + 0x000b)
   A4D5 36 04         [10]  834 	ld	(hl),#0x04
                            835 ;src/jugador/jugador.c:275: prota.mover  = SI;
   A4D7 21 5E A1      [10]  836 	ld	hl,#(_prota + 0x0006)
   A4DA 36 01         [10]  837 	ld	(hl),#0x01
                            838 ;src/jugador/jugador.c:276: prota.salto  = PASOS_SALTO - 3;
   A4DC 21 64 A1      [10]  839 	ld	hl,#(_prota + 0x000c)
   A4DF 36 11         [10]  840 	ld	(hl),#0x11
   A4E1 C9            [10]  841 	ret
                            842 ;src/jugador/jugador.c:279: void ajustarAlSuelo() {
                            843 ;	---------------------------------
                            844 ; Function ajustarAlSuelo
                            845 ; ---------------------------------
   A4E2                     846 _ajustarAlSuelo::
                            847 ;src/jugador/jugador.c:281: prota.y = (prota.y & 0b11111100);
   A4E2 01 59 A1      [10]  848 	ld	bc,#_prota+1
   A4E5 0A            [ 7]  849 	ld	a,(bc)
   A4E6 E6 FC         [ 7]  850 	and	a, #0xFC
   A4E8 02            [ 7]  851 	ld	(bc),a
   A4E9 C9            [10]  852 	ret
                            853 ;src/jugador/jugador.c:286: u8 sobreSuelo() {
                            854 ;	---------------------------------
                            855 ; Function sobreSuelo
                            856 ; ---------------------------------
   A4EA                     857 _sobreSuelo::
                            858 ;src/jugador/jugador.c:288: u8* tileSuelo = obtenerTilePtr(prota.x+2, prota.y +32);
   A4EA 3A 59 A1      [13]  859 	ld	a, (#_prota + 1)
   A4ED C6 20         [ 7]  860 	add	a, #0x20
   A4EF 47            [ 4]  861 	ld	b,a
   A4F0 3A 58 A1      [13]  862 	ld	a, (#_prota + 0)
   A4F3 C6 02         [ 7]  863 	add	a, #0x02
   A4F5 C5            [11]  864 	push	bc
   A4F6 33            [ 6]  865 	inc	sp
   A4F7 F5            [11]  866 	push	af
   A4F8 33            [ 6]  867 	inc	sp
   A4F9 CD E9 A3      [17]  868 	call	_obtenerTilePtr
   A4FC F1            [10]  869 	pop	af
                            870 ;src/jugador/jugador.c:290: if (*tileSuelo==13)
   A4FD 7E            [ 7]  871 	ld	a,(hl)
   A4FE D6 0D         [ 7]  872 	sub	a, #0x0D
   A500 20 03         [12]  873 	jr	NZ,00102$
                            874 ;src/jugador/jugador.c:292: return 1;
   A502 2E 01         [ 7]  875 	ld	l,#0x01
   A504 C9            [10]  876 	ret
   A505                     877 00102$:
                            878 ;src/jugador/jugador.c:294: return 0;
   A505 2E 00         [ 7]  879 	ld	l,#0x00
   A507 C9            [10]  880 	ret
                            881 ;src/jugador/jugador.c:297: void imprimirMuni()
                            882 ;	---------------------------------
                            883 ; Function imprimirMuni
                            884 ; ---------------------------------
   A508                     885 _imprimirMuni::
   A508 DD E5         [15]  886 	push	ix
   A50A 3B            [ 6]  887 	dec	sp
                            888 ;src/jugador/jugador.c:300: sprintf(str, "%2u", cuchillo.municion);
   A50B 21 70 A1      [10]  889 	ld	hl,#_cuchillo+9
   A50E 5E            [ 7]  890 	ld	e,(hl)
   A50F 16 00         [ 7]  891 	ld	d,#0x00
   A511 21 00 00      [10]  892 	ld	hl,#0x0000
   A514 39            [11]  893 	add	hl,sp
   A515 E5            [11]  894 	push	hl
   A516 D5            [11]  895 	push	de
   A517 11 43 A5      [10]  896 	ld	de,#___str_0
   A51A D5            [11]  897 	push	de
   A51B E5            [11]  898 	push	hl
   A51C CD 0D 94      [17]  899 	call	_sprintf
   A51F 21 06 00      [10]  900 	ld	hl,#6
   A522 39            [11]  901 	add	hl,sp
   A523 F9            [ 6]  902 	ld	sp,hl
   A524 21 19 00      [10]  903 	ld	hl,#0x0019
   A527 E5            [11]  904 	push	hl
   A528 21 00 C0      [10]  905 	ld	hl,#0xC000
   A52B E5            [11]  906 	push	hl
   A52C CD AA 95      [17]  907 	call	_cpct_getScreenPtr
   A52F EB            [ 4]  908 	ex	de,hl
   A530 C1            [10]  909 	pop	bc
   A531 21 04 00      [10]  910 	ld	hl,#0x0004
   A534 E5            [11]  911 	push	hl
   A535 D5            [11]  912 	push	de
   A536 C5            [11]  913 	push	bc
   A537 CD 19 91      [17]  914 	call	_cpct_drawStringM0
   A53A 21 06 00      [10]  915 	ld	hl,#6
   A53D 39            [11]  916 	add	hl,sp
   A53E F9            [ 6]  917 	ld	sp,hl
   A53F 33            [ 6]  918 	inc	sp
   A540 DD E1         [14]  919 	pop	ix
   A542 C9            [10]  920 	ret
   A543                     921 ___str_0:
   A543 25 32 75            922 	.ascii "%2u"
   A546 00                  923 	.db 0x00
                            924 ;src/jugador/jugador.c:303: void imprimirVida()
                            925 ;	---------------------------------
                            926 ; Function imprimirVida
                            927 ; ---------------------------------
   A547                     928 _imprimirVida::
   A547 DD E5         [15]  929 	push	ix
   A549 3B            [ 6]  930 	dec	sp
                            931 ;src/jugador/jugador.c:306: sprintf(str, "%2u", prota.vida);
   A54A 21 65 A1      [10]  932 	ld	hl,#_prota+13
   A54D 5E            [ 7]  933 	ld	e,(hl)
   A54E 16 00         [ 7]  934 	ld	d,#0x00
   A550 21 00 00      [10]  935 	ld	hl,#0x0000
   A553 39            [11]  936 	add	hl,sp
   A554 E5            [11]  937 	push	hl
   A555 D5            [11]  938 	push	de
   A556 11 82 A5      [10]  939 	ld	de,#___str_1
   A559 D5            [11]  940 	push	de
   A55A E5            [11]  941 	push	hl
   A55B CD 0D 94      [17]  942 	call	_sprintf
   A55E 21 06 00      [10]  943 	ld	hl,#6
   A561 39            [11]  944 	add	hl,sp
   A562 F9            [ 6]  945 	ld	sp,hl
   A563 21 19 0A      [10]  946 	ld	hl,#0x0A19
   A566 E5            [11]  947 	push	hl
   A567 21 00 C0      [10]  948 	ld	hl,#0xC000
   A56A E5            [11]  949 	push	hl
   A56B CD AA 95      [17]  950 	call	_cpct_getScreenPtr
   A56E EB            [ 4]  951 	ex	de,hl
   A56F C1            [10]  952 	pop	bc
   A570 21 04 00      [10]  953 	ld	hl,#0x0004
   A573 E5            [11]  954 	push	hl
   A574 D5            [11]  955 	push	de
   A575 C5            [11]  956 	push	bc
   A576 CD 19 91      [17]  957 	call	_cpct_drawStringM0
   A579 21 06 00      [10]  958 	ld	hl,#6
   A57C 39            [11]  959 	add	hl,sp
   A57D F9            [ 6]  960 	ld	sp,hl
   A57E 33            [ 6]  961 	inc	sp
   A57F DD E1         [14]  962 	pop	ix
   A581 C9            [10]  963 	ret
   A582                     964 ___str_1:
   A582 25 32 75            965 	.ascii "%2u"
   A585 00                  966 	.db 0x00
                            967 ;src/jugador/jugador.c:312: void atacar(){
                            968 ;	---------------------------------
                            969 ; Function atacar
                            970 ; ---------------------------------
   A586                     971 _atacar::
                            972 ;src/jugador/jugador.c:313: cuchillo.y = prota.y+10;
   A586 01 68 A1      [10]  973 	ld	bc,#_cuchillo + 1
   A589 3A 59 A1      [13]  974 	ld	a, (#_prota + 1)
   A58C C6 0A         [ 7]  975 	add	a, #0x0A
   A58E 02            [ 7]  976 	ld	(bc),a
                            977 ;src/jugador/jugador.c:314: cuchillo.mover=SI;
   A58F 21 6D A1      [10]  978 	ld	hl,#(_cuchillo + 0x0006)
   A592 36 01         [10]  979 	ld	(hl),#0x01
                            980 ;src/jugador/jugador.c:315: if(cuchillo.mira != prota.mira){
   A594 01 6F A1      [10]  981 	ld	bc,#_cuchillo + 8
   A597 0A            [ 7]  982 	ld	a,(bc)
   A598 57            [ 4]  983 	ld	d,a
   A599 21 61 A1      [10]  984 	ld	hl, #(_prota + 0x0009) + 0
   A59C 5E            [ 7]  985 	ld	e,(hl)
   A59D 7A            [ 4]  986 	ld	a,d
   A59E 93            [ 4]  987 	sub	a, e
   A59F 28 0D         [12]  988 	jr	Z,00102$
                            989 ;src/jugador/jugador.c:316: cuchillo.mira = prota.mira;
   A5A1 7B            [ 4]  990 	ld	a,e
   A5A2 02            [ 7]  991 	ld	(bc),a
                            992 ;src/jugador/jugador.c:317: cpct_hflipSpriteM0(G_CUCHILLO_W, G_CUCHILLO_H, cuchillo.sprite);
   A5A3 2A 6B A1      [16]  993 	ld	hl, (#_cuchillo + 4)
   A5A6 E5            [11]  994 	push	hl
   A5A7 21 04 04      [10]  995 	ld	hl,#0x0404
   A5AA E5            [11]  996 	push	hl
   A5AB CD 00 95      [17]  997 	call	_cpct_hflipSpriteM0
   A5AE                     998 00102$:
                            999 ;src/jugador/jugador.c:320: if(prota.mira == M_derecha){
   A5AE 3A 61 A1      [13] 1000 	ld	a, (#(_prota + 0x0009) + 0)
                           1001 ;src/jugador/jugador.c:321: cuchillo.x = prota.x+5; 
   A5B1 21 58 A1      [10] 1002 	ld	hl, #_prota + 0
   A5B4 4E            [ 7] 1003 	ld	c,(hl)
                           1004 ;src/jugador/jugador.c:320: if(prota.mira == M_derecha){
   A5B5 B7            [ 4] 1005 	or	a, a
   A5B6 20 0D         [12] 1006 	jr	NZ,00104$
                           1007 ;src/jugador/jugador.c:321: cuchillo.x = prota.x+5; 
   A5B8 79            [ 4] 1008 	ld	a,c
   A5B9 C6 05         [ 7] 1009 	add	a, #0x05
   A5BB 32 67 A1      [13] 1010 	ld	(#_cuchillo),a
                           1011 ;src/jugador/jugador.c:322: cuchillo.lanzandoDerecha = SI;
   A5BE 21 6E A1      [10] 1012 	ld	hl,#(_cuchillo + 0x0007)
   A5C1 36 01         [10] 1013 	ld	(hl),#0x01
   A5C3 18 06         [12] 1014 	jr	00105$
   A5C5                    1015 00104$:
                           1016 ;src/jugador/jugador.c:325: cuchillo.x = prota.x-5; 
   A5C5 79            [ 4] 1017 	ld	a,c
   A5C6 C6 FB         [ 7] 1018 	add	a,#0xFB
   A5C8 32 67 A1      [13] 1019 	ld	(#_cuchillo),a
   A5CB                    1020 00105$:
                           1021 ;src/jugador/jugador.c:327: if(cuchillo.municion!=0)
   A5CB 01 70 A1      [10] 1022 	ld	bc,#_cuchillo + 9
   A5CE 0A            [ 7] 1023 	ld	a,(bc)
   A5CF B7            [ 4] 1024 	or	a, a
   A5D0 C8            [11] 1025 	ret	Z
                           1026 ;src/jugador/jugador.c:329: cuchillo.municion--;
   A5D1 C6 FF         [ 7] 1027 	add	a,#0xFF
   A5D3 02            [ 7] 1028 	ld	(bc),a
                           1029 ;src/jugador/jugador.c:330: imprimirMuni();
   A5D4 CD 08 A5      [17] 1030 	call	_imprimirMuni
   A5D7 C9            [10] 1031 	ret
                           1032 ;src/jugador/jugador.c:336: void estatico() {
                           1033 ;	---------------------------------
                           1034 ; Function estatico
                           1035 ; ---------------------------------
   A5D8                    1036 _estatico::
                           1037 ;src/jugador/jugador.c:339: u8 k = compruebaTeclas(keys, 4);
   A5D8 3E 04         [ 7] 1038 	ld	a,#0x04
   A5DA F5            [11] 1039 	push	af
   A5DB 33            [ 6] 1040 	inc	sp
   A5DC 21 25 A6      [10] 1041 	ld	hl,#_estatico_keys_1_141
   A5DF E5            [11] 1042 	push	hl
   A5E0 CD 2D A6      [17] 1043 	call	_compruebaTeclas
   A5E3 F1            [10] 1044 	pop	af
   A5E4 33            [ 6] 1045 	inc	sp
   A5E5 5D            [ 4] 1046 	ld	e,l
                           1047 ;src/jugador/jugador.c:340: switch(k) {
   A5E6 3E 04         [ 7] 1048 	ld	a,#0x04
   A5E8 93            [ 4] 1049 	sub	a, e
   A5E9 D8            [11] 1050 	ret	C
   A5EA 16 00         [ 7] 1051 	ld	d,#0x00
   A5EC 21 F2 A5      [10] 1052 	ld	hl,#00129$
   A5EF 19            [11] 1053 	add	hl,de
   A5F0 19            [11] 1054 	add	hl,de
                           1055 ;src/jugador/jugador.c:341: case 0:  break; // Nada que hacer
                           1056 ;src/jugador/jugador.c:342: case 1: ini_preSalto(); break;
   A5F1 E9            [ 4] 1057 	jp	(hl)
   A5F2                    1058 00129$:
   A5F2 18 30         [12] 1059 	jr	00111$
   A5F4 18 08         [12] 1060 	jr	00102$
   A5F6 18 09         [12] 1061 	jr	00103$
   A5F8 18 0F         [12] 1062 	jr	00104$
   A5FA 18 16         [12] 1063 	jr	00105$
   A5FC 18 26         [12] 1064 	jr	00111$
   A5FE                    1065 00102$:
   A5FE C3 72 A4      [10] 1066 	jp  _ini_preSalto
                           1067 ;src/jugador/jugador.c:343: case 2: ini_andar(M_derecha);   break;
   A601                    1068 00103$:
   A601 AF            [ 4] 1069 	xor	a, a
   A602 F5            [11] 1070 	push	af
   A603 33            [ 6] 1071 	inc	sp
   A604 CD 92 A4      [17] 1072 	call	_ini_andar
   A607 33            [ 6] 1073 	inc	sp
   A608 C9            [10] 1074 	ret
                           1075 ;src/jugador/jugador.c:344: case 3: ini_andar(M_izquierda); break;
   A609                    1076 00104$:
   A609 3E 01         [ 7] 1077 	ld	a,#0x01
   A60B F5            [11] 1078 	push	af
   A60C 33            [ 6] 1079 	inc	sp
   A60D CD 92 A4      [17] 1080 	call	_ini_andar
   A610 33            [ 6] 1081 	inc	sp
   A611 C9            [10] 1082 	ret
                           1083 ;src/jugador/jugador.c:345: case 4: 
   A612                    1084 00105$:
                           1085 ;src/jugador/jugador.c:346: if(cuchillo.lanzandoDerecha==NO && cuchillo.mover==NO && cuchillo.municion!=0)
   A612 3A 6E A1      [13] 1086 	ld	a, (#_cuchillo + 7)
   A615 B7            [ 4] 1087 	or	a, a
   A616 C0            [11] 1088 	ret	NZ
   A617 3A 6D A1      [13] 1089 	ld	a, (#_cuchillo + 6)
   A61A B7            [ 4] 1090 	or	a, a
   A61B C0            [11] 1091 	ret	NZ
   A61C 3A 70 A1      [13] 1092 	ld	a, (#_cuchillo + 9)
   A61F B7            [ 4] 1093 	or	a, a
   A620 C8            [11] 1094 	ret	Z
                           1095 ;src/jugador/jugador.c:348: atacar();
   A621 CD 86 A5      [17] 1096 	call	_atacar
                           1097 ;src/jugador/jugador.c:351: }
   A624                    1098 00111$:
   A624 C9            [10] 1099 	ret
   A625                    1100 _estatico_keys_1_141:
   A625 00 01              1101 	.dw #0x0100
   A627 00 02              1102 	.dw #0x0200
   A629 01 01              1103 	.dw #0x0101
   A62B 05 80              1104 	.dw #0x8005
                           1105 ;src/jugador/jugador.c:354: u8 compruebaTeclas(const cpct_keyID* k, u8 numk) {
                           1106 ;	---------------------------------
                           1107 ; Function compruebaTeclas
                           1108 ; ---------------------------------
   A62D                    1109 _compruebaTeclas::
   A62D DD E5         [15] 1110 	push	ix
   A62F DD 21 00 00   [14] 1111 	ld	ix,#0
   A633 DD 39         [15] 1112 	add	ix,sp
                           1113 ;src/jugador/jugador.c:356: cpct_scanKeyboard_if();
   A635 CD 98 94      [17] 1114 	call	_cpct_scanKeyboard_if
                           1115 ;src/jugador/jugador.c:357: if (cpct_isAnyKeyPressed()) {
   A638 CD 65 94      [17] 1116 	call	_cpct_isAnyKeyPressed
   A63B 7D            [ 4] 1117 	ld	a,l
   A63C B7            [ 4] 1118 	or	a, a
   A63D 28 29         [12] 1119 	jr	Z,00105$
                           1120 ;src/jugador/jugador.c:358: for(i=1; i <= numk; i++, k++) {
   A63F 01 01 01      [10] 1121 	ld	bc,#0x0101
   A642 DD 5E 04      [19] 1122 	ld	e,4 (ix)
   A645 DD 56 05      [19] 1123 	ld	d,5 (ix)
   A648                    1124 00107$:
   A648 DD 7E 06      [19] 1125 	ld	a,6 (ix)
   A64B 90            [ 4] 1126 	sub	a, b
   A64C 38 1A         [12] 1127 	jr	C,00105$
                           1128 ;src/jugador/jugador.c:359: if (cpct_isKeyPressed(*k))
   A64E 6B            [ 4] 1129 	ld	l, e
   A64F 62            [ 4] 1130 	ld	h, d
   A650 7E            [ 7] 1131 	ld	a, (hl)
   A651 23            [ 6] 1132 	inc	hl
   A652 66            [ 7] 1133 	ld	h,(hl)
   A653 6F            [ 4] 1134 	ld	l,a
   A654 C5            [11] 1135 	push	bc
   A655 D5            [11] 1136 	push	de
   A656 CD 97 90      [17] 1137 	call	_cpct_isKeyPressed
   A659 D1            [10] 1138 	pop	de
   A65A C1            [10] 1139 	pop	bc
   A65B 7D            [ 4] 1140 	ld	a,l
   A65C B7            [ 4] 1141 	or	a, a
   A65D 28 03         [12] 1142 	jr	Z,00108$
                           1143 ;src/jugador/jugador.c:360: return i;
   A65F 69            [ 4] 1144 	ld	l,c
   A660 18 08         [12] 1145 	jr	00109$
   A662                    1146 00108$:
                           1147 ;src/jugador/jugador.c:358: for(i=1; i <= numk; i++, k++) {
   A662 04            [ 4] 1148 	inc	b
   A663 48            [ 4] 1149 	ld	c,b
   A664 13            [ 6] 1150 	inc	de
   A665 13            [ 6] 1151 	inc	de
   A666 18 E0         [12] 1152 	jr	00107$
   A668                    1153 00105$:
                           1154 ;src/jugador/jugador.c:363: return 0;
   A668 2E 00         [ 7] 1155 	ld	l,#0x00
   A66A                    1156 00109$:
   A66A DD E1         [14] 1157 	pop	ix
   A66C C9            [10] 1158 	ret
                           1159 ;src/jugador/jugador.c:367: void selectSprite()
                           1160 ;	---------------------------------
                           1161 ; Function selectSprite
                           1162 ; ---------------------------------
   A66D                    1163 _selectSprite::
                           1164 ;src/jugador/jugador.c:369: switch(prota.estado)
   A66D 21 63 A1      [10] 1165 	ld	hl, #_prota + 11
   A670 5E            [ 7] 1166 	ld	e,(hl)
   A671 3E 02         [ 7] 1167 	ld	a,#0x02
   A673 93            [ 4] 1168 	sub	a, e
   A674 DA 2A A4      [10] 1169 	jp	C,_girarFrame
   A677 16 00         [ 7] 1170 	ld	d,#0x00
   A679 21 7F A6      [10] 1171 	ld	hl,#00111$
   A67C 19            [11] 1172 	add	hl,de
   A67D 19            [11] 1173 	add	hl,de
                           1174 ;src/jugador/jugador.c:371: case ST_quieto: {
   A67E E9            [ 4] 1175 	jp	(hl)
   A67F                    1176 00111$:
   A67F 18 04         [12] 1177 	jr	00101$
   A681 18 0B         [12] 1178 	jr	00102$
   A683 18 14         [12] 1179 	jr	00103$
   A685                    1180 00101$:
                           1181 ;src/jugador/jugador.c:372: prota.frame = &g_frames[0];
   A685 21 A3 A1      [10] 1182 	ld	hl,#_g_frames
   A688 22 5F A1      [16] 1183 	ld	((_prota + 0x0007)), hl
                           1184 ;src/jugador/jugador.c:373: break;
   A68B C3 2A A4      [10] 1185 	jp	_girarFrame
                           1186 ;src/jugador/jugador.c:376: case ST_andando: {
   A68E                    1187 00102$:
                           1188 ;src/jugador/jugador.c:377: asignarFrame(anim_andar);
   A68E 21 C7 A1      [10] 1189 	ld	hl,#_anim_andar
   A691 E5            [11] 1190 	push	hl
   A692 CD 4C A4      [17] 1191 	call	_asignarFrame
   A695 F1            [10] 1192 	pop	af
                           1193 ;src/jugador/jugador.c:380: break;
   A696 C3 2A A4      [10] 1194 	jp	_girarFrame
                           1195 ;src/jugador/jugador.c:383: case ST_salto:{ 
   A699                    1196 00103$:
                           1197 ;src/jugador/jugador.c:384: asignarFrame(anim_salto);   
   A699 21 D1 A1      [10] 1198 	ld	hl,#_anim_salto
   A69C E5            [11] 1199 	push	hl
   A69D CD 4C A4      [17] 1200 	call	_asignarFrame
   A6A0 F1            [10] 1201 	pop	af
                           1202 ;src/jugador/jugador.c:386: }
                           1203 ;src/jugador/jugador.c:387: girarFrame();	
   A6A1 C3 2A A4      [10] 1204 	jp  _girarFrame
                           1205 ;src/jugador/jugador.c:390: void descender() {
                           1206 ;	---------------------------------
                           1207 ; Function descender
                           1208 ; ---------------------------------
   A6A4                    1209 _descender::
                           1210 ;src/jugador/jugador.c:391: prota.y += cpct_get2Bits(g_tablaSalto, prota.salto);
   A6A4 21 59 A1      [10] 1211 	ld	hl, #(_prota + 0x0001) + 0
   A6A7 4E            [ 7] 1212 	ld	c,(hl)
   A6A8 21 64 A1      [10] 1213 	ld	hl, #(_prota + 0x000c) + 0
   A6AB 5E            [ 7] 1214 	ld	e,(hl)
   A6AC 16 00         [ 7] 1215 	ld	d,#0x00
   A6AE C5            [11] 1216 	push	bc
   A6AF D5            [11] 1217 	push	de
   A6B0 21 E7 A1      [10] 1218 	ld	hl,#_g_tablaSalto
   A6B3 E5            [11] 1219 	push	hl
   A6B4 CD 72 94      [17] 1220 	call	_cpct_get2Bits
   A6B7 C1            [10] 1221 	pop	bc
   A6B8 79            [ 4] 1222 	ld	a,c
   A6B9 85            [ 4] 1223 	add	a, l
   A6BA 32 59 A1      [13] 1224 	ld	(#(_prota + 0x0001)),a
                           1225 ;src/jugador/jugador.c:392: if (prota.salto > 1)
   A6BD 21 64 A1      [10] 1226 	ld	hl, #(_prota + 0x000c) + 0
   A6C0 4E            [ 7] 1227 	ld	c,(hl)
   A6C1 3E 01         [ 7] 1228 	ld	a,#0x01
   A6C3 91            [ 4] 1229 	sub	a, c
   A6C4 D0            [11] 1230 	ret	NC
                           1231 ;src/jugador/jugador.c:393: prota.salto--;
   A6C5 0D            [ 4] 1232 	dec	c
   A6C6 21 64 A1      [10] 1233 	ld	hl,#(_prota + 0x000c)
   A6C9 71            [ 7] 1234 	ld	(hl),c
   A6CA C9            [10] 1235 	ret
                           1236 ;src/jugador/jugador.c:396: void cayendo() {
                           1237 ;	---------------------------------
                           1238 ; Function cayendo
                           1239 ; ---------------------------------
   A6CB                    1240 _cayendo::
                           1241 ;src/jugador/jugador.c:398: u8 k = compruebaTeclas(keys, 2);
   A6CB 3E 02         [ 7] 1242 	ld	a,#0x02
   A6CD F5            [11] 1243 	push	af
   A6CE 33            [ 6] 1244 	inc	sp
   A6CF 21 0C A7      [10] 1245 	ld	hl,#_cayendo_keys_1_154
   A6D2 E5            [11] 1246 	push	hl
   A6D3 CD 2D A6      [17] 1247 	call	_compruebaTeclas
   A6D6 F1            [10] 1248 	pop	af
   A6D7 33            [ 6] 1249 	inc	sp
   A6D8 5D            [ 4] 1250 	ld	e,l
                           1251 ;src/jugador/jugador.c:399: switch(k) {
   A6D9 3E 02         [ 7] 1252 	ld	a,#0x02
   A6DB 93            [ 4] 1253 	sub	a, e
   A6DC 38 18         [12] 1254 	jr	C,00104$
   A6DE 16 00         [ 7] 1255 	ld	d,#0x00
   A6E0 21 E6 A6      [10] 1256 	ld	hl,#00117$
   A6E3 19            [11] 1257 	add	hl,de
   A6E4 19            [11] 1258 	add	hl,de
                           1259 ;src/jugador/jugador.c:400: case 0: break; // Nada que hacer
                           1260 ;src/jugador/jugador.c:401: case 1: moverDer2();  break;
   A6E5 E9            [ 4] 1261 	jp	(hl)
   A6E6                    1262 00117$:
   A6E6 18 0E         [12] 1263 	jr	00104$
   A6E8 18 04         [12] 1264 	jr	00102$
   A6EA 18 07         [12] 1265 	jr	00103$
   A6EC 18 08         [12] 1266 	jr	00104$
   A6EE                    1267 00102$:
   A6EE CD 56 A9      [17] 1268 	call	_moverDer2
   A6F1 18 03         [12] 1269 	jr	00104$
                           1270 ;src/jugador/jugador.c:402: case 2: moverIzq2(); break;
   A6F3                    1271 00103$:
   A6F3 CD 35 A9      [17] 1272 	call	_moverIzq2
                           1273 ;src/jugador/jugador.c:403: }
   A6F6                    1274 00104$:
                           1275 ;src/jugador/jugador.c:405: descender();
   A6F6 CD A4 A6      [17] 1276 	call	_descender
                           1277 ;src/jugador/jugador.c:407: if (sobreSuelo()) {
   A6F9 CD EA A4      [17] 1278 	call	_sobreSuelo
   A6FC 7D            [ 4] 1279 	ld	a,l
   A6FD B7            [ 4] 1280 	or	a, a
   A6FE 28 06         [12] 1281 	jr	Z,00106$
                           1282 ;src/jugador/jugador.c:408: ajustarAlSuelo();
   A700 CD E2 A4      [17] 1283 	call	_ajustarAlSuelo
                           1284 ;src/jugador/jugador.c:409: ini_caer();
   A703 CD BA A4      [17] 1285 	call	_ini_caer
   A706                    1286 00106$:
                           1287 ;src/jugador/jugador.c:412: prota.mover=SI;
   A706 21 5E A1      [10] 1288 	ld	hl,#(_prota + 0x0006)
   A709 36 01         [10] 1289 	ld	(hl),#0x01
   A70B C9            [10] 1290 	ret
   A70C                    1291 _cayendo_keys_1_154:
   A70C 00 02              1292 	.dw #0x0200
   A70E 01 01              1293 	.dw #0x0101
                           1294 ;src/jugador/jugador.c:415: void ascender() {
                           1295 ;	---------------------------------
                           1296 ; Function ascender
                           1297 ; ---------------------------------
   A710                    1298 _ascender::
                           1299 ;src/jugador/jugador.c:416: prota.y -= cpct_get2Bits(g_tablaSalto, prota.salto);
   A710 21 59 A1      [10] 1300 	ld	hl, #(_prota + 0x0001) + 0
   A713 4E            [ 7] 1301 	ld	c,(hl)
   A714 21 64 A1      [10] 1302 	ld	hl, #(_prota + 0x000c) + 0
   A717 5E            [ 7] 1303 	ld	e,(hl)
   A718 16 00         [ 7] 1304 	ld	d,#0x00
   A71A C5            [11] 1305 	push	bc
   A71B D5            [11] 1306 	push	de
   A71C 21 E7 A1      [10] 1307 	ld	hl,#_g_tablaSalto
   A71F E5            [11] 1308 	push	hl
   A720 CD 72 94      [17] 1309 	call	_cpct_get2Bits
   A723 C1            [10] 1310 	pop	bc
   A724 79            [ 4] 1311 	ld	a,c
   A725 95            [ 4] 1312 	sub	a, l
   A726 4F            [ 4] 1313 	ld	c,a
   A727 21 59 A1      [10] 1314 	ld	hl,#(_prota + 0x0001)
   A72A 71            [ 7] 1315 	ld	(hl),c
                           1316 ;src/jugador/jugador.c:417: if (prota.y < ORIGEN_MAPA_Y)
   A72B 79            [ 4] 1317 	ld	a,c
   A72C D6 44         [ 7] 1318 	sub	a, #0x44
   A72E 30 02         [12] 1319 	jr	NC,00102$
                           1320 ;src/jugador/jugador.c:418: prota.y = ORIGEN_MAPA_Y;
   A730 36 44         [10] 1321 	ld	(hl),#0x44
   A732                    1322 00102$:
                           1323 ;src/jugador/jugador.c:419: if (++prota.salto == PASOS_SALTO)
   A732 3A 64 A1      [13] 1324 	ld	a, (#(_prota + 0x000c) + 0)
   A735 3C            [ 4] 1325 	inc	a
   A736 32 64 A1      [13] 1326 	ld	(#(_prota + 0x000c)),a
   A739 D6 14         [ 7] 1327 	sub	a, #0x14
   A73B C0            [11] 1328 	ret	NZ
                           1329 ;src/jugador/jugador.c:420: cayendo_entrar();
   A73C CD D2 A4      [17] 1330 	call	_cayendo_entrar
   A73F C9            [10] 1331 	ret
                           1332 ;src/jugador/jugador.c:424: void saltando()
                           1333 ;	---------------------------------
                           1334 ; Function saltando
                           1335 ; ---------------------------------
   A740                    1336 _saltando::
                           1337 ;src/jugador/jugador.c:427: if (!cpct_isKeyPressed(Key_CursorUp)) {
   A740 21 00 01      [10] 1338 	ld	hl,#0x0100
   A743 CD 97 90      [17] 1339 	call	_cpct_isKeyPressed
   A746 7D            [ 4] 1340 	ld	a,l
   A747 B7            [ 4] 1341 	or	a, a
                           1342 ;src/jugador/jugador.c:428: cayendo_entrar();
   A748 CA D2 A4      [10] 1343 	jp	Z,_cayendo_entrar
                           1344 ;src/jugador/jugador.c:431: u8 k = compruebaTeclas(keys, 2);
   A74B 3E 02         [ 7] 1345 	ld	a,#0x02
   A74D F5            [11] 1346 	push	af
   A74E 33            [ 6] 1347 	inc	sp
   A74F 21 7F A7      [10] 1348 	ld	hl,#_saltando_keys_2_160
   A752 E5            [11] 1349 	push	hl
   A753 CD 2D A6      [17] 1350 	call	_compruebaTeclas
   A756 F1            [10] 1351 	pop	af
   A757 33            [ 6] 1352 	inc	sp
   A758 5D            [ 4] 1353 	ld	e,l
                           1354 ;src/jugador/jugador.c:432: switch(k) {
   A759 3E 02         [ 7] 1355 	ld	a,#0x02
   A75B 93            [ 4] 1356 	sub	a, e
   A75C 38 18         [12] 1357 	jr	C,00104$
   A75E 16 00         [ 7] 1358 	ld	d,#0x00
   A760 21 66 A7      [10] 1359 	ld	hl,#00118$
   A763 19            [11] 1360 	add	hl,de
   A764 19            [11] 1361 	add	hl,de
                           1362 ;src/jugador/jugador.c:433: case 0: break;
                           1363 ;src/jugador/jugador.c:434: case 1: moverDer2();   break;
   A765 E9            [ 4] 1364 	jp	(hl)
   A766                    1365 00118$:
   A766 18 0E         [12] 1366 	jr	00104$
   A768 18 04         [12] 1367 	jr	00102$
   A76A 18 07         [12] 1368 	jr	00103$
   A76C 18 08         [12] 1369 	jr	00104$
   A76E                    1370 00102$:
   A76E CD 56 A9      [17] 1371 	call	_moverDer2
   A771 18 03         [12] 1372 	jr	00104$
                           1373 ;src/jugador/jugador.c:435: case 2: moverIzq2(); break;
   A773                    1374 00103$:
   A773 CD 35 A9      [17] 1375 	call	_moverIzq2
                           1376 ;src/jugador/jugador.c:436: }
   A776                    1377 00104$:
                           1378 ;src/jugador/jugador.c:437: ascender();
   A776 CD 10 A7      [17] 1379 	call	_ascender
                           1380 ;src/jugador/jugador.c:438: prota.mover = SI;
   A779 21 5E A1      [10] 1381 	ld	hl,#(_prota + 0x0006)
   A77C 36 01         [10] 1382 	ld	(hl),#0x01
   A77E C9            [10] 1383 	ret
   A77F                    1384 _saltando_keys_2_160:
   A77F 00 02              1385 	.dw #0x0200
   A781 01 01              1386 	.dw #0x0101
                           1387 ;src/jugador/jugador.c:443: void saltar_ani()
                           1388 ;	---------------------------------
                           1389 ; Function saltar_ani
                           1390 ; ---------------------------------
   A783                    1391 _saltar_ani::
                           1392 ;src/jugador/jugador.c:445: while(++prota.nframe == 4*4)
   A783                    1393 00103$:
   A783 01 62 A1      [10] 1394 	ld	bc,#_prota + 10
   A786 0A            [ 7] 1395 	ld	a,(bc)
   A787 3C            [ 4] 1396 	inc	a
   A788 02            [ 7] 1397 	ld	(bc),a
   A789 D6 10         [ 7] 1398 	sub	a, #0x10
   A78B C0            [11] 1399 	ret	NZ
                           1400 ;src/jugador/jugador.c:447: prota.nframe = 0;
   A78C AF            [ 4] 1401 	xor	a, a
   A78D 02            [ 7] 1402 	ld	(bc),a
                           1403 ;src/jugador/jugador.c:449: if(prota.frame==&g_frames[10])
   A78E ED 4B 5F A1   [20] 1404 	ld	bc, (#_prota + 7)
   A792 79            [ 4] 1405 	ld	a,c
   A793 D6 C1         [ 7] 1406 	sub	a, #<((_g_frames + 0x001e))
   A795 20 EC         [12] 1407 	jr	NZ,00103$
   A797 78            [ 4] 1408 	ld	a,b
   A798 D6 A1         [ 7] 1409 	sub	a, #>((_g_frames + 0x001e))
   A79A 20 E7         [12] 1410 	jr	NZ,00103$
                           1411 ;src/jugador/jugador.c:451: prota.estado=ST_sal_salto;
   A79C 21 63 A1      [10] 1412 	ld	hl,#(_prota + 0x000b)
   A79F 36 06         [10] 1413 	ld	(hl),#0x06
   A7A1 18 E0         [12] 1414 	jr	00103$
                           1415 ;src/jugador/jugador.c:458: void finsalto()
                           1416 ;	---------------------------------
                           1417 ; Function finsalto
                           1418 ; ---------------------------------
   A7A3                    1419 _finsalto::
                           1420 ;src/jugador/jugador.c:460: if (!cpct_isKeyPressed(Key_CursorUp)) {
   A7A3 21 00 01      [10] 1421 	ld	hl,#0x0100
   A7A6 CD 97 90      [17] 1422 	call	_cpct_isKeyPressed
   A7A9 7D            [ 4] 1423 	ld	a,l
   A7AA B7            [ 4] 1424 	or	a, a
                           1425 ;src/jugador/jugador.c:461: cayendo_entrar();
   A7AB CA D2 A4      [10] 1426 	jp	Z,_cayendo_entrar
                           1427 ;src/jugador/jugador.c:464: u8 k = compruebaTeclas(keys, 2);
   A7AE 3E 02         [ 7] 1428 	ld	a,#0x02
   A7B0 F5            [11] 1429 	push	af
   A7B1 33            [ 6] 1430 	inc	sp
   A7B2 21 E2 A7      [10] 1431 	ld	hl,#_finsalto_keys_2_167
   A7B5 E5            [11] 1432 	push	hl
   A7B6 CD 2D A6      [17] 1433 	call	_compruebaTeclas
   A7B9 F1            [10] 1434 	pop	af
   A7BA 33            [ 6] 1435 	inc	sp
   A7BB 5D            [ 4] 1436 	ld	e,l
                           1437 ;src/jugador/jugador.c:465: switch(k) {
   A7BC 3E 02         [ 7] 1438 	ld	a,#0x02
   A7BE 93            [ 4] 1439 	sub	a, e
   A7BF 38 18         [12] 1440 	jr	C,00104$
   A7C1 16 00         [ 7] 1441 	ld	d,#0x00
   A7C3 21 C9 A7      [10] 1442 	ld	hl,#00118$
   A7C6 19            [11] 1443 	add	hl,de
   A7C7 19            [11] 1444 	add	hl,de
                           1445 ;src/jugador/jugador.c:466: case 0: break;
                           1446 ;src/jugador/jugador.c:467: case 1: moverDerecha();   break;
   A7C8 E9            [ 4] 1447 	jp	(hl)
   A7C9                    1448 00118$:
   A7C9 18 0E         [12] 1449 	jr	00104$
   A7CB 18 04         [12] 1450 	jr	00102$
   A7CD 18 07         [12] 1451 	jr	00103$
   A7CF 18 08         [12] 1452 	jr	00104$
   A7D1                    1453 00102$:
   A7D1 CD 92 A8      [17] 1454 	call	_moverDerecha
   A7D4 18 03         [12] 1455 	jr	00104$
                           1456 ;src/jugador/jugador.c:468: case 2: moverIzquierda(); break;
   A7D6                    1457 00103$:
   A7D6 CD FF A7      [17] 1458 	call	_moverIzquierda
                           1459 ;src/jugador/jugador.c:469: }
   A7D9                    1460 00104$:
                           1461 ;src/jugador/jugador.c:470: saltando();
   A7D9 CD 40 A7      [17] 1462 	call	_saltando
                           1463 ;src/jugador/jugador.c:471: prota.mover = SI;
   A7DC 21 5E A1      [10] 1464 	ld	hl,#(_prota + 0x0006)
   A7DF 36 01         [10] 1465 	ld	(hl),#0x01
   A7E1 C9            [10] 1466 	ret
   A7E2                    1467 _finsalto_keys_2_167:
   A7E2 00 02              1468 	.dw #0x0200
   A7E4 01 01              1469 	.dw #0x0101
                           1470 ;src/jugador/jugador.c:476: void andar_ani(u8 direccion)
                           1471 ;	---------------------------------
                           1472 ; Function andar_ani
                           1473 ; ---------------------------------
   A7E6                    1474 _andar_ani::
                           1475 ;src/jugador/jugador.c:478: prota.mira  = direccion;
   A7E6 21 61 A1      [10] 1476 	ld	hl,#(_prota + 0x0009)
   A7E9 FD 21 02 00   [14] 1477 	ld	iy,#2
   A7ED FD 39         [15] 1478 	add	iy,sp
   A7EF FD 7E 00      [19] 1479 	ld	a,0 (iy)
   A7F2 77            [ 7] 1480 	ld	(hl),a
                           1481 ;src/jugador/jugador.c:479: if(++prota.nframe == 5*4)
   A7F3 01 62 A1      [10] 1482 	ld	bc,#_prota + 10
   A7F6 0A            [ 7] 1483 	ld	a,(bc)
   A7F7 3C            [ 4] 1484 	inc	a
   A7F8 02            [ 7] 1485 	ld	(bc),a
   A7F9 D6 14         [ 7] 1486 	sub	a, #0x14
   A7FB C0            [11] 1487 	ret	NZ
                           1488 ;src/jugador/jugador.c:480: prota.nframe = 0;
   A7FC AF            [ 4] 1489 	xor	a, a
   A7FD 02            [ 7] 1490 	ld	(bc),a
   A7FE C9            [10] 1491 	ret
                           1492 ;src/jugador/jugador.c:486: void moverIzquierda()
                           1493 ;	---------------------------------
                           1494 ; Function moverIzquierda
                           1495 ; ---------------------------------
   A7FF                    1496 _moverIzquierda::
   A7FF DD E5         [15] 1497 	push	ix
   A801 DD 21 00 00   [14] 1498 	ld	ix,#0
   A805 DD 39         [15] 1499 	add	ix,sp
   A807 F5            [11] 1500 	push	af
   A808 F5            [11] 1501 	push	af
   A809 3B            [ 6] 1502 	dec	sp
                           1503 ;src/jugador/jugador.c:488: u8 x = get_BX() + G_PERSONAJE_00_W+2;
   A80A CD 56 80      [17] 1504 	call	_get_BX
   A80D 7D            [ 4] 1505 	ld	a,l
   A80E C6 12         [ 7] 1506 	add	a, #0x12
   A810 DD 77 FD      [19] 1507 	ld	-3 (ix),a
                           1508 ;src/jugador/jugador.c:489: u8 j= alive();
   A813 CD 06 83      [17] 1509 	call	_alive
   A816 DD 75 FC      [19] 1510 	ld	-4 (ix),l
                           1511 ;src/jugador/jugador.c:490: u8 y =get_BY();
   A819 CD 5B 80      [17] 1512 	call	_get_BY
   A81C DD 75 FB      [19] 1513 	ld	-5 (ix),l
                           1514 ;src/jugador/jugador.c:492: if(prota.x > 0)
   A81F 01 58 A1      [10] 1515 	ld	bc,#_prota+0
   A822 0A            [ 7] 1516 	ld	a,(bc)
   A823 5F            [ 4] 1517 	ld	e,a
   A824 B7            [ 4] 1518 	or	a, a
   A825 28 55         [12] 1519 	jr	Z,00112$
                           1520 ;src/jugador/jugador.c:494: if(((prota.x>x || prota.x<x) && (prota.x > x || prota.x < x-G_PERSONAJE_00_W+3)) || prota.y<132|| y==0||j==1){
   A827 DD 7E FD      [19] 1521 	ld	a,-3 (ix)
   A82A 93            [ 4] 1522 	sub	a, e
   A82B 3E 00         [ 7] 1523 	ld	a,#0x00
   A82D 17            [ 4] 1524 	rla
   A82E 57            [ 4] 1525 	ld	d,a
   A82F B7            [ 4] 1526 	or	a, a
   A830 20 06         [12] 1527 	jr	NZ,00105$
   A832 7B            [ 4] 1528 	ld	a,e
   A833 DD 96 FD      [19] 1529 	sub	a, -3 (ix)
   A836 30 26         [12] 1530 	jr	NC,00106$
   A838                    1531 00105$:
   A838 7A            [ 4] 1532 	ld	a,d
   A839 B7            [ 4] 1533 	or	a, a
   A83A 20 35         [12] 1534 	jr	NZ,00101$
   A83C DD 6E FD      [19] 1535 	ld	l,-3 (ix)
   A83F 26 00         [ 7] 1536 	ld	h,#0x00
   A841 D5            [11] 1537 	push	de
   A842 11 F3 FF      [10] 1538 	ld	de,#0xFFF3
   A845 19            [11] 1539 	add	hl, de
   A846 D1            [10] 1540 	pop	de
   A847 DD 73 FE      [19] 1541 	ld	-2 (ix),e
   A84A DD 36 FF 00   [19] 1542 	ld	-1 (ix),#0x00
   A84E DD 7E FE      [19] 1543 	ld	a,-2 (ix)
   A851 95            [ 4] 1544 	sub	a, l
   A852 DD 7E FF      [19] 1545 	ld	a,-1 (ix)
   A855 9C            [ 4] 1546 	sbc	a, h
   A856 E2 5B A8      [10] 1547 	jp	PO, 00140$
   A859 EE 80         [ 7] 1548 	xor	a, #0x80
   A85B                    1549 00140$:
   A85B FA 71 A8      [10] 1550 	jp	M,00101$
   A85E                    1551 00106$:
   A85E 3A 59 A1      [13] 1552 	ld	a,(#_prota+1)
   A861 D6 84         [ 7] 1553 	sub	a, #0x84
   A863 38 0C         [12] 1554 	jr	C,00101$
   A865 DD 7E FB      [19] 1555 	ld	a,-5 (ix)
   A868 B7            [ 4] 1556 	or	a, a
   A869 28 06         [12] 1557 	jr	Z,00101$
   A86B DD 7E FC      [19] 1558 	ld	a,-4 (ix)
   A86E 3D            [ 4] 1559 	dec	a
   A86F 20 1C         [12] 1560 	jr	NZ,00114$
   A871                    1561 00101$:
                           1562 ;src/jugador/jugador.c:495: prota.x-=2;
   A871 1D            [ 4] 1563 	dec	e
   A872 1D            [ 4] 1564 	dec	e
   A873 7B            [ 4] 1565 	ld	a,e
   A874 02            [ 7] 1566 	ld	(bc),a
                           1567 ;src/jugador/jugador.c:496: prota.mira = M_izquierda;
   A875 21 61 A1      [10] 1568 	ld	hl,#(_prota + 0x0009)
   A878 36 01         [10] 1569 	ld	(hl),#0x01
   A87A 18 11         [12] 1570 	jr	00114$
   A87C                    1571 00112$:
                           1572 ;src/jugador/jugador.c:500: if(map!=g_map1)
   A87C 3A 54 A1      [13] 1573 	ld	a,(#_map + 0)
   A87F D6 F0         [ 7] 1574 	sub	a, #<(_g_map1)
   A881 20 07         [12] 1575 	jr	NZ,00143$
   A883 3A 55 A1      [13] 1576 	ld	a,(#_map + 1)
   A886 D6 5E         [ 7] 1577 	sub	a, #>(_g_map1)
   A888 28 03         [12] 1578 	jr	Z,00114$
   A88A                    1579 00143$:
                           1580 ;src/jugador/jugador.c:502: retrocederMapa();
   A88A CD 91 A3      [17] 1581 	call	_retrocederMapa
   A88D                    1582 00114$:
   A88D DD F9         [10] 1583 	ld	sp, ix
   A88F DD E1         [14] 1584 	pop	ix
   A891 C9            [10] 1585 	ret
                           1586 ;src/jugador/jugador.c:509: void moverDerecha()
                           1587 ;	---------------------------------
                           1588 ; Function moverDerecha
                           1589 ; ---------------------------------
   A892                    1590 _moverDerecha::
   A892 DD E5         [15] 1591 	push	ix
   A894 DD 21 00 00   [14] 1592 	ld	ix,#0
   A898 DD 39         [15] 1593 	add	ix,sp
   A89A 21 FA FF      [10] 1594 	ld	hl,#-6
   A89D 39            [11] 1595 	add	hl,sp
   A89E F9            [ 6] 1596 	ld	sp,hl
                           1597 ;src/jugador/jugador.c:511: u8 x =get_BX() - 6;
   A89F CD 56 80      [17] 1598 	call	_get_BX
   A8A2 7D            [ 4] 1599 	ld	a,l
   A8A3 C6 FA         [ 7] 1600 	add	a,#0xFA
   A8A5 DD 77 FC      [19] 1601 	ld	-4 (ix),a
                           1602 ;src/jugador/jugador.c:512: u8 j= alive();
   A8A8 CD 06 83      [17] 1603 	call	_alive
   A8AB DD 75 FA      [19] 1604 	ld	-6 (ix),l
                           1605 ;src/jugador/jugador.c:513: u8 y =get_BY();
   A8AE CD 5B 80      [17] 1606 	call	_get_BY
   A8B1 DD 75 FB      [19] 1607 	ld	-5 (ix),l
                           1608 ;src/jugador/jugador.c:515: if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
   A8B4 3A 58 A1      [13] 1609 	ld	a,(#_prota + 0)
   A8B7 DD 77 FF      [19] 1610 	ld	-1 (ix), a
   A8BA DD 77 FD      [19] 1611 	ld	-3 (ix),a
   A8BD DD 36 FE 00   [19] 1612 	ld	-2 (ix),#0x00
   A8C1 DD 7E FD      [19] 1613 	ld	a,-3 (ix)
   A8C4 C6 10         [ 7] 1614 	add	a, #0x10
   A8C6 4F            [ 4] 1615 	ld	c,a
   A8C7 DD 7E FE      [19] 1616 	ld	a,-2 (ix)
   A8CA CE 00         [ 7] 1617 	adc	a, #0x00
   A8CC 47            [ 4] 1618 	ld	b,a
   A8CD 79            [ 4] 1619 	ld	a,c
   A8CE D6 50         [ 7] 1620 	sub	a, #0x50
   A8D0 78            [ 4] 1621 	ld	a,b
   A8D1 17            [ 4] 1622 	rla
   A8D2 3F            [ 4] 1623 	ccf
   A8D3 1F            [ 4] 1624 	rra
   A8D4 DE 80         [ 7] 1625 	sbc	a, #0x80
   A8D6 30 55         [12] 1626 	jr	NC,00110$
                           1627 ;src/jugador/jugador.c:517: if(((prota.x<x || prota.x>x ) && (prota.x<x || prota.x > x + G_PERSONAJE_00_W ))|| prota.y<132 || y==0||j==1){
   A8D8 DD 7E FF      [19] 1628 	ld	a,-1 (ix)
   A8DB DD 96 FC      [19] 1629 	sub	a, -4 (ix)
   A8DE 3E 00         [ 7] 1630 	ld	a,#0x00
   A8E0 17            [ 4] 1631 	rla
   A8E1 4F            [ 4] 1632 	ld	c,a
   A8E2 B7            [ 4] 1633 	or	a, a
   A8E3 20 08         [12] 1634 	jr	NZ,00105$
   A8E5 DD 7E FC      [19] 1635 	ld	a,-4 (ix)
   A8E8 DD 96 FF      [19] 1636 	sub	a, -1 (ix)
   A8EB 30 1D         [12] 1637 	jr	NC,00106$
   A8ED                    1638 00105$:
   A8ED 79            [ 4] 1639 	ld	a,c
   A8EE B7            [ 4] 1640 	or	a, a
   A8EF 20 2C         [12] 1641 	jr	NZ,00101$
   A8F1 DD 4E FC      [19] 1642 	ld	c,-4 (ix)
   A8F4 06 00         [ 7] 1643 	ld	b,#0x00
   A8F6 21 10 00      [10] 1644 	ld	hl,#0x0010
   A8F9 09            [11] 1645 	add	hl,bc
   A8FA 7D            [ 4] 1646 	ld	a,l
   A8FB DD 96 FD      [19] 1647 	sub	a, -3 (ix)
   A8FE 7C            [ 4] 1648 	ld	a,h
   A8FF DD 9E FE      [19] 1649 	sbc	a, -2 (ix)
   A902 E2 07 A9      [10] 1650 	jp	PO, 00134$
   A905 EE 80         [ 7] 1651 	xor	a, #0x80
   A907                    1652 00134$:
   A907 FA 1D A9      [10] 1653 	jp	M,00101$
   A90A                    1654 00106$:
   A90A 3A 59 A1      [13] 1655 	ld	a,(#_prota+1)
   A90D D6 84         [ 7] 1656 	sub	a, #0x84
   A90F 38 0C         [12] 1657 	jr	C,00101$
   A911 DD 7E FB      [19] 1658 	ld	a,-5 (ix)
   A914 B7            [ 4] 1659 	or	a, a
   A915 28 06         [12] 1660 	jr	Z,00101$
   A917 DD 7E FA      [19] 1661 	ld	a,-6 (ix)
   A91A 3D            [ 4] 1662 	dec	a
   A91B 20 13         [12] 1663 	jr	NZ,00112$
   A91D                    1664 00101$:
                           1665 ;src/jugador/jugador.c:518: prota.x+=2;
   A91D DD 4E FF      [19] 1666 	ld	c,-1 (ix)
   A920 0C            [ 4] 1667 	inc	c
   A921 0C            [ 4] 1668 	inc	c
   A922 21 58 A1      [10] 1669 	ld	hl,#_prota
   A925 71            [ 7] 1670 	ld	(hl),c
                           1671 ;src/jugador/jugador.c:519: prota.mira = M_derecha;
   A926 21 61 A1      [10] 1672 	ld	hl,#(_prota + 0x0009)
   A929 36 00         [10] 1673 	ld	(hl),#0x00
   A92B 18 03         [12] 1674 	jr	00112$
   A92D                    1675 00110$:
                           1676 ;src/jugador/jugador.c:523: avanzarMapa();
   A92D CD 4C A3      [17] 1677 	call	_avanzarMapa
   A930                    1678 00112$:
   A930 DD F9         [10] 1679 	ld	sp, ix
   A932 DD E1         [14] 1680 	pop	ix
   A934 C9            [10] 1681 	ret
                           1682 ;src/jugador/jugador.c:527: void moverIzq2()
                           1683 ;	---------------------------------
                           1684 ; Function moverIzq2
                           1685 ; ---------------------------------
   A935                    1686 _moverIzq2::
                           1687 ;src/jugador/jugador.c:529: if(prota.x > 0)
   A935 01 58 A1      [10] 1688 	ld	bc,#_prota+0
   A938 0A            [ 7] 1689 	ld	a,(bc)
   A939 B7            [ 4] 1690 	or	a, a
   A93A 28 09         [12] 1691 	jr	Z,00104$
                           1692 ;src/jugador/jugador.c:531: prota.x--;
   A93C C6 FF         [ 7] 1693 	add	a,#0xFF
   A93E 02            [ 7] 1694 	ld	(bc),a
                           1695 ;src/jugador/jugador.c:532: prota.mira = M_izquierda;
   A93F 21 61 A1      [10] 1696 	ld	hl,#(_prota + 0x0009)
   A942 36 01         [10] 1697 	ld	(hl),#0x01
   A944 C9            [10] 1698 	ret
   A945                    1699 00104$:
                           1700 ;src/jugador/jugador.c:536: if(map!=g_map1)
   A945 3A 54 A1      [13] 1701 	ld	a,(#_map + 0)
   A948 D6 F0         [ 7] 1702 	sub	a, #<(_g_map1)
   A94A C2 91 A3      [10] 1703 	jp	NZ,_retrocederMapa
   A94D 3A 55 A1      [13] 1704 	ld	a,(#_map + 1)
   A950 D6 5E         [ 7] 1705 	sub	a, #>(_g_map1)
   A952 C8            [11] 1706 	ret	Z
                           1707 ;src/jugador/jugador.c:538: retrocederMapa();
   A953 C3 91 A3      [10] 1708 	jp  _retrocederMapa
                           1709 ;src/jugador/jugador.c:543: void moverDer2()
                           1710 ;	---------------------------------
                           1711 ; Function moverDer2
                           1712 ; ---------------------------------
   A956                    1713 _moverDer2::
                           1714 ;src/jugador/jugador.c:546: if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
   A956 21 58 A1      [10] 1715 	ld	hl, #_prota + 0
   A959 4E            [ 7] 1716 	ld	c,(hl)
   A95A 59            [ 4] 1717 	ld	e,c
   A95B 16 00         [ 7] 1718 	ld	d,#0x00
   A95D 21 10 00      [10] 1719 	ld	hl,#0x0010
   A960 19            [11] 1720 	add	hl,de
   A961 11 50 80      [10] 1721 	ld	de, #0x8050
   A964 29            [11] 1722 	add	hl, hl
   A965 3F            [ 4] 1723 	ccf
   A966 CB 1C         [ 8] 1724 	rr	h
   A968 CB 1D         [ 8] 1725 	rr	l
   A96A ED 52         [15] 1726 	sbc	hl, de
   A96C D2 4C A3      [10] 1727 	jp	NC,_avanzarMapa
                           1728 ;src/jugador/jugador.c:548: prota.x++;
   A96F 0C            [ 4] 1729 	inc	c
   A970 21 58 A1      [10] 1730 	ld	hl,#_prota
   A973 71            [ 7] 1731 	ld	(hl),c
                           1732 ;src/jugador/jugador.c:549: prota.mira = M_derecha;
   A974 21 61 A1      [10] 1733 	ld	hl,#(_prota + 0x0009)
   A977 36 00         [10] 1734 	ld	(hl),#0x00
   A979 C9            [10] 1735 	ret
                           1736 ;src/jugador/jugador.c:552: avanzarMapa();
   A97A C3 4C A3      [10] 1737 	jp  _avanzarMapa
                           1738 ;src/jugador/jugador.c:557: void ante_salto()
                           1739 ;	---------------------------------
                           1740 ; Function ante_salto
                           1741 ; ---------------------------------
   A97D                    1742 _ante_salto::
                           1743 ;src/jugador/jugador.c:559: while (++prota.nframe == 4*4)
   A97D                    1744 00101$:
   A97D 01 62 A1      [10] 1745 	ld	bc,#_prota+10
   A980 0A            [ 7] 1746 	ld	a,(bc)
   A981 3C            [ 4] 1747 	inc	a
   A982 02            [ 7] 1748 	ld	(bc),a
   A983 D6 10         [ 7] 1749 	sub	a, #0x10
   A985 C0            [11] 1750 	ret	NZ
                           1751 ;src/jugador/jugador.c:560: ini_salto();
   A986 CD 82 A4      [17] 1752 	call	_ini_salto
   A989 18 F2         [12] 1753 	jr	00101$
                           1754 ;src/jugador/jugador.c:565: void saltar()
                           1755 ;	---------------------------------
                           1756 ; Function saltar
                           1757 ; ---------------------------------
   A98B                    1758 _saltar::
                           1759 ;src/jugador/jugador.c:568: u8 k = compruebaTeclas(keys, 1);
   A98B 3E 01         [ 7] 1760 	ld	a,#0x01
   A98D F5            [11] 1761 	push	af
   A98E 33            [ 6] 1762 	inc	sp
   A98F 21 AF A9      [10] 1763 	ld	hl,#_saltar_keys_1_188
   A992 E5            [11] 1764 	push	hl
   A993 CD 2D A6      [17] 1765 	call	_compruebaTeclas
   A996 F1            [10] 1766 	pop	af
   A997 33            [ 6] 1767 	inc	sp
                           1768 ;src/jugador/jugador.c:569: switch(k) {
   A998 7D            [ 4] 1769 	ld	a,l
   A999 B7            [ 4] 1770 	or	a, a
   A99A 28 05         [12] 1771 	jr	Z,00101$
   A99C 2D            [ 4] 1772 	dec	l
   A99D 28 07         [12] 1773 	jr	Z,00102$
   A99F 18 08         [12] 1774 	jr	00103$
                           1775 ;src/jugador/jugador.c:570: case 0: ini_quieto(); break; 
   A9A1                    1776 00101$:
   A9A1 CD AF A4      [17] 1777 	call	_ini_quieto
   A9A4 18 03         [12] 1778 	jr	00103$
                           1779 ;src/jugador/jugador.c:571: case 1: ante_salto(); break;
   A9A6                    1780 00102$:
   A9A6 CD 7D A9      [17] 1781 	call	_ante_salto
                           1782 ;src/jugador/jugador.c:572: }
   A9A9                    1783 00103$:
                           1784 ;src/jugador/jugador.c:573: prota.mover = SI;
   A9A9 21 5E A1      [10] 1785 	ld	hl,#(_prota + 0x0006)
   A9AC 36 01         [10] 1786 	ld	(hl),#0x01
   A9AE C9            [10] 1787 	ret
   A9AF                    1788 _saltar_keys_1_188:
   A9AF 00 01              1789 	.dw #0x0100
                           1790 ;src/jugador/jugador.c:579: void andar()
                           1791 ;	---------------------------------
                           1792 ; Function andar
                           1793 ; ---------------------------------
   A9B1                    1794 _andar::
                           1795 ;src/jugador/jugador.c:582: u8 k = compruebaTeclas(keys, 3);
   A9B1 3E 03         [ 7] 1796 	ld	a,#0x03
   A9B3 F5            [11] 1797 	push	af
   A9B4 33            [ 6] 1798 	inc	sp
   A9B5 21 03 AA      [10] 1799 	ld	hl,#_andar_keys_1_190
   A9B8 E5            [11] 1800 	push	hl
   A9B9 CD 2D A6      [17] 1801 	call	_compruebaTeclas
   A9BC F1            [10] 1802 	pop	af
   A9BD 33            [ 6] 1803 	inc	sp
   A9BE 5D            [ 4] 1804 	ld	e,l
                           1805 ;src/jugador/jugador.c:583: switch(k) {
   A9BF 3E 03         [ 7] 1806 	ld	a,#0x03
   A9C1 93            [ 4] 1807 	sub	a, e
   A9C2 38 31         [12] 1808 	jr	C,00105$
   A9C4 16 00         [ 7] 1809 	ld	d,#0x00
   A9C6 21 CC A9      [10] 1810 	ld	hl,#00118$
   A9C9 19            [11] 1811 	add	hl,de
   A9CA 19            [11] 1812 	add	hl,de
                           1813 ;src/jugador/jugador.c:584: case 0:  ini_quieto();   break;
   A9CB E9            [ 4] 1814 	jp	(hl)
   A9CC                    1815 00118$:
   A9CC 18 06         [12] 1816 	jr	00101$
   A9CE 18 09         [12] 1817 	jr	00102$
   A9D0 18 0C         [12] 1818 	jr	00103$
   A9D2 18 16         [12] 1819 	jr	00104$
   A9D4                    1820 00101$:
   A9D4 CD AF A4      [17] 1821 	call	_ini_quieto
   A9D7 18 1C         [12] 1822 	jr	00105$
                           1823 ;src/jugador/jugador.c:585: case 1:  saltar(); break;
   A9D9                    1824 00102$:
   A9D9 CD 8B A9      [17] 1825 	call	_saltar
   A9DC 18 17         [12] 1826 	jr	00105$
                           1827 ;src/jugador/jugador.c:586: case 2: moverDerecha();   andar_ani(M_derecha);  break;
   A9DE                    1828 00103$:
   A9DE CD 92 A8      [17] 1829 	call	_moverDerecha
   A9E1 AF            [ 4] 1830 	xor	a, a
   A9E2 F5            [11] 1831 	push	af
   A9E3 33            [ 6] 1832 	inc	sp
   A9E4 CD E6 A7      [17] 1833 	call	_andar_ani
   A9E7 33            [ 6] 1834 	inc	sp
   A9E8 18 0B         [12] 1835 	jr	00105$
                           1836 ;src/jugador/jugador.c:587: case 3: moverIzquierda(); andar_ani(M_izquierda); break;
   A9EA                    1837 00104$:
   A9EA CD FF A7      [17] 1838 	call	_moverIzquierda
   A9ED 3E 01         [ 7] 1839 	ld	a,#0x01
   A9EF F5            [11] 1840 	push	af
   A9F0 33            [ 6] 1841 	inc	sp
   A9F1 CD E6 A7      [17] 1842 	call	_andar_ani
   A9F4 33            [ 6] 1843 	inc	sp
                           1844 ;src/jugador/jugador.c:588: }
   A9F5                    1845 00105$:
                           1846 ;src/jugador/jugador.c:589: prota.mover=SI;
   A9F5 21 5E A1      [10] 1847 	ld	hl,#(_prota + 0x0006)
   A9F8 36 01         [10] 1848 	ld	(hl),#0x01
                           1849 ;src/jugador/jugador.c:590: if (!sobreSuelo())
   A9FA CD EA A4      [17] 1850 	call	_sobreSuelo
   A9FD 7D            [ 4] 1851 	ld	a,l
   A9FE B7            [ 4] 1852 	or	a, a
   A9FF C0            [11] 1853 	ret	NZ
                           1854 ;src/jugador/jugador.c:591: cayendo_entrar();
   AA00 C3 D2 A4      [10] 1855 	jp  _cayendo_entrar
   AA03                    1856 _andar_keys_1_190:
   AA03 00 01              1857 	.dw #0x0100
   AA05 00 02              1858 	.dw #0x0200
   AA07 01 01              1859 	.dw #0x0101
                           1860 ;src/jugador/jugador.c:597: void cambiarEstado()
                           1861 ;	---------------------------------
                           1862 ; Function cambiarEstado
                           1863 ; ---------------------------------
   AA09                    1864 _cambiarEstado::
                           1865 ;src/jugador/jugador.c:599: switch(prota.estado) {
   AA09 21 63 A1      [10] 1866 	ld	hl, #(_prota + 0x000b) + 0
   AA0C 5E            [ 7] 1867 	ld	e,(hl)
   AA0D 3E 06         [ 7] 1868 	ld	a,#0x06
   AA0F 93            [ 4] 1869 	sub	a, e
   AA10 D8            [11] 1870 	ret	C
   AA11 16 00         [ 7] 1871 	ld	d,#0x00
   AA13 21 19 AA      [10] 1872 	ld	hl,#00115$
   AA16 19            [11] 1873 	add	hl,de
   AA17 19            [11] 1874 	add	hl,de
                           1875 ;src/jugador/jugador.c:600: case ST_quieto:      estatico();      break;
   AA18 E9            [ 4] 1876 	jp	(hl)
   AA19                    1877 00115$:
   AA19 18 0C         [12] 1878 	jr	00101$
   AA1B 18 0D         [12] 1879 	jr	00102$
   AA1D 18 0E         [12] 1880 	jr	00103$
   AA1F 18 0F         [12] 1881 	jr	00104$
   AA21 18 13         [12] 1882 	jr	00106$
   AA23 18 14         [12] 1883 	jr	00107$
   AA25 18 0C         [12] 1884 	jr	00105$
   AA27                    1885 00101$:
   AA27 C3 D8 A5      [10] 1886 	jp  _estatico
                           1887 ;src/jugador/jugador.c:601: case ST_andando:  andar(); break;
   AA2A                    1888 00102$:
   AA2A C3 B1 A9      [10] 1889 	jp  _andar
                           1890 ;src/jugador/jugador.c:602: case ST_salto:   saltar();   break;
   AA2D                    1891 00103$:
   AA2D C3 8B A9      [10] 1892 	jp  _saltar
                           1893 ;src/jugador/jugador.c:603: case ST_saltando: saltando(); break;
   AA30                    1894 00104$:
   AA30 C3 40 A7      [10] 1895 	jp  _saltando
                           1896 ;src/jugador/jugador.c:604: case ST_sal_salto: finsalto(); break;
   AA33                    1897 00105$:
   AA33 C3 A3 A7      [10] 1898 	jp  _finsalto
                           1899 ;src/jugador/jugador.c:605: case ST_cayendo:     cayendo();     break;
   AA36                    1900 00106$:
   AA36 C3 CB A6      [10] 1901 	jp  _cayendo
                           1902 ;src/jugador/jugador.c:606: case ST_caer: caer(); break;  
   AA39                    1903 00107$:
                           1904 ;src/jugador/jugador.c:607: }
   AA39 C3 CA A4      [10] 1905 	jp  _caer
                           1906 ;src/jugador/jugador.c:610: void imprimeHUD()
                           1907 ;	---------------------------------
                           1908 ; Function imprimeHUD
                           1909 ; ---------------------------------
   AA3C                    1910 _imprimeHUD::
   AA3C DD E5         [15] 1911 	push	ix
   AA3E DD 21 00 00   [14] 1912 	ld	ix,#0
   AA42 DD 39         [15] 1913 	add	ix,sp
   AA44 F5            [11] 1914 	push	af
                           1915 ;src/jugador/jugador.c:613: cpct_drawStringM0 ("Balas:", POS_MUNI, 4, 0);
   AA45 21 00 00      [10] 1916 	ld	hl,#0x0000
   AA48 E5            [11] 1917 	push	hl
   AA49 26 C0         [ 7] 1918 	ld	h, #0xC0
   AA4B E5            [11] 1919 	push	hl
   AA4C CD AA 95      [17] 1920 	call	_cpct_getScreenPtr
   AA4F 4D            [ 4] 1921 	ld	c,l
   AA50 44            [ 4] 1922 	ld	b,h
   AA51 21 04 00      [10] 1923 	ld	hl,#0x0004
   AA54 E5            [11] 1924 	push	hl
   AA55 C5            [11] 1925 	push	bc
   AA56 21 EE AA      [10] 1926 	ld	hl,#___str_2
   AA59 E5            [11] 1927 	push	hl
   AA5A CD 19 91      [17] 1928 	call	_cpct_drawStringM0
   AA5D 21 06 00      [10] 1929 	ld	hl,#6
   AA60 39            [11] 1930 	add	hl,sp
   AA61 F9            [ 6] 1931 	ld	sp,hl
                           1932 ;src/jugador/jugador.c:614: cpct_drawStringM0 ("Vidas:", POS_VIDA, 4, 0);
   AA62 21 00 0A      [10] 1933 	ld	hl,#0x0A00
   AA65 E5            [11] 1934 	push	hl
   AA66 26 C0         [ 7] 1935 	ld	h, #0xC0
   AA68 E5            [11] 1936 	push	hl
   AA69 CD AA 95      [17] 1937 	call	_cpct_getScreenPtr
   AA6C 4D            [ 4] 1938 	ld	c,l
   AA6D 44            [ 4] 1939 	ld	b,h
   AA6E 21 04 00      [10] 1940 	ld	hl,#0x0004
   AA71 E5            [11] 1941 	push	hl
   AA72 C5            [11] 1942 	push	bc
   AA73 21 F5 AA      [10] 1943 	ld	hl,#___str_3
   AA76 E5            [11] 1944 	push	hl
   AA77 CD 19 91      [17] 1945 	call	_cpct_drawStringM0
   AA7A 21 06 00      [10] 1946 	ld	hl,#6
   AA7D 39            [11] 1947 	add	hl,sp
   AA7E F9            [ 6] 1948 	ld	sp,hl
                           1949 ;src/jugador/jugador.c:615: sprintf(str, "%u", cuchillo.municion);
   AA7F 21 70 A1      [10] 1950 	ld	hl,#_cuchillo+9
   AA82 5E            [ 7] 1951 	ld	e,(hl)
   AA83 16 00         [ 7] 1952 	ld	d,#0x00
   AA85 21 00 00      [10] 1953 	ld	hl,#0x0000
   AA88 39            [11] 1954 	add	hl,sp
   AA89 E5            [11] 1955 	push	hl
   AA8A D5            [11] 1956 	push	de
   AA8B 11 FC AA      [10] 1957 	ld	de,#___str_4
   AA8E D5            [11] 1958 	push	de
   AA8F E5            [11] 1959 	push	hl
   AA90 CD 0D 94      [17] 1960 	call	_sprintf
   AA93 21 06 00      [10] 1961 	ld	hl,#6
   AA96 39            [11] 1962 	add	hl,sp
   AA97 F9            [ 6] 1963 	ld	sp,hl
   AA98 21 19 00      [10] 1964 	ld	hl,#0x0019
   AA9B E5            [11] 1965 	push	hl
   AA9C 21 00 C0      [10] 1966 	ld	hl,#0xC000
   AA9F E5            [11] 1967 	push	hl
   AAA0 CD AA 95      [17] 1968 	call	_cpct_getScreenPtr
   AAA3 C1            [10] 1969 	pop	bc
   AAA4 E5            [11] 1970 	push	hl
   AAA5 FD E1         [14] 1971 	pop	iy
   AAA7 59            [ 4] 1972 	ld	e, c
   AAA8 50            [ 4] 1973 	ld	d, b
   AAA9 C5            [11] 1974 	push	bc
   AAAA 21 04 00      [10] 1975 	ld	hl,#0x0004
   AAAD E5            [11] 1976 	push	hl
   AAAE FD E5         [15] 1977 	push	iy
   AAB0 D5            [11] 1978 	push	de
   AAB1 CD 19 91      [17] 1979 	call	_cpct_drawStringM0
   AAB4 21 06 00      [10] 1980 	ld	hl,#6
   AAB7 39            [11] 1981 	add	hl,sp
   AAB8 F9            [ 6] 1982 	ld	sp,hl
   AAB9 C1            [10] 1983 	pop	bc
                           1984 ;src/jugador/jugador.c:617: sprintf(str, "%u", 1);
   AABA 59            [ 4] 1985 	ld	e, c
   AABB 50            [ 4] 1986 	ld	d, b
   AABC C5            [11] 1987 	push	bc
   AABD 21 01 00      [10] 1988 	ld	hl,#0x0001
   AAC0 E5            [11] 1989 	push	hl
   AAC1 21 FC AA      [10] 1990 	ld	hl,#___str_4
   AAC4 E5            [11] 1991 	push	hl
   AAC5 D5            [11] 1992 	push	de
   AAC6 CD 0D 94      [17] 1993 	call	_sprintf
   AAC9 21 06 00      [10] 1994 	ld	hl,#6
   AACC 39            [11] 1995 	add	hl,sp
   AACD F9            [ 6] 1996 	ld	sp,hl
   AACE 21 19 0A      [10] 1997 	ld	hl,#0x0A19
   AAD1 E5            [11] 1998 	push	hl
   AAD2 21 00 C0      [10] 1999 	ld	hl,#0xC000
   AAD5 E5            [11] 2000 	push	hl
   AAD6 CD AA 95      [17] 2001 	call	_cpct_getScreenPtr
   AAD9 EB            [ 4] 2002 	ex	de,hl
   AADA C1            [10] 2003 	pop	bc
   AADB 21 04 00      [10] 2004 	ld	hl,#0x0004
   AADE E5            [11] 2005 	push	hl
   AADF D5            [11] 2006 	push	de
   AAE0 C5            [11] 2007 	push	bc
   AAE1 CD 19 91      [17] 2008 	call	_cpct_drawStringM0
   AAE4 21 06 00      [10] 2009 	ld	hl,#6
   AAE7 39            [11] 2010 	add	hl,sp
   AAE8 F9            [ 6] 2011 	ld	sp,hl
   AAE9 DD F9         [10] 2012 	ld	sp, ix
   AAEB DD E1         [14] 2013 	pop	ix
   AAED C9            [10] 2014 	ret
   AAEE                    2015 ___str_2:
   AAEE 42 61 6C 61 73 3A  2016 	.ascii "Balas:"
   AAF4 00                 2017 	.db 0x00
   AAF5                    2018 ___str_3:
   AAF5 56 69 64 61 73 3A  2019 	.ascii "Vidas:"
   AAFB 00                 2020 	.db 0x00
   AAFC                    2021 ___str_4:
   AAFC 25 75              2022 	.ascii "%u"
   AAFE 00                 2023 	.db 0x00
                           2024 ;src/jugador/jugador.c:622: void restaVida()
                           2025 ;	---------------------------------
                           2026 ; Function restaVida
                           2027 ; ---------------------------------
   AAFF                    2028 _restaVida::
                           2029 ;src/jugador/jugador.c:625: prota.vida--;
   AAFF 01 65 A1      [10] 2030 	ld	bc,#_prota+13
   AB02 0A            [ 7] 2031 	ld	a,(bc)
   AB03 C6 FF         [ 7] 2032 	add	a,#0xFF
   AB05 02            [ 7] 2033 	ld	(bc),a
   AB06 C9            [10] 2034 	ret
                           2035 ;src/jugador/jugador.c:631: void inicializar_cuchillo(u8* mapacuchi)
                           2036 ;	---------------------------------
                           2037 ; Function inicializar_cuchillo
                           2038 ; ---------------------------------
   AB07                    2039 _inicializar_cuchillo::
   AB07 DD E5         [15] 2040 	push	ix
   AB09 DD 21 00 00   [14] 2041 	ld	ix,#0
   AB0D DD 39         [15] 2042 	add	ix,sp
                           2043 ;src/jugador/jugador.c:633: cuchillo.municion=10;
   AB0F 21 70 A1      [10] 2044 	ld	hl,#(_cuchillo + 0x0009)
   AB12 36 0A         [10] 2045 	ld	(hl),#0x0A
                           2046 ;src/jugador/jugador.c:634: cuchillo.x =prota.x;
   AB14 3A 58 A1      [13] 2047 	ld	a, (#_prota + 0)
   AB17 32 67 A1      [13] 2048 	ld	(#_cuchillo),a
                           2049 ;src/jugador/jugador.c:635: cuchillo.y =prota.y;
   AB1A 01 68 A1      [10] 2050 	ld	bc,#_cuchillo + 1
   AB1D 3A 59 A1      [13] 2051 	ld	a, (#(_prota + 0x0001) + 0)
   AB20 02            [ 7] 2052 	ld	(bc),a
                           2053 ;src/jugador/jugador.c:636: cuchillo.sprite = g_cuchillo;
   AB21 21 34 8A      [10] 2054 	ld	hl,#_g_cuchillo
   AB24 22 6B A1      [16] 2055 	ld	((_cuchillo + 0x0004)), hl
                           2056 ;src/jugador/jugador.c:637: cuchillo.mover = NO;
   AB27 21 6D A1      [10] 2057 	ld	hl,#(_cuchillo + 0x0006)
   AB2A 36 00         [10] 2058 	ld	(hl),#0x00
                           2059 ;src/jugador/jugador.c:638: cuchillo.lanzandoDerecha = NO;
   AB2C 21 6E A1      [10] 2060 	ld	hl,#(_cuchillo + 0x0007)
   AB2F 36 00         [10] 2061 	ld	(hl),#0x00
                           2062 ;src/jugador/jugador.c:639: cuchillo.mira = M_derecha;
   AB31 21 6F A1      [10] 2063 	ld	hl,#(_cuchillo + 0x0008)
   AB34 36 00         [10] 2064 	ld	(hl),#0x00
                           2065 ;src/jugador/jugador.c:640: mapaCU=mapacuchi;
   AB36 DD 6E 04      [19] 2066 	ld	l,4 (ix)
   AB39 DD 66 05      [19] 2067 	ld	h,5 (ix)
   AB3C 22 74 A1      [16] 2068 	ld	(_mapaCU),hl
   AB3F DD E1         [14] 2069 	pop	ix
   AB41 C9            [10] 2070 	ret
                           2071 ;src/jugador/jugador.c:647: void inicializar_jugador()
                           2072 ;	---------------------------------
                           2073 ; Function inicializar_jugador
                           2074 ; ---------------------------------
   AB42                    2075 _inicializar_jugador::
                           2076 ;src/jugador/jugador.c:649: prota.x = prota.xp = 20;
   AB42 21 5A A1      [10] 2077 	ld	hl,#(_prota + 0x0002)
   AB45 36 14         [10] 2078 	ld	(hl),#0x14
   AB47 21 58 A1      [10] 2079 	ld	hl,#_prota
   AB4A 36 14         [10] 2080 	ld	(hl),#0x14
                           2081 ;src/jugador/jugador.c:650: prota.y = prota.yp = 156;
   AB4C 21 5B A1      [10] 2082 	ld	hl,#(_prota + 0x0003)
   AB4F 36 9C         [10] 2083 	ld	(hl),#0x9C
   AB51 21 59 A1      [10] 2084 	ld	hl,#(_prota + 0x0001)
   AB54 36 9C         [10] 2085 	ld	(hl),#0x9C
                           2086 ;src/jugador/jugador.c:651: prota.mover=NO;
   AB56 21 5E A1      [10] 2087 	ld	hl,#(_prota + 0x0006)
   AB59 36 00         [10] 2088 	ld	(hl),#0x00
                           2089 ;src/jugador/jugador.c:652: prota.nframe=0;
   AB5B 21 62 A1      [10] 2090 	ld	hl,#(_prota + 0x000a)
   AB5E 36 00         [10] 2091 	ld	(hl),#0x00
                           2092 ;src/jugador/jugador.c:653: prota.estado=ST_quieto;
   AB60 21 63 A1      [10] 2093 	ld	hl,#(_prota + 0x000b)
   AB63 36 00         [10] 2094 	ld	(hl),#0x00
                           2095 ;src/jugador/jugador.c:654: prota.mira=M_derecha;
   AB65 21 61 A1      [10] 2096 	ld	hl,#(_prota + 0x0009)
   AB68 36 00         [10] 2097 	ld	(hl),#0x00
                           2098 ;src/jugador/jugador.c:655: prota.frame  = &g_frames[0];
   AB6A 21 A3 A1      [10] 2099 	ld	hl,#_g_frames
   AB6D 22 5F A1      [16] 2100 	ld	((_prota + 0x0007)), hl
                           2101 ;src/jugador/jugador.c:656: prota.vida=100;
   AB70 21 65 A1      [10] 2102 	ld	hl,#(_prota + 0x000d)
   AB73 36 64         [10] 2103 	ld	(hl),#0x64
                           2104 ;src/jugador/jugador.c:657: map = g_map1;
   AB75 21 F0 5E      [10] 2105 	ld	hl,#_g_map1+0
   AB78 22 54 A1      [16] 2106 	ld	(_map),hl
                           2107 ;src/jugador/jugador.c:658: num_mapa=0;
   AB7B 21 56 A1      [10] 2108 	ld	hl,#_num_mapa + 0
   AB7E 36 00         [10] 2109 	ld	(hl), #0x00
                           2110 ;src/jugador/jugador.c:659: dibujarMapa(map);
   AB80 2A 54 A1      [16] 2111 	ld	hl,(_map)
   AB83 E5            [11] 2112 	push	hl
   AB84 CD 53 8A      [17] 2113 	call	_dibujarMapa
   AB87 F1            [10] 2114 	pop	af
                           2115 ;src/jugador/jugador.c:660: dibujarProta();
   AB88 CD 7A A1      [17] 2116 	call	_dibujarProta
                           2117 ;src/jugador/jugador.c:661: inicializar_cuchillo(map);
   AB8B 2A 54 A1      [16] 2118 	ld	hl,(_map)
   AB8E E5            [11] 2119 	push	hl
   AB8F CD 07 AB      [17] 2120 	call	_inicializar_cuchillo
   AB92 F1            [10] 2121 	pop	af
                           2122 ;src/jugador/jugador.c:662: o=0;
   AB93 21 76 A1      [10] 2123 	ld	hl,#_o + 0
   AB96 36 00         [10] 2124 	ld	(hl), #0x00
                           2125 ;src/jugador/jugador.c:663: q=0;
   AB98 21 57 A1      [10] 2126 	ld	hl,#_q + 0
   AB9B 36 00         [10] 2127 	ld	(hl), #0x00
                           2128 ;src/jugador/jugador.c:664: imprimeHUD();
   AB9D C3 3C AA      [10] 2129 	jp  _imprimeHUD
                           2130 ;src/jugador/jugador.c:668: void muerteCaida()
                           2131 ;	---------------------------------
                           2132 ; Function muerteCaida
                           2133 ; ---------------------------------
   ABA0                    2134 _muerteCaida::
   ABA0 DD E5         [15] 2135 	push	ix
   ABA2 DD 21 00 00   [14] 2136 	ld	ix,#0
   ABA6 DD 39         [15] 2137 	add	ix,sp
   ABA8 21 FA FF      [10] 2138 	ld	hl,#-6
   ABAB 39            [11] 2139 	add	hl,sp
   ABAC F9            [ 6] 2140 	ld	sp,hl
                           2141 ;src/jugador/jugador.c:670: if(prota.x<40)
   ABAD 21 58 A1      [10] 2142 	ld	hl,#_prota+0
   ABB0 4E            [ 7] 2143 	ld	c,(hl)
                           2144 ;src/jugador/jugador.c:676: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
   ABB1 2A 54 A1      [16] 2145 	ld	hl,(_map)
   ABB4 DD 75 FE      [19] 2146 	ld	-2 (ix),l
   ABB7 DD 74 FF      [19] 2147 	ld	-1 (ix),h
                           2148 ;src/jugador/jugador.c:670: if(prota.x<40)
   ABBA 79            [ 4] 2149 	ld	a,c
   ABBB D6 28         [ 7] 2150 	sub	a, #0x28
   ABBD D2 4F AC      [10] 2151 	jp	NC,00108$
                           2152 ;src/jugador/jugador.c:672: if(prota.y<180&&prota.y>170)
   ABC0 21 59 A1      [10] 2153 	ld	hl, #(_prota + 0x0001) + 0
   ABC3 4E            [ 7] 2154 	ld	c,(hl)
   ABC4 79            [ 4] 2155 	ld	a,c
   ABC5 D6 B4         [ 7] 2156 	sub	a, #0xB4
   ABC7 D2 D8 AC      [10] 2157 	jp	NC,00110$
   ABCA 3E AA         [ 7] 2158 	ld	a,#0xAA
   ABCC 91            [ 4] 2159 	sub	a, c
   ABCD D2 D8 AC      [10] 2160 	jp	NC,00110$
                           2161 ;src/jugador/jugador.c:674: u8 w = 3 + (prota.xp & 1);
   ABD0 3A 5A A1      [13] 2162 	ld	a,(#(_prota + 0x0002) + 0)
   ABD3 DD 77 FC      [19] 2163 	ld	-4 (ix), a
   ABD6 E6 01         [ 7] 2164 	and	a, #0x01
   ABD8 C6 03         [ 7] 2165 	add	a, #0x03
   ABDA DD 77 FA      [19] 2166 	ld	-6 (ix),a
                           2167 ;src/jugador/jugador.c:675: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
   ABDD 3A 5B A1      [13] 2168 	ld	a,(#(_prota + 0x0003) + 0)
   ABE0 DD 77 FD      [19] 2169 	ld	-3 (ix), a
   ABE3 E6 03         [ 7] 2170 	and	a, #0x03
   ABE5 28 04         [12] 2171 	jr	Z,00112$
   ABE7 3E 01         [ 7] 2172 	ld	a,#0x01
   ABE9 18 02         [12] 2173 	jr	00113$
   ABEB                    2174 00112$:
   ABEB 3E 00         [ 7] 2175 	ld	a,#0x00
   ABED                    2176 00113$:
   ABED C6 08         [ 7] 2177 	add	a, #0x08
   ABEF DD 77 FB      [19] 2178 	ld	-5 (ix),a
                           2179 ;src/jugador/jugador.c:676: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
   ABF2 DD 4E FD      [19] 2180 	ld	c,-3 (ix)
   ABF5 06 00         [ 7] 2181 	ld	b,#0x00
   ABF7 79            [ 4] 2182 	ld	a,c
   ABF8 C6 BC         [ 7] 2183 	add	a,#0xBC
   ABFA 5F            [ 4] 2184 	ld	e,a
   ABFB 78            [ 4] 2185 	ld	a,b
   ABFC CE FF         [ 7] 2186 	adc	a,#0xFF
   ABFE 57            [ 4] 2187 	ld	d,a
   ABFF 6B            [ 4] 2188 	ld	l, e
   AC00 62            [ 4] 2189 	ld	h, d
   AC01 CB 7A         [ 8] 2190 	bit	7, d
   AC03 28 04         [12] 2191 	jr	Z,00114$
   AC05 21 BF FF      [10] 2192 	ld	hl,#0xFFBF
   AC08 09            [11] 2193 	add	hl,bc
   AC09                    2194 00114$:
   AC09 55            [ 4] 2195 	ld	d,l
   AC0A CB 2C         [ 8] 2196 	sra	h
   AC0C CB 1A         [ 8] 2197 	rr	d
   AC0E CB 2C         [ 8] 2198 	sra	h
   AC10 CB 1A         [ 8] 2199 	rr	d
   AC12 DD 46 FC      [19] 2200 	ld	b,-4 (ix)
   AC15 CB 38         [ 8] 2201 	srl	b
   AC17 DD 6E FE      [19] 2202 	ld	l,-2 (ix)
   AC1A DD 66 FF      [19] 2203 	ld	h,-1 (ix)
   AC1D E5            [11] 2204 	push	hl
   AC1E 21 80 E2      [10] 2205 	ld	hl,#0xE280
   AC21 E5            [11] 2206 	push	hl
   AC22 3E 28         [ 7] 2207 	ld	a,#0x28
   AC24 F5            [11] 2208 	push	af
   AC25 33            [ 6] 2209 	inc	sp
   AC26 DD 7E FB      [19] 2210 	ld	a,-5 (ix)
   AC29 F5            [11] 2211 	push	af
   AC2A 33            [ 6] 2212 	inc	sp
   AC2B DD 7E FA      [19] 2213 	ld	a,-6 (ix)
   AC2E F5            [11] 2214 	push	af
   AC2F 33            [ 6] 2215 	inc	sp
   AC30 D5            [11] 2216 	push	de
   AC31 33            [ 6] 2217 	inc	sp
   AC32 C5            [11] 2218 	push	bc
   AC33 33            [ 6] 2219 	inc	sp
   AC34 CD E2 91      [17] 2220 	call	_cpct_etm_drawTileBox2x4
                           2221 ;src/jugador/jugador.c:678: prota.x=prota.xp=prota.x-10;
   AC37 3A 58 A1      [13] 2222 	ld	a, (#_prota + 0)
   AC3A C6 F6         [ 7] 2223 	add	a,#0xF6
   AC3C 32 5A A1      [13] 2224 	ld	(#(_prota + 0x0002)),a
   AC3F 32 58 A1      [13] 2225 	ld	(#_prota),a
                           2226 ;src/jugador/jugador.c:679: prota.y=prota.yp=156;
   AC42 21 5B A1      [10] 2227 	ld	hl,#(_prota + 0x0003)
   AC45 36 9C         [10] 2228 	ld	(hl),#0x9C
   AC47 21 59 A1      [10] 2229 	ld	hl,#(_prota + 0x0001)
   AC4A 36 9C         [10] 2230 	ld	(hl),#0x9C
   AC4C C3 D8 AC      [10] 2231 	jp	00110$
   AC4F                    2232 00108$:
                           2233 ;src/jugador/jugador.c:684: if(prota.y<180&&prota.y>170)
   AC4F 21 59 A1      [10] 2234 	ld	hl, #(_prota + 0x0001) + 0
   AC52 4E            [ 7] 2235 	ld	c,(hl)
   AC53 79            [ 4] 2236 	ld	a,c
   AC54 D6 B4         [ 7] 2237 	sub	a, #0xB4
   AC56 D2 D8 AC      [10] 2238 	jp	NC,00110$
   AC59 3E AA         [ 7] 2239 	ld	a,#0xAA
   AC5B 91            [ 4] 2240 	sub	a, c
   AC5C 30 7A         [12] 2241 	jr	NC,00110$
                           2242 ;src/jugador/jugador.c:686: u8 w = 3 + (prota.xp & 1);
   AC5E 3A 5A A1      [13] 2243 	ld	a,(#(_prota + 0x0002) + 0)
   AC61 DD 77 FD      [19] 2244 	ld	-3 (ix), a
   AC64 E6 01         [ 7] 2245 	and	a, #0x01
   AC66 C6 03         [ 7] 2246 	add	a, #0x03
   AC68 DD 77 FB      [19] 2247 	ld	-5 (ix),a
                           2248 ;src/jugador/jugador.c:687: u8 h = 8 + (prota.yp & 3 ? 1 : 0);
   AC6B 3A 5B A1      [13] 2249 	ld	a,(#(_prota + 0x0003) + 0)
   AC6E DD 77 FC      [19] 2250 	ld	-4 (ix), a
   AC71 E6 03         [ 7] 2251 	and	a, #0x03
   AC73 28 04         [12] 2252 	jr	Z,00115$
   AC75 3E 01         [ 7] 2253 	ld	a,#0x01
   AC77 18 02         [12] 2254 	jr	00116$
   AC79                    2255 00115$:
   AC79 3E 00         [ 7] 2256 	ld	a,#0x00
   AC7B                    2257 00116$:
   AC7B C6 08         [ 7] 2258 	add	a, #0x08
   AC7D DD 77 FA      [19] 2259 	ld	-6 (ix),a
                           2260 ;src/jugador/jugador.c:688: cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
   AC80 DD 4E FC      [19] 2261 	ld	c,-4 (ix)
   AC83 06 00         [ 7] 2262 	ld	b,#0x00
   AC85 79            [ 4] 2263 	ld	a,c
   AC86 C6 BC         [ 7] 2264 	add	a,#0xBC
   AC88 5F            [ 4] 2265 	ld	e,a
   AC89 78            [ 4] 2266 	ld	a,b
   AC8A CE FF         [ 7] 2267 	adc	a,#0xFF
   AC8C 57            [ 4] 2268 	ld	d,a
   AC8D 6B            [ 4] 2269 	ld	l, e
   AC8E 62            [ 4] 2270 	ld	h, d
   AC8F CB 7A         [ 8] 2271 	bit	7, d
   AC91 28 04         [12] 2272 	jr	Z,00117$
   AC93 21 BF FF      [10] 2273 	ld	hl,#0xFFBF
   AC96 09            [11] 2274 	add	hl,bc
   AC97                    2275 00117$:
   AC97 CB 2C         [ 8] 2276 	sra	h
   AC99 CB 1D         [ 8] 2277 	rr	l
   AC9B CB 2C         [ 8] 2278 	sra	h
   AC9D CB 1D         [ 8] 2279 	rr	l
   AC9F 45            [ 4] 2280 	ld	b,l
   ACA0 DD 56 FD      [19] 2281 	ld	d,-3 (ix)
   ACA3 CB 3A         [ 8] 2282 	srl	d
   ACA5 DD 6E FE      [19] 2283 	ld	l,-2 (ix)
   ACA8 DD 66 FF      [19] 2284 	ld	h,-1 (ix)
   ACAB E5            [11] 2285 	push	hl
   ACAC 21 80 E2      [10] 2286 	ld	hl,#0xE280
   ACAF E5            [11] 2287 	push	hl
   ACB0 3E 28         [ 7] 2288 	ld	a,#0x28
   ACB2 F5            [11] 2289 	push	af
   ACB3 33            [ 6] 2290 	inc	sp
   ACB4 DD 7E FA      [19] 2291 	ld	a,-6 (ix)
   ACB7 F5            [11] 2292 	push	af
   ACB8 33            [ 6] 2293 	inc	sp
   ACB9 DD 7E FB      [19] 2294 	ld	a,-5 (ix)
   ACBC F5            [11] 2295 	push	af
   ACBD 33            [ 6] 2296 	inc	sp
   ACBE 4A            [ 4] 2297 	ld	c, d
   ACBF C5            [11] 2298 	push	bc
   ACC0 CD E2 91      [17] 2299 	call	_cpct_etm_drawTileBox2x4
                           2300 ;src/jugador/jugador.c:690: prota.x=prota.xp=prota.x-30;
   ACC3 3A 58 A1      [13] 2301 	ld	a, (#_prota + 0)
   ACC6 C6 E2         [ 7] 2302 	add	a,#0xE2
   ACC8 32 5A A1      [13] 2303 	ld	(#(_prota + 0x0002)),a
   ACCB 32 58 A1      [13] 2304 	ld	(#_prota),a
                           2305 ;src/jugador/jugador.c:691: prota.y=prota.yp=156;
   ACCE 21 5B A1      [10] 2306 	ld	hl,#(_prota + 0x0003)
   ACD1 36 9C         [10] 2307 	ld	(hl),#0x9C
   ACD3 21 59 A1      [10] 2308 	ld	hl,#(_prota + 0x0001)
   ACD6 36 9C         [10] 2309 	ld	(hl),#0x9C
   ACD8                    2310 00110$:
   ACD8 DD F9         [10] 2311 	ld	sp, ix
   ACDA DD E1         [14] 2312 	pop	ix
   ACDC C9            [10] 2313 	ret
                           2314 ;src/jugador/jugador.c:697: u8 get_X()
                           2315 ;	---------------------------------
                           2316 ; Function get_X
                           2317 ; ---------------------------------
   ACDD                    2318 _get_X::
                           2319 ;src/jugador/jugador.c:699: return prota.x;
   ACDD 21 58 A1      [10] 2320 	ld	hl, #_prota + 0
   ACE0 6E            [ 7] 2321 	ld	l,(hl)
   ACE1 C9            [10] 2322 	ret
                           2323 ;src/jugador/jugador.c:702: u8 get_Y()
                           2324 ;	---------------------------------
                           2325 ; Function get_Y
                           2326 ; ---------------------------------
   ACE2                    2327 _get_Y::
                           2328 ;src/jugador/jugador.c:705: return prota.y;
   ACE2 21 59 A1      [10] 2329 	ld	hl, #(_prota + 0x0001) + 0
   ACE5 6E            [ 7] 2330 	ld	l,(hl)
   ACE6 C9            [10] 2331 	ret
                           2332 ;src/jugador/jugador.c:709: u8 get_CX()
                           2333 ;	---------------------------------
                           2334 ; Function get_CX
                           2335 ; ---------------------------------
   ACE7                    2336 _get_CX::
                           2337 ;src/jugador/jugador.c:711: return cuchillo.x;
   ACE7 21 67 A1      [10] 2338 	ld	hl, #_cuchillo + 0
   ACEA 6E            [ 7] 2339 	ld	l,(hl)
   ACEB C9            [10] 2340 	ret
                           2341 ;src/jugador/jugador.c:714: u8 get_CY()
                           2342 ;	---------------------------------
                           2343 ; Function get_CY
                           2344 ; ---------------------------------
   ACEC                    2345 _get_CY::
                           2346 ;src/jugador/jugador.c:717: return cuchillo.y;
   ACEC 21 68 A1      [10] 2347 	ld	hl, #(_cuchillo + 0x0001) + 0
   ACEF 6E            [ 7] 2348 	ld	l,(hl)
   ACF0 C9            [10] 2349 	ret
                           2350 ;src/jugador/jugador.c:720: u8 get_mapa()
                           2351 ;	---------------------------------
                           2352 ; Function get_mapa
                           2353 ; ---------------------------------
   ACF1                    2354 _get_mapa::
                           2355 ;src/jugador/jugador.c:722: return num_mapa;
   ACF1 FD 21 56 A1   [14] 2356 	ld	iy,#_num_mapa
   ACF5 FD 6E 00      [19] 2357 	ld	l,0 (iy)
   ACF8 C9            [10] 2358 	ret
                           2359 ;src/jugador/jugador.c:725: u8* get_tip_mapa()
                           2360 ;	---------------------------------
                           2361 ; Function get_tip_mapa
                           2362 ; ---------------------------------
   ACF9                    2363 _get_tip_mapa::
                           2364 ;src/jugador/jugador.c:727: return map;
   ACF9 2A 54 A1      [16] 2365 	ld	hl,(_map)
   ACFC C9            [10] 2366 	ret
                           2367 ;src/jugador/jugador.c:730: u8 get_vida()
                           2368 ;	---------------------------------
                           2369 ; Function get_vida
                           2370 ; ---------------------------------
   ACFD                    2371 _get_vida::
                           2372 ;src/jugador/jugador.c:732: return prota.vida;
   ACFD 21 65 A1      [10] 2373 	ld	hl, #(_prota + 0x000d) + 0
   AD00 6E            [ 7] 2374 	ld	l,(hl)
   AD01 C9            [10] 2375 	ret
                           2376 ;src/jugador/jugador.c:737: void ejecutar_jugador()
                           2377 ;	---------------------------------
                           2378 ; Function ejecutar_jugador
                           2379 ; ---------------------------------
   AD02                    2380 _ejecutar_jugador::
                           2381 ;src/jugador/jugador.c:740: while(1) //bucle juego
   AD02                    2382 00114$:
                           2383 ;src/jugador/jugador.c:742: cambiarEstado();
   AD02 CD 09 AA      [17] 2384 	call	_cambiarEstado
                           2385 ;src/jugador/jugador.c:744: o=fin();
   AD05 CD 92 7A      [17] 2386 	call	_fin
   AD08 FD 21 76 A1   [14] 2387 	ld	iy,#_o
   AD0C FD 75 00      [19] 2388 	ld	0 (iy),l
                           2389 ;src/jugador/jugador.c:745: if(o==1)
   AD0F 3A 76 A1      [13] 2390 	ld	a,(#_o + 0)
   AD12 3D            [ 4] 2391 	dec	a
   AD13 C8            [11] 2392 	ret	Z
                           2393 ;src/jugador/jugador.c:750: q=muerteJug();
   AD14 CD BD 7A      [17] 2394 	call	_muerteJug
   AD17 FD 21 57 A1   [14] 2395 	ld	iy,#_q
   AD1B FD 75 00      [19] 2396 	ld	0 (iy),l
                           2397 ;src/jugador/jugador.c:751: if(q==1)
   AD1E 3A 57 A1      [13] 2398 	ld	a,(#_q + 0)
   AD21 3D            [ 4] 2399 	dec	a
   AD22 C8            [11] 2400 	ret	Z
                           2401 ;src/jugador/jugador.c:756: if(prota.mover)
   AD23 3A 5E A1      [13] 2402 	ld	a, (#(_prota + 0x0006) + 0)
   AD26 B7            [ 4] 2403 	or	a, a
   AD27 28 11         [12] 2404 	jr	Z,00106$
                           2405 ;src/jugador/jugador.c:757: {	    muerteCaida();
   AD29 CD A0 AB      [17] 2406 	call	_muerteCaida
                           2407 ;src/jugador/jugador.c:758: selectSprite();
   AD2C CD 6D A6      [17] 2408 	call	_selectSprite
                           2409 ;src/jugador/jugador.c:759: cpct_waitVSYNC(); 
   AD2F CD 44 95      [17] 2410 	call	_cpct_waitVSYNC
                           2411 ;src/jugador/jugador.c:760: redibujarProta();
   AD32 CD D3 A2      [17] 2412 	call	_redibujarProta
                           2413 ;src/jugador/jugador.c:761: prota.mover=NO;
   AD35 21 5E A1      [10] 2414 	ld	hl,#(_prota + 0x0006)
   AD38 36 00         [10] 2415 	ld	(hl),#0x00
   AD3A                    2416 00106$:
                           2417 ;src/jugador/jugador.c:764: if(cuchillo.mover){
   AD3A 3A 6D A1      [13] 2418 	ld	a, (#(_cuchillo + 0x0006) + 0)
   AD3D B7            [ 4] 2419 	or	a, a
   AD3E 28 15         [12] 2420 	jr	Z,00110$
                           2421 ;src/jugador/jugador.c:766: moverCuchillo();
   AD40 CD E7 A2      [17] 2422 	call	_moverCuchillo
                           2423 ;src/jugador/jugador.c:768: cpct_waitVSYNC();
   AD43 CD 44 95      [17] 2424 	call	_cpct_waitVSYNC
                           2425 ;src/jugador/jugador.c:769: redibujarCuchillo();
   AD46 CD D5 A3      [17] 2426 	call	_redibujarCuchillo
                           2427 ;src/jugador/jugador.c:770: imprimirMuni();
   AD49 CD 08 A5      [17] 2428 	call	_imprimirMuni
                           2429 ;src/jugador/jugador.c:771: if(!cuchillo.mover)
   AD4C 3A 6D A1      [13] 2430 	ld	a, (#(_cuchillo + 0x0006) + 0)
   AD4F B7            [ 4] 2431 	or	a, a
   AD50 20 03         [12] 2432 	jr	NZ,00110$
                           2433 ;src/jugador/jugador.c:772: borrarCuchillo();  
   AD52 CD 61 A2      [17] 2434 	call	_borrarCuchillo
   AD55                    2435 00110$:
                           2436 ;src/jugador/jugador.c:774: mata_enemigo();
   AD55 CD A5 7E      [17] 2437 	call	_mata_enemigo
                           2438 ;src/jugador/jugador.c:775: ini_estado();
   AD58 CD 18 83      [17] 2439 	call	_ini_estado
                           2440 ;src/jugador/jugador.c:777: if(prota.vida/5==0)
   AD5B 21 65 A1      [10] 2441 	ld	hl, #_prota + 13
   AD5E 46            [ 7] 2442 	ld	b,(hl)
   AD5F 3E 05         [ 7] 2443 	ld	a,#0x05
   AD61 F5            [11] 2444 	push	af
   AD62 33            [ 6] 2445 	inc	sp
   AD63 C5            [11] 2446 	push	bc
   AD64 33            [ 6] 2447 	inc	sp
   AD65 CD 21 93      [17] 2448 	call	__divuchar
   AD68 F1            [10] 2449 	pop	af
   AD69 7D            [ 4] 2450 	ld	a,l
   AD6A B7            [ 4] 2451 	or	a, a
   AD6B 20 95         [12] 2452 	jr	NZ,00114$
                           2453 ;src/jugador/jugador.c:779: imprimirVida();
   AD6D CD 47 A5      [17] 2454 	call	_imprimirVida
   AD70 18 90         [12] 2455 	jr	00114$
                           2456 	.area _CODE
                           2457 	.area _INITIALIZER
                           2458 	.area _CABS (ABS)
