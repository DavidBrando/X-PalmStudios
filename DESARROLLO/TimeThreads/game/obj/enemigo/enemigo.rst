                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module enemigo
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _alive
                             12 	.globl _reviveIA
                             13 	.globl _get_BY
                             14 	.globl _wait4UserKeypress
                             15 	.globl _quitar_vida
                             16 	.globl _asignarFrame2
                             17 	.globl _get_tip_mapa
                             18 	.globl _get_CY
                             19 	.globl _get_CX
                             20 	.globl _get_Y
                             21 	.globl _get_X
                             22 	.globl _restaVida
                             23 	.globl _dibujarProta
                             24 	.globl _cpct_etm_drawTileBox2x4
                             25 	.globl _cpct_restoreState_mxor_u8
                             26 	.globl _cpct_setSeed_mxor
                             27 	.globl _cpct_getRandom_mxor_u8
                             28 	.globl _cpct_getScreenPtr
                             29 	.globl _cpct_waitVSYNC
                             30 	.globl _cpct_hflipSpriteM0
                             31 	.globl _cpct_drawSpriteMaskedAlignedTable
                             32 	.globl _cpct_isAnyKeyPressed
                             33 	.globl _cpct_isKeyPressed
                             34 	.globl _cpct_scanKeyboard_f
                             35 	.globl _c
                             36 	.globl _j
                             37 	.globl _ENMirar
                             38 	.globl _e
                             39 	.globl _mapaJug
                             40 	.globl _pmapa
                             41 	.globl _borracho
                             42 	.globl _anim_golpear
                             43 	.globl _anim_andar2
                             44 	.globl _g_Frames
                             45 	.globl _girarFrame2
                             46 	.globl _seleccionarSpriteBorracho
                             47 	.globl _dibujarBorracho
                             48 	.globl _borrarBorracho
                             49 	.globl _redibujarBorracho
                             50 	.globl _andar_ani2
                             51 	.globl _golpear_ani2
                             52 	.globl _ini_andar2
                             53 	.globl _izquierda
                             54 	.globl _derecha
                             55 	.globl _golpear
                             56 	.globl _quietoENE
                             57 	.globl _mata_enemigo
                             58 	.globl _get_BX
                             59 	.globl _IA
                             60 	.globl _BOestado
                             61 	.globl _ini_estado
                             62 	.globl _inicializar_borracho
                             63 ;--------------------------------------------------------
                             64 ; special function registers
                             65 ;--------------------------------------------------------
                             66 ;--------------------------------------------------------
                             67 ; ram data
                             68 ;--------------------------------------------------------
                             69 	.area _DATA
   A13C                      70 _borracho::
   A13C                      71 	.ds 13
   A149                      72 _pmapa::
   A149                      73 	.ds 2
   A14B                      74 _mapaJug::
   A14B                      75 	.ds 2
   A14D                      76 _e::
   A14D                      77 	.ds 1
   A14E                      78 _ENMirar::
   A14E                      79 	.ds 1
   A14F                      80 _j::
   A14F                      81 	.ds 1
   A150                      82 _c::
   A150                      83 	.ds 4
                             84 ;--------------------------------------------------------
                             85 ; ram data
                             86 ;--------------------------------------------------------
                             87 	.area _INITIALIZED
                             88 ;--------------------------------------------------------
                             89 ; absolute external ram data
                             90 ;--------------------------------------------------------
                             91 	.area _DABS (ABS)
                             92 ;--------------------------------------------------------
                             93 ; global & static initialisations
                             94 ;--------------------------------------------------------
                             95 	.area _HOME
                             96 	.area _GSINIT
                             97 	.area _GSFINAL
                             98 	.area _GSINIT
                             99 ;--------------------------------------------------------
                            100 ; Home
                            101 ;--------------------------------------------------------
                            102 	.area _HOME
                            103 	.area _HOME
                            104 ;--------------------------------------------------------
                            105 ; code
                            106 ;--------------------------------------------------------
                            107 	.area _CODE
                            108 ;src/enemigo/enemigo.c:50: void asignarFrame2(Tframe **animacion) {
                            109 ;	---------------------------------
                            110 ; Function asignarFrame2
                            111 ; ---------------------------------
   7C39                     112 _asignarFrame2::
   7C39 DD E5         [15]  113 	push	ix
   7C3B DD 21 00 00   [14]  114 	ld	ix,#0
   7C3F DD 39         [15]  115 	add	ix,sp
                            116 ;src/enemigo/enemigo.c:51: borracho.frame = animacion[borracho.nframe / ANIM_PAUSA];
   7C41 21 46 A1      [10]  117 	ld	hl, #_borracho + 10
   7C44 6E            [ 7]  118 	ld	l,(hl)
   7C45 CB 3D         [ 8]  119 	srl	l
   7C47 CB 3D         [ 8]  120 	srl	l
   7C49 26 00         [ 7]  121 	ld	h,#0x00
   7C4B 29            [11]  122 	add	hl, hl
   7C4C 4D            [ 4]  123 	ld	c, l
   7C4D 44            [ 4]  124 	ld	b, h
   7C4E DD 6E 04      [19]  125 	ld	l,4 (ix)
   7C51 DD 66 05      [19]  126 	ld	h,5 (ix)
   7C54 09            [11]  127 	add	hl,bc
   7C55 4E            [ 7]  128 	ld	c,(hl)
   7C56 23            [ 6]  129 	inc	hl
   7C57 46            [ 7]  130 	ld	b,(hl)
   7C58 ED 43 44 A1   [20]  131 	ld	((_borracho + 0x0008)), bc
   7C5C DD E1         [14]  132 	pop	ix
   7C5E C9            [10]  133 	ret
   7C5F                     134 _g_Frames:
   7C5F 00                  135 	.db #0x00	; 0
   7C60 74 83               136 	.dw _g_borracho_0
   7C62 00                  137 	.db #0x00	; 0
   7C63 4C 84               138 	.dw _g_borracho_1
   7C65 00                  139 	.db #0x00	; 0
   7C66 24 85               140 	.dw _g_borracho_2
   7C68 00                  141 	.db #0x00	; 0
   7C69 FC 85               142 	.dw _g_borracho_3
   7C6B 00                  143 	.db #0x00	; 0
   7C6C D4 86               144 	.dw _g_borracho_4
   7C6E 00                  145 	.db #0x00	; 0
   7C6F AC 87               146 	.dw _g_borracho_5
   7C71 00                  147 	.db #0x00	; 0
   7C72 84 88               148 	.dw _g_borracho_6
   7C74 00                  149 	.db #0x00	; 0
   7C75 5C 89               150 	.dw _g_borracho_7
   7C77 00                  151 	.db 0x00
   7C78 00                  152 	.db 0x00
   7C79 00                  153 	.db 0x00
   7C7A 00                  154 	.db 0x00
   7C7B 00                  155 	.db 0x00
   7C7C 00                  156 	.db 0x00
   7C7D 00                  157 	.db 0x00
   7C7E 00                  158 	.db 0x00
   7C7F 00                  159 	.db 0x00
   7C80 00                  160 	.db 0x00
   7C81 00                  161 	.db 0x00
   7C82 00                  162 	.db 0x00
   7C83 00                  163 	.db 0x00
   7C84 00                  164 	.db 0x00
   7C85 00                  165 	.db 0x00
   7C86 00                  166 	.db 0x00
   7C87 00                  167 	.db 0x00
   7C88 00                  168 	.db 0x00
   7C89 00                  169 	.db 0x00
   7C8A 00                  170 	.db 0x00
   7C8B 00                  171 	.db 0x00
   7C8C 00                  172 	.db 0x00
   7C8D 00                  173 	.db 0x00
   7C8E 00                  174 	.db 0x00
   7C8F                     175 _anim_andar2:
   7C8F 62 7C               176 	.dw (_g_Frames + 3)
   7C91 65 7C               177 	.dw (_g_Frames + 6)
   7C93 68 7C               178 	.dw (_g_Frames + 9)
   7C95 6B 7C               179 	.dw (_g_Frames + 12)
   7C97 6E 7C               180 	.dw (_g_Frames + 15)
   7C99                     181 _anim_golpear:
   7C99 74 7C               182 	.dw (_g_Frames + 21)
   7C9B 71 7C               183 	.dw (_g_Frames + 18)
                            184 ;src/enemigo/enemigo.c:55: void girarFrame2() {
                            185 ;	---------------------------------
                            186 ; Function girarFrame2
                            187 ; ---------------------------------
   7C9D                     188 _girarFrame2::
                            189 ;src/enemigo/enemigo.c:56: Tframe* f = borracho.frame;
   7C9D ED 4B 44 A1   [20]  190 	ld	bc, (#_borracho + 8)
                            191 ;src/enemigo/enemigo.c:57: if (f->mira != borracho.mira) {
   7CA1 0A            [ 7]  192 	ld	a,(bc)
   7CA2 5F            [ 4]  193 	ld	e,a
   7CA3 21 47 A1      [10]  194 	ld	hl, #(_borracho + 0x000b) + 0
   7CA6 56            [ 7]  195 	ld	d,(hl)
   7CA7 7B            [ 4]  196 	ld	a,e
   7CA8 92            [ 4]  197 	sub	a, d
   7CA9 C8            [11]  198 	ret	Z
                            199 ;src/enemigo/enemigo.c:58: cpct_hflipSpriteM0(G_BORRACHO_0_W, G_BORRACHO_0_H, f->sprite);
   7CAA 69            [ 4]  200 	ld	l, c
   7CAB 60            [ 4]  201 	ld	h, b
   7CAC 23            [ 6]  202 	inc	hl
   7CAD 5E            [ 7]  203 	ld	e,(hl)
   7CAE 23            [ 6]  204 	inc	hl
   7CAF 56            [ 7]  205 	ld	d,(hl)
   7CB0 C5            [11]  206 	push	bc
   7CB1 D5            [11]  207 	push	de
   7CB2 21 08 1B      [10]  208 	ld	hl,#0x1B08
   7CB5 E5            [11]  209 	push	hl
   7CB6 CD 00 95      [17]  210 	call	_cpct_hflipSpriteM0
   7CB9 C1            [10]  211 	pop	bc
                            212 ;src/enemigo/enemigo.c:59: f->mira = borracho.mira;
   7CBA 3A 47 A1      [13]  213 	ld	a, (#(_borracho + 0x000b) + 0)
   7CBD 02            [ 7]  214 	ld	(bc),a
   7CBE C9            [10]  215 	ret
                            216 ;src/enemigo/enemigo.c:63: void seleccionarSpriteBorracho() {
                            217 ;	---------------------------------
                            218 ; Function seleccionarSpriteBorracho
                            219 ; ---------------------------------
   7CBF                     220 _seleccionarSpriteBorracho::
                            221 ;src/enemigo/enemigo.c:64: switch(borracho.estado) {
   7CBF 21 43 A1      [10]  222 	ld	hl, #_borracho + 7
   7CC2 5E            [ 7]  223 	ld	e,(hl)
   7CC3 3E 02         [ 7]  224 	ld	a,#0x02
   7CC5 93            [ 4]  225 	sub	a, e
   7CC6 DA 9D 7C      [10]  226 	jp	C,_girarFrame2
   7CC9 16 00         [ 7]  227 	ld	d,#0x00
   7CCB 21 D1 7C      [10]  228 	ld	hl,#00111$
   7CCE 19            [11]  229 	add	hl,de
   7CCF 19            [11]  230 	add	hl,de
                            231 ;src/enemigo/enemigo.c:65: case 0:      { borracho.frame = &g_Frames[0];  break; }
   7CD0 E9            [ 4]  232 	jp	(hl)
   7CD1                     233 00111$:
   7CD1 18 04         [12]  234 	jr	00101$
   7CD3 18 0B         [12]  235 	jr	00102$
   7CD5 18 14         [12]  236 	jr	00103$
   7CD7                     237 00101$:
   7CD7 21 5F 7C      [10]  238 	ld	hl,#_g_Frames
   7CDA 22 44 A1      [16]  239 	ld	((_borracho + 0x0008)), hl
   7CDD C3 9D 7C      [10]  240 	jp	_girarFrame2
                            241 ;src/enemigo/enemigo.c:66: case 1:     { asignarFrame2(anim_andar2);    break; }
   7CE0                     242 00102$:
   7CE0 21 8F 7C      [10]  243 	ld	hl,#_anim_andar2
   7CE3 E5            [11]  244 	push	hl
   7CE4 CD 39 7C      [17]  245 	call	_asignarFrame2
   7CE7 F1            [10]  246 	pop	af
   7CE8 C3 9D 7C      [10]  247 	jp	_girarFrame2
                            248 ;src/enemigo/enemigo.c:67: case 2:		{ asignarFrame2(anim_golpear);   break; }
   7CEB                     249 00103$:
   7CEB 21 99 7C      [10]  250 	ld	hl,#_anim_golpear
   7CEE E5            [11]  251 	push	hl
   7CEF CD 39 7C      [17]  252 	call	_asignarFrame2
   7CF2 F1            [10]  253 	pop	af
                            254 ;src/enemigo/enemigo.c:68: }
                            255 ;src/enemigo/enemigo.c:69: girarFrame2();
   7CF3 C3 9D 7C      [10]  256 	jp  _girarFrame2
                            257 ;src/enemigo/enemigo.c:72: void dibujarBorracho()
                            258 ;	---------------------------------
                            259 ; Function dibujarBorracho
                            260 ; ---------------------------------
   7CF6                     261 _dibujarBorracho::
                            262 ;src/enemigo/enemigo.c:74: u8* punte = cpct_getScreenPtr(CPCT_VMEM_START, borracho.x, borracho.y);
   7CF6 21 3D A1      [10]  263 	ld	hl, #_borracho + 1
   7CF9 56            [ 7]  264 	ld	d,(hl)
   7CFA 21 3C A1      [10]  265 	ld	hl, #_borracho + 0
   7CFD 46            [ 7]  266 	ld	b,(hl)
   7CFE D5            [11]  267 	push	de
   7CFF 33            [ 6]  268 	inc	sp
   7D00 C5            [11]  269 	push	bc
   7D01 33            [ 6]  270 	inc	sp
   7D02 21 00 C0      [10]  271 	ld	hl,#0xC000
   7D05 E5            [11]  272 	push	hl
   7D06 CD AA 95      [17]  273 	call	_cpct_getScreenPtr
   7D09 5D            [ 4]  274 	ld	e,l
   7D0A 54            [ 4]  275 	ld	d,h
                            276 ;src/enemigo/enemigo.c:75: cpct_drawSpriteMaskedAlignedTable(borracho.frame->sprite, punte, G_BORRACHO_0_W, G_BORRACHO_0_H, a);
   7D0B 2A 44 A1      [16]  277 	ld	hl, (#_borracho + 8)
   7D0E 23            [ 6]  278 	inc	hl
   7D0F 4E            [ 7]  279 	ld	c,(hl)
   7D10 23            [ 6]  280 	inc	hl
   7D11 46            [ 7]  281 	ld	b,(hl)
   7D12 21 00 01      [10]  282 	ld	hl,#_a
   7D15 E5            [11]  283 	push	hl
   7D16 21 08 1B      [10]  284 	ld	hl,#0x1B08
   7D19 E5            [11]  285 	push	hl
   7D1A D5            [11]  286 	push	de
   7D1B C5            [11]  287 	push	bc
   7D1C CD CA 95      [17]  288 	call	_cpct_drawSpriteMaskedAlignedTable
   7D1F C9            [10]  289 	ret
                            290 ;src/enemigo/enemigo.c:78: void borrarBorracho() {
                            291 ;	---------------------------------
                            292 ; Function borrarBorracho
                            293 ; ---------------------------------
   7D20                     294 _borrarBorracho::
   7D20 DD E5         [15]  295 	push	ix
   7D22 DD 21 00 00   [14]  296 	ld	ix,#0
   7D26 DD 39         [15]  297 	add	ix,sp
   7D28 F5            [11]  298 	push	af
   7D29 3B            [ 6]  299 	dec	sp
                            300 ;src/enemigo/enemigo.c:79: u8 w = 4 + (borracho.px & 1);
   7D2A 21 3E A1      [10]  301 	ld	hl, #_borracho + 2
   7D2D 4E            [ 7]  302 	ld	c,(hl)
   7D2E 79            [ 4]  303 	ld	a,c
   7D2F E6 01         [ 7]  304 	and	a, #0x01
   7D31 47            [ 4]  305 	ld	b,a
   7D32 04            [ 4]  306 	inc	b
   7D33 04            [ 4]  307 	inc	b
   7D34 04            [ 4]  308 	inc	b
   7D35 04            [ 4]  309 	inc	b
                            310 ;src/enemigo/enemigo.c:80: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
   7D36 21 3F A1      [10]  311 	ld	hl, #_borracho + 3
   7D39 5E            [ 7]  312 	ld	e,(hl)
   7D3A 7B            [ 4]  313 	ld	a,e
   7D3B E6 03         [ 7]  314 	and	a, #0x03
   7D3D 28 04         [12]  315 	jr	Z,00103$
   7D3F 3E 01         [ 7]  316 	ld	a,#0x01
   7D41 18 02         [12]  317 	jr	00104$
   7D43                     318 00103$:
   7D43 3E 00         [ 7]  319 	ld	a,#0x00
   7D45                     320 00104$:
   7D45 C6 07         [ 7]  321 	add	a, #0x07
   7D47 DD 77 FD      [19]  322 	ld	-3 (ix),a
                            323 ;src/enemigo/enemigo.c:81: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
   7D4A FD 2A 49 A1   [20]  324 	ld	iy,(_pmapa)
   7D4E 16 00         [ 7]  325 	ld	d,#0x00
   7D50 7B            [ 4]  326 	ld	a,e
   7D51 C6 BC         [ 7]  327 	add	a,#0xBC
   7D53 DD 77 FE      [19]  328 	ld	-2 (ix),a
   7D56 7A            [ 4]  329 	ld	a,d
   7D57 CE FF         [ 7]  330 	adc	a,#0xFF
   7D59 DD 77 FF      [19]  331 	ld	-1 (ix),a
   7D5C DD 6E FE      [19]  332 	ld	l,-2 (ix)
   7D5F DD 66 FF      [19]  333 	ld	h,-1 (ix)
   7D62 DD CB FF 7E   [20]  334 	bit	7, -1 (ix)
   7D66 28 04         [12]  335 	jr	Z,00105$
   7D68 21 BF FF      [10]  336 	ld	hl,#0xFFBF
   7D6B 19            [11]  337 	add	hl,de
   7D6C                     338 00105$:
   7D6C CB 2C         [ 8]  339 	sra	h
   7D6E CB 1D         [ 8]  340 	rr	l
   7D70 CB 2C         [ 8]  341 	sra	h
   7D72 CB 1D         [ 8]  342 	rr	l
   7D74 55            [ 4]  343 	ld	d,l
   7D75 CB 39         [ 8]  344 	srl	c
   7D77 FD E5         [15]  345 	push	iy
   7D79 21 80 E2      [10]  346 	ld	hl,#0xE280
   7D7C E5            [11]  347 	push	hl
   7D7D 3E 28         [ 7]  348 	ld	a,#0x28
   7D7F F5            [11]  349 	push	af
   7D80 33            [ 6]  350 	inc	sp
   7D81 DD 7E FD      [19]  351 	ld	a,-3 (ix)
   7D84 F5            [11]  352 	push	af
   7D85 33            [ 6]  353 	inc	sp
   7D86 C5            [11]  354 	push	bc
   7D87 33            [ 6]  355 	inc	sp
   7D88 D5            [11]  356 	push	de
   7D89 33            [ 6]  357 	inc	sp
   7D8A 79            [ 4]  358 	ld	a,c
   7D8B F5            [11]  359 	push	af
   7D8C 33            [ 6]  360 	inc	sp
   7D8D CD E2 91      [17]  361 	call	_cpct_etm_drawTileBox2x4
   7D90 DD F9         [10]  362 	ld	sp, ix
   7D92 DD E1         [14]  363 	pop	ix
   7D94 C9            [10]  364 	ret
                            365 ;src/enemigo/enemigo.c:85: void redibujarBorracho() {
                            366 ;	---------------------------------
                            367 ; Function redibujarBorracho
                            368 ; ---------------------------------
   7D95                     369 _redibujarBorracho::
                            370 ;src/enemigo/enemigo.c:86: borrarBorracho();
   7D95 CD 20 7D      [17]  371 	call	_borrarBorracho
                            372 ;src/enemigo/enemigo.c:87: borracho.px = borracho.x;
   7D98 01 3E A1      [10]  373 	ld	bc,#_borracho + 2
   7D9B 3A 3C A1      [13]  374 	ld	a, (#_borracho + 0)
   7D9E 02            [ 7]  375 	ld	(bc),a
                            376 ;src/enemigo/enemigo.c:88: borracho.py = borracho.y;
   7D9F 01 3F A1      [10]  377 	ld	bc,#_borracho + 3
   7DA2 3A 3D A1      [13]  378 	ld	a, (#_borracho + 1)
   7DA5 02            [ 7]  379 	ld	(bc),a
                            380 ;src/enemigo/enemigo.c:89: dibujarBorracho();
   7DA6 C3 F6 7C      [10]  381 	jp  _dibujarBorracho
                            382 ;src/enemigo/enemigo.c:92: void andar_ani2(u8 direccion)
                            383 ;	---------------------------------
                            384 ; Function andar_ani2
                            385 ; ---------------------------------
   7DA9                     386 _andar_ani2::
                            387 ;src/enemigo/enemigo.c:94: borracho.mira  = direccion;
   7DA9 21 47 A1      [10]  388 	ld	hl,#(_borracho + 0x000b)
   7DAC FD 21 02 00   [14]  389 	ld	iy,#2
   7DB0 FD 39         [15]  390 	add	iy,sp
   7DB2 FD 7E 00      [19]  391 	ld	a,0 (iy)
   7DB5 77            [ 7]  392 	ld	(hl),a
                            393 ;src/enemigo/enemigo.c:95: if(++borracho.nframe == 5*4)
   7DB6 01 46 A1      [10]  394 	ld	bc,#_borracho + 10
   7DB9 0A            [ 7]  395 	ld	a,(bc)
   7DBA 3C            [ 4]  396 	inc	a
   7DBB 02            [ 7]  397 	ld	(bc),a
   7DBC D6 14         [ 7]  398 	sub	a, #0x14
   7DBE C0            [11]  399 	ret	NZ
                            400 ;src/enemigo/enemigo.c:96: borracho.nframe = 0;
   7DBF AF            [ 4]  401 	xor	a, a
   7DC0 02            [ 7]  402 	ld	(bc),a
   7DC1 C9            [10]  403 	ret
                            404 ;src/enemigo/enemigo.c:99: void golpear_ani2(u8 direccion){
                            405 ;	---------------------------------
                            406 ; Function golpear_ani2
                            407 ; ---------------------------------
   7DC2                     408 _golpear_ani2::
                            409 ;src/enemigo/enemigo.c:100: borracho.mira = direccion;
   7DC2 21 47 A1      [10]  410 	ld	hl,#(_borracho + 0x000b)
   7DC5 FD 21 02 00   [14]  411 	ld	iy,#2
   7DC9 FD 39         [15]  412 	add	iy,sp
   7DCB FD 7E 00      [19]  413 	ld	a,0 (iy)
   7DCE 77            [ 7]  414 	ld	(hl),a
                            415 ;src/enemigo/enemigo.c:101: if(++borracho.nframe == GOLPE_FRAMES*ANIM_PAUSA)
   7DCF 01 46 A1      [10]  416 	ld	bc,#_borracho + 10
   7DD2 0A            [ 7]  417 	ld	a,(bc)
   7DD3 3C            [ 4]  418 	inc	a
   7DD4 02            [ 7]  419 	ld	(bc),a
   7DD5 D6 08         [ 7]  420 	sub	a, #0x08
   7DD7 C0            [11]  421 	ret	NZ
                            422 ;src/enemigo/enemigo.c:102: borracho.nframe = 0;
   7DD8 AF            [ 4]  423 	xor	a, a
   7DD9 02            [ 7]  424 	ld	(bc),a
   7DDA C9            [10]  425 	ret
                            426 ;src/enemigo/enemigo.c:105: void ini_andar2(u8 direccion)
                            427 ;	---------------------------------
                            428 ; Function ini_andar2
                            429 ; ---------------------------------
   7DDB                     430 _ini_andar2::
                            431 ;src/enemigo/enemigo.c:107: borracho.nframe=0;
   7DDB 21 46 A1      [10]  432 	ld	hl,#(_borracho + 0x000a)
   7DDE 36 00         [10]  433 	ld	(hl),#0x00
                            434 ;src/enemigo/enemigo.c:108: borracho.estado=1;
   7DE0 21 43 A1      [10]  435 	ld	hl,#(_borracho + 0x0007)
   7DE3 36 01         [10]  436 	ld	(hl),#0x01
                            437 ;src/enemigo/enemigo.c:109: borracho.mira = direccion;
   7DE5 21 47 A1      [10]  438 	ld	hl,#(_borracho + 0x000b)
   7DE8 FD 21 02 00   [14]  439 	ld	iy,#2
   7DEC FD 39         [15]  440 	add	iy,sp
   7DEE FD 7E 00      [19]  441 	ld	a,0 (iy)
   7DF1 77            [ 7]  442 	ld	(hl),a
                            443 ;src/enemigo/enemigo.c:110: borracho.mover=SI;
   7DF2 21 42 A1      [10]  444 	ld	hl,#(_borracho + 0x0006)
   7DF5 36 01         [10]  445 	ld	(hl),#0x01
   7DF7 C9            [10]  446 	ret
                            447 ;src/enemigo/enemigo.c:113: void izquierda()
                            448 ;	---------------------------------
                            449 ; Function izquierda
                            450 ; ---------------------------------
   7DF8                     451 _izquierda::
                            452 ;src/enemigo/enemigo.c:115: borracho.x--;
   7DF8 01 3C A1      [10]  453 	ld	bc,#_borracho+0
   7DFB 0A            [ 7]  454 	ld	a,(bc)
   7DFC C6 FF         [ 7]  455 	add	a,#0xFF
   7DFE 02            [ 7]  456 	ld	(bc),a
                            457 ;src/enemigo/enemigo.c:116: andar_ani2(E_izquierda);
   7DFF 3E 01         [ 7]  458 	ld	a,#0x01
   7E01 F5            [11]  459 	push	af
   7E02 33            [ 6]  460 	inc	sp
   7E03 CD A9 7D      [17]  461 	call	_andar_ani2
   7E06 33            [ 6]  462 	inc	sp
                            463 ;src/enemigo/enemigo.c:117: borracho.estado=1;
   7E07 21 43 A1      [10]  464 	ld	hl,#(_borracho + 0x0007)
   7E0A 36 01         [10]  465 	ld	(hl),#0x01
                            466 ;src/enemigo/enemigo.c:119: borracho.mover=SI;
   7E0C 21 42 A1      [10]  467 	ld	hl,#(_borracho + 0x0006)
   7E0F 36 01         [10]  468 	ld	(hl),#0x01
                            469 ;src/enemigo/enemigo.c:121: if(borracho.mover){
   7E11 3A 42 A1      [13]  470 	ld	a, (#(_borracho + 0x0006) + 0)
   7E14 B7            [ 4]  471 	or	a, a
   7E15 C8            [11]  472 	ret	Z
                            473 ;src/enemigo/enemigo.c:123: seleccionarSpriteBorracho();
   7E16 CD BF 7C      [17]  474 	call	_seleccionarSpriteBorracho
                            475 ;src/enemigo/enemigo.c:124: cpct_waitVSYNC();
   7E19 CD 44 95      [17]  476 	call	_cpct_waitVSYNC
                            477 ;src/enemigo/enemigo.c:125: redibujarBorracho();
   7E1C CD 95 7D      [17]  478 	call	_redibujarBorracho
                            479 ;src/enemigo/enemigo.c:126: borracho.mover = NO;
   7E1F 21 42 A1      [10]  480 	ld	hl,#(_borracho + 0x0006)
   7E22 36 00         [10]  481 	ld	(hl),#0x00
   7E24 C9            [10]  482 	ret
                            483 ;src/enemigo/enemigo.c:130: void derecha()
                            484 ;	---------------------------------
                            485 ; Function derecha
                            486 ; ---------------------------------
   7E25                     487 _derecha::
                            488 ;src/enemigo/enemigo.c:132: borracho.x++;
   7E25 01 3C A1      [10]  489 	ld	bc,#_borracho+0
   7E28 0A            [ 7]  490 	ld	a,(bc)
   7E29 3C            [ 4]  491 	inc	a
   7E2A 02            [ 7]  492 	ld	(bc),a
                            493 ;src/enemigo/enemigo.c:133: andar_ani2(E_derecha);
   7E2B AF            [ 4]  494 	xor	a, a
   7E2C F5            [11]  495 	push	af
   7E2D 33            [ 6]  496 	inc	sp
   7E2E CD A9 7D      [17]  497 	call	_andar_ani2
   7E31 33            [ 6]  498 	inc	sp
                            499 ;src/enemigo/enemigo.c:134: borracho.estado=1;
   7E32 21 43 A1      [10]  500 	ld	hl,#(_borracho + 0x0007)
   7E35 36 01         [10]  501 	ld	(hl),#0x01
                            502 ;src/enemigo/enemigo.c:135: borracho.mover=SI;
   7E37 21 42 A1      [10]  503 	ld	hl,#(_borracho + 0x0006)
   7E3A 36 01         [10]  504 	ld	(hl),#0x01
                            505 ;src/enemigo/enemigo.c:137: if(borracho.mover){
   7E3C 3A 42 A1      [13]  506 	ld	a, (#(_borracho + 0x0006) + 0)
   7E3F B7            [ 4]  507 	or	a, a
   7E40 C8            [11]  508 	ret	Z
                            509 ;src/enemigo/enemigo.c:138: seleccionarSpriteBorracho();
   7E41 CD BF 7C      [17]  510 	call	_seleccionarSpriteBorracho
                            511 ;src/enemigo/enemigo.c:139: cpct_waitVSYNC();
   7E44 CD 44 95      [17]  512 	call	_cpct_waitVSYNC
                            513 ;src/enemigo/enemigo.c:140: redibujarBorracho();
   7E47 CD 95 7D      [17]  514 	call	_redibujarBorracho
                            515 ;src/enemigo/enemigo.c:141: borracho.mover = NO;
   7E4A 21 42 A1      [10]  516 	ld	hl,#(_borracho + 0x0006)
   7E4D 36 00         [10]  517 	ld	(hl),#0x00
   7E4F C9            [10]  518 	ret
                            519 ;src/enemigo/enemigo.c:147: void golpear(u8 direccion){
                            520 ;	---------------------------------
                            521 ; Function golpear
                            522 ; ---------------------------------
   7E50                     523 _golpear::
                            524 ;src/enemigo/enemigo.c:150: golpear_ani2(direccion);
   7E50 21 02 00      [10]  525 	ld	hl, #2+0
   7E53 39            [11]  526 	add	hl, sp
   7E54 7E            [ 7]  527 	ld	a, (hl)
   7E55 F5            [11]  528 	push	af
   7E56 33            [ 6]  529 	inc	sp
   7E57 CD C2 7D      [17]  530 	call	_golpear_ani2
   7E5A 33            [ 6]  531 	inc	sp
                            532 ;src/enemigo/enemigo.c:151: borracho.estado = 2;
   7E5B 21 43 A1      [10]  533 	ld	hl,#(_borracho + 0x0007)
   7E5E 36 02         [10]  534 	ld	(hl),#0x02
                            535 ;src/enemigo/enemigo.c:152: borracho.mover=SI;
   7E60 21 42 A1      [10]  536 	ld	hl,#(_borracho + 0x0006)
   7E63 36 01         [10]  537 	ld	(hl),#0x01
                            538 ;src/enemigo/enemigo.c:154: if(borracho.mover){
   7E65 3A 42 A1      [13]  539 	ld	a, (#(_borracho + 0x0006) + 0)
   7E68 B7            [ 4]  540 	or	a, a
   7E69 CA FF AA      [10]  541 	jp	Z,_restaVida
                            542 ;src/enemigo/enemigo.c:155: seleccionarSpriteBorracho();
   7E6C CD BF 7C      [17]  543 	call	_seleccionarSpriteBorracho
                            544 ;src/enemigo/enemigo.c:156: cpct_waitVSYNC();
   7E6F CD 44 95      [17]  545 	call	_cpct_waitVSYNC
                            546 ;src/enemigo/enemigo.c:157: redibujarBorracho();
   7E72 CD 95 7D      [17]  547 	call	_redibujarBorracho
                            548 ;src/enemigo/enemigo.c:158: borracho.mover = NO;
   7E75 21 42 A1      [10]  549 	ld	hl,#(_borracho + 0x0006)
   7E78 36 00         [10]  550 	ld	(hl),#0x00
                            551 ;src/enemigo/enemigo.c:161: restaVida();
   7E7A C3 FF AA      [10]  552 	jp  _restaVida
                            553 ;src/enemigo/enemigo.c:166: void quietoENE()
                            554 ;	---------------------------------
                            555 ; Function quietoENE
                            556 ; ---------------------------------
   7E7D                     557 _quietoENE::
                            558 ;src/enemigo/enemigo.c:168: borracho.estado=0;
   7E7D 21 43 A1      [10]  559 	ld	hl,#(_borracho + 0x0007)
   7E80 36 00         [10]  560 	ld	(hl),#0x00
                            561 ;src/enemigo/enemigo.c:169: borracho.mover = SI;
   7E82 21 42 A1      [10]  562 	ld	hl,#(_borracho + 0x0006)
   7E85 36 01         [10]  563 	ld	(hl),#0x01
                            564 ;src/enemigo/enemigo.c:170: borracho.nframe=0;
   7E87 21 46 A1      [10]  565 	ld	hl,#(_borracho + 0x000a)
   7E8A 36 00         [10]  566 	ld	(hl),#0x00
                            567 ;src/enemigo/enemigo.c:171: if(borracho.mover){
   7E8C 3A 42 A1      [13]  568 	ld	a, (#(_borracho + 0x0006) + 0)
   7E8F B7            [ 4]  569 	or	a, a
   7E90 C8            [11]  570 	ret	Z
                            571 ;src/enemigo/enemigo.c:172: seleccionarSpriteBorracho();
   7E91 CD BF 7C      [17]  572 	call	_seleccionarSpriteBorracho
                            573 ;src/enemigo/enemigo.c:173: cpct_waitVSYNC();
   7E94 CD 44 95      [17]  574 	call	_cpct_waitVSYNC
                            575 ;src/enemigo/enemigo.c:174: redibujarBorracho();
   7E97 CD 95 7D      [17]  576 	call	_redibujarBorracho
                            577 ;src/enemigo/enemigo.c:175: e=1;
   7E9A 21 4D A1      [10]  578 	ld	hl,#_e + 0
   7E9D 36 01         [10]  579 	ld	(hl), #0x01
                            580 ;src/enemigo/enemigo.c:176: borracho.mover = NO;
   7E9F 21 42 A1      [10]  581 	ld	hl,#(_borracho + 0x0006)
   7EA2 36 00         [10]  582 	ld	(hl),#0x00
   7EA4 C9            [10]  583 	ret
                            584 ;src/enemigo/enemigo.c:181: void mata_enemigo()
                            585 ;	---------------------------------
                            586 ; Function mata_enemigo
                            587 ; ---------------------------------
   7EA5                     588 _mata_enemigo::
   7EA5 DD E5         [15]  589 	push	ix
   7EA7 DD 21 00 00   [14]  590 	ld	ix,#0
   7EAB DD 39         [15]  591 	add	ix,sp
   7EAD 21 F4 FF      [10]  592 	ld	hl,#-12
   7EB0 39            [11]  593 	add	hl,sp
   7EB1 F9            [ 6]  594 	ld	sp,hl
                            595 ;src/enemigo/enemigo.c:183: u8 cX=get_CX();
   7EB2 CD E7 AC      [17]  596 	call	_get_CX
   7EB5 DD 75 F6      [19]  597 	ld	-10 (ix),l
                            598 ;src/enemigo/enemigo.c:184: u8 cY=get_CY();
   7EB8 CD EC AC      [17]  599 	call	_get_CY
                            600 ;src/enemigo/enemigo.c:188: if(borracho.x-5 < cX && cX < borracho.x)
   7EBB 3A 3C A1      [13]  601 	ld	a,(#_borracho+0)
   7EBE DD 77 FF      [19]  602 	ld	-1 (ix), a
   7EC1 DD 77 FD      [19]  603 	ld	-3 (ix),a
   7EC4 DD 36 FE 00   [19]  604 	ld	-2 (ix),#0x00
   7EC8 DD 7E FD      [19]  605 	ld	a,-3 (ix)
   7ECB C6 FB         [ 7]  606 	add	a,#0xFB
   7ECD 4F            [ 4]  607 	ld	c,a
   7ECE DD 7E FE      [19]  608 	ld	a,-2 (ix)
   7ED1 CE FF         [ 7]  609 	adc	a,#0xFF
   7ED3 47            [ 4]  610 	ld	b,a
   7ED4 DD 7E F6      [19]  611 	ld	a,-10 (ix)
   7ED7 DD 77 FB      [19]  612 	ld	-5 (ix),a
   7EDA DD 36 FC 00   [19]  613 	ld	-4 (ix),#0x00
                            614 ;src/enemigo/enemigo.c:191: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
   7EDE 2A 49 A1      [16]  615 	ld	hl,(_pmapa)
   7EE1 DD 75 F9      [19]  616 	ld	-7 (ix),l
   7EE4 DD 74 FA      [19]  617 	ld	-6 (ix),h
                            618 ;src/enemigo/enemigo.c:188: if(borracho.x-5 < cX && cX < borracho.x)
   7EE7 79            [ 4]  619 	ld	a,c
   7EE8 DD 96 FB      [19]  620 	sub	a, -5 (ix)
   7EEB 78            [ 4]  621 	ld	a,b
   7EEC DD 9E FC      [19]  622 	sbc	a, -4 (ix)
   7EEF E2 F4 7E      [10]  623 	jp	PO, 00148$
   7EF2 EE 80         [ 7]  624 	xor	a, #0x80
   7EF4                     625 00148$:
   7EF4 F2 74 7F      [10]  626 	jp	P,00105$
   7EF7 DD 7E F6      [19]  627 	ld	a,-10 (ix)
   7EFA DD 96 FF      [19]  628 	sub	a, -1 (ix)
   7EFD 30 75         [12]  629 	jr	NC,00105$
                            630 ;src/enemigo/enemigo.c:189: { u8 w = 4 + (borracho.px & 1);
   7EFF 21 3E A1      [10]  631 	ld	hl, #_borracho + 2
   7F02 4E            [ 7]  632 	ld	c,(hl)
   7F03 79            [ 4]  633 	ld	a,c
   7F04 E6 01         [ 7]  634 	and	a, #0x01
   7F06 5F            [ 4]  635 	ld	e,a
   7F07 1C            [ 4]  636 	inc	e
   7F08 1C            [ 4]  637 	inc	e
   7F09 1C            [ 4]  638 	inc	e
   7F0A 1C            [ 4]  639 	inc	e
                            640 ;src/enemigo/enemigo.c:190: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
   7F0B 21 3F A1      [10]  641 	ld	hl, #_borracho + 3
   7F0E 6E            [ 7]  642 	ld	l,(hl)
   7F0F 7D            [ 4]  643 	ld	a,l
   7F10 E6 03         [ 7]  644 	and	a, #0x03
   7F12 28 04         [12]  645 	jr	Z,00110$
   7F14 3E 01         [ 7]  646 	ld	a,#0x01
   7F16 18 02         [12]  647 	jr	00111$
   7F18                     648 00110$:
   7F18 3E 00         [ 7]  649 	ld	a,#0x00
   7F1A                     650 00111$:
   7F1A C6 07         [ 7]  651 	add	a, #0x07
   7F1C DD 77 F5      [19]  652 	ld	-11 (ix),a
                            653 ;src/enemigo/enemigo.c:191: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
   7F1F 45            [ 4]  654 	ld	b,l
   7F20 16 00         [ 7]  655 	ld	d,#0x00
   7F22 78            [ 4]  656 	ld	a,b
   7F23 C6 BC         [ 7]  657 	add	a,#0xBC
   7F25 DD 77 F7      [19]  658 	ld	-9 (ix),a
   7F28 7A            [ 4]  659 	ld	a,d
   7F29 CE FF         [ 7]  660 	adc	a,#0xFF
   7F2B DD 77 F8      [19]  661 	ld	-8 (ix),a
   7F2E DD 6E F7      [19]  662 	ld	l,-9 (ix)
   7F31 DD 66 F8      [19]  663 	ld	h,-8 (ix)
   7F34 DD CB F8 7E   [20]  664 	bit	7, -8 (ix)
   7F38 28 08         [12]  665 	jr	Z,00112$
   7F3A 78            [ 4]  666 	ld	a,b
   7F3B C6 BF         [ 7]  667 	add	a, #0xBF
   7F3D 6F            [ 4]  668 	ld	l,a
   7F3E 7A            [ 4]  669 	ld	a,d
   7F3F CE FF         [ 7]  670 	adc	a, #0xFF
   7F41 67            [ 4]  671 	ld	h,a
   7F42                     672 00112$:
   7F42 55            [ 4]  673 	ld	d,l
   7F43 CB 2C         [ 8]  674 	sra	h
   7F45 CB 1A         [ 8]  675 	rr	d
   7F47 CB 2C         [ 8]  676 	sra	h
   7F49 CB 1A         [ 8]  677 	rr	d
   7F4B 41            [ 4]  678 	ld	b,c
   7F4C CB 38         [ 8]  679 	srl	b
   7F4E DD 6E F9      [19]  680 	ld	l,-7 (ix)
   7F51 DD 66 FA      [19]  681 	ld	h,-6 (ix)
   7F54 E5            [11]  682 	push	hl
   7F55 21 80 E2      [10]  683 	ld	hl,#0xE280
   7F58 E5            [11]  684 	push	hl
   7F59 3E 28         [ 7]  685 	ld	a,#0x28
   7F5B F5            [11]  686 	push	af
   7F5C 33            [ 6]  687 	inc	sp
   7F5D DD 7E F5      [19]  688 	ld	a,-11 (ix)
   7F60 F5            [11]  689 	push	af
   7F61 33            [ 6]  690 	inc	sp
   7F62 7B            [ 4]  691 	ld	a,e
   7F63 F5            [11]  692 	push	af
   7F64 33            [ 6]  693 	inc	sp
   7F65 D5            [11]  694 	push	de
   7F66 33            [ 6]  695 	inc	sp
   7F67 C5            [11]  696 	push	bc
   7F68 33            [ 6]  697 	inc	sp
   7F69 CD E2 91      [17]  698 	call	_cpct_etm_drawTileBox2x4
                            699 ;src/enemigo/enemigo.c:192: j=1;
   7F6C 21 4F A1      [10]  700 	ld	hl,#_j + 0
   7F6F 36 01         [10]  701 	ld	(hl), #0x01
   7F71 C3 09 80      [10]  702 	jp	00108$
   7F74                     703 00105$:
                            704 ;src/enemigo/enemigo.c:195: else if(borracho.x<cX && cX<borracho.x+5)
   7F74 DD 7E FF      [19]  705 	ld	a,-1 (ix)
   7F77 DD 96 F6      [19]  706 	sub	a, -10 (ix)
   7F7A D2 09 80      [10]  707 	jp	NC,00108$
   7F7D DD 7E FD      [19]  708 	ld	a,-3 (ix)
   7F80 C6 05         [ 7]  709 	add	a, #0x05
   7F82 4F            [ 4]  710 	ld	c,a
   7F83 DD 7E FE      [19]  711 	ld	a,-2 (ix)
   7F86 CE 00         [ 7]  712 	adc	a, #0x00
   7F88 47            [ 4]  713 	ld	b,a
   7F89 DD 7E FB      [19]  714 	ld	a,-5 (ix)
   7F8C 91            [ 4]  715 	sub	a, c
   7F8D DD 7E FC      [19]  716 	ld	a,-4 (ix)
   7F90 98            [ 4]  717 	sbc	a, b
   7F91 E2 96 7F      [10]  718 	jp	PO, 00150$
   7F94 EE 80         [ 7]  719 	xor	a, #0x80
   7F96                     720 00150$:
   7F96 F2 09 80      [10]  721 	jp	P,00108$
                            722 ;src/enemigo/enemigo.c:197: u8 w = 4 + (borracho.px & 1);
   7F99 3A 3E A1      [13]  723 	ld	a,(#_borracho + 2)
   7F9C DD 77 F7      [19]  724 	ld	-9 (ix), a
   7F9F E6 01         [ 7]  725 	and	a, #0x01
   7FA1 C6 04         [ 7]  726 	add	a, #0x04
   7FA3 DD 77 F5      [19]  727 	ld	-11 (ix),a
                            728 ;src/enemigo/enemigo.c:198: u8 h = 7 + (borracho.py & 3 ? 1 : 0);
   7FA6 3A 3F A1      [13]  729 	ld	a,(#_borracho + 3)
   7FA9 DD 77 FB      [19]  730 	ld	-5 (ix), a
   7FAC E6 03         [ 7]  731 	and	a, #0x03
   7FAE 28 06         [12]  732 	jr	Z,00113$
   7FB0 DD 36 FD 01   [19]  733 	ld	-3 (ix),#0x01
   7FB4 18 04         [12]  734 	jr	00114$
   7FB6                     735 00113$:
   7FB6 DD 36 FD 00   [19]  736 	ld	-3 (ix),#0x00
   7FBA                     737 00114$:
   7FBA DD 7E FD      [19]  738 	ld	a,-3 (ix)
   7FBD C6 07         [ 7]  739 	add	a, #0x07
   7FBF DD 77 F4      [19]  740 	ld	-12 (ix),a
                            741 ;src/enemigo/enemigo.c:199: cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
   7FC2 DD 4E FB      [19]  742 	ld	c,-5 (ix)
   7FC5 06 00         [ 7]  743 	ld	b,#0x00
   7FC7 79            [ 4]  744 	ld	a,c
   7FC8 C6 BC         [ 7]  745 	add	a,#0xBC
   7FCA 5F            [ 4]  746 	ld	e,a
   7FCB 78            [ 4]  747 	ld	a,b
   7FCC CE FF         [ 7]  748 	adc	a,#0xFF
   7FCE 57            [ 4]  749 	ld	d,a
   7FCF 6B            [ 4]  750 	ld	l, e
   7FD0 62            [ 4]  751 	ld	h, d
   7FD1 CB 7A         [ 8]  752 	bit	7, d
   7FD3 28 04         [12]  753 	jr	Z,00115$
   7FD5 21 BF FF      [10]  754 	ld	hl,#0xFFBF
   7FD8 09            [11]  755 	add	hl,bc
   7FD9                     756 00115$:
   7FD9 55            [ 4]  757 	ld	d,l
   7FDA CB 2C         [ 8]  758 	sra	h
   7FDC CB 1A         [ 8]  759 	rr	d
   7FDE CB 2C         [ 8]  760 	sra	h
   7FE0 CB 1A         [ 8]  761 	rr	d
   7FE2 DD 46 F7      [19]  762 	ld	b,-9 (ix)
   7FE5 CB 38         [ 8]  763 	srl	b
   7FE7 DD 6E F9      [19]  764 	ld	l,-7 (ix)
   7FEA DD 66 FA      [19]  765 	ld	h,-6 (ix)
   7FED E5            [11]  766 	push	hl
   7FEE 21 80 E2      [10]  767 	ld	hl,#0xE280
   7FF1 E5            [11]  768 	push	hl
   7FF2 3E 28         [ 7]  769 	ld	a,#0x28
   7FF4 F5            [11]  770 	push	af
   7FF5 33            [ 6]  771 	inc	sp
   7FF6 DD 66 F4      [19]  772 	ld	h,-12 (ix)
   7FF9 DD 6E F5      [19]  773 	ld	l,-11 (ix)
   7FFC E5            [11]  774 	push	hl
   7FFD D5            [11]  775 	push	de
   7FFE 33            [ 6]  776 	inc	sp
   7FFF C5            [11]  777 	push	bc
   8000 33            [ 6]  778 	inc	sp
   8001 CD E2 91      [17]  779 	call	_cpct_etm_drawTileBox2x4
                            780 ;src/enemigo/enemigo.c:200: j=1;     
   8004 21 4F A1      [10]  781 	ld	hl,#_j + 0
   8007 36 01         [10]  782 	ld	(hl), #0x01
   8009                     783 00108$:
   8009 DD F9         [10]  784 	ld	sp, ix
   800B DD E1         [14]  785 	pop	ix
   800D C9            [10]  786 	ret
                            787 ;src/enemigo/enemigo.c:207: void quitar_vida()
                            788 ;	---------------------------------
                            789 ; Function quitar_vida
                            790 ; ---------------------------------
   800E                     791 _quitar_vida::
                            792 ;src/enemigo/enemigo.c:209: u8 x=get_X();
   800E CD DD AC      [17]  793 	call	_get_X
   8011 4D            [ 4]  794 	ld	c,l
                            795 ;src/enemigo/enemigo.c:211: if(borracho.x==x)
   8012 21 3C A1      [10]  796 	ld	hl,#_borracho+0
   8015 46            [ 7]  797 	ld	b,(hl)
   8016 79            [ 4]  798 	ld	a,c
   8017 90            [ 4]  799 	sub	a, b
   8018 C0            [11]  800 	ret	NZ
                            801 ;src/enemigo/enemigo.c:213: restaVida();
   8019 C3 FF AA      [10]  802 	jp  _restaVida
                            803 ;src/enemigo/enemigo.c:218: void wait4UserKeypress() {
                            804 ;	---------------------------------
                            805 ; Function wait4UserKeypress
                            806 ; ---------------------------------
   801C                     807 _wait4UserKeypress::
                            808 ;src/enemigo/enemigo.c:221: cpct_scanKeyboard_f(); 
   801C CD A3 90      [17]  809 	call	_cpct_scanKeyboard_f
                            810 ;src/enemigo/enemigo.c:222: if (cpct_isAnyKeyPressed()) 
   801F CD 65 94      [17]  811 	call	_cpct_isAnyKeyPressed
   8022 7D            [ 4]  812 	ld	a,l
   8023 B7            [ 4]  813 	or	a, a
   8024 C8            [11]  814 	ret	Z
                            815 ;src/enemigo/enemigo.c:224: if(cpct_isKeyPressed(Key_CursorRight)||cpct_isKeyPressed(Key_CursorLeft)||cpct_isKeyPressed(Key_CursorUp))
   8025 21 00 02      [10]  816 	ld	hl,#0x0200
   8028 CD 97 90      [17]  817 	call	_cpct_isKeyPressed
   802B 7D            [ 4]  818 	ld	a,l
   802C B7            [ 4]  819 	or	a, a
   802D 20 13         [12]  820 	jr	NZ,00101$
   802F 21 01 01      [10]  821 	ld	hl,#0x0101
   8032 CD 97 90      [17]  822 	call	_cpct_isKeyPressed
   8035 7D            [ 4]  823 	ld	a,l
   8036 B7            [ 4]  824 	or	a, a
   8037 20 09         [12]  825 	jr	NZ,00101$
   8039 21 00 01      [10]  826 	ld	hl,#0x0100
   803C CD 97 90      [17]  827 	call	_cpct_isKeyPressed
   803F 7D            [ 4]  828 	ld	a,l
   8040 B7            [ 4]  829 	or	a, a
   8041 C8            [11]  830 	ret	Z
   8042                     831 00101$:
                            832 ;src/enemigo/enemigo.c:226: c++;
   8042 21 50 A1      [10]  833 	ld	hl, #_c+0
   8045 34            [11]  834 	inc	(hl)
   8046 C0            [11]  835 	ret	NZ
   8047 21 51 A1      [10]  836 	ld	hl, #_c+1
   804A 34            [11]  837 	inc	(hl)
   804B C0            [11]  838 	ret	NZ
   804C 21 52 A1      [10]  839 	ld	hl, #_c+2
   804F 34            [11]  840 	inc	(hl)
   8050 C0            [11]  841 	ret	NZ
   8051 21 53 A1      [10]  842 	ld	hl, #_c+3
   8054 34            [11]  843 	inc	(hl)
   8055 C9            [10]  844 	ret
                            845 ;src/enemigo/enemigo.c:231: u8 get_BX(){
                            846 ;	---------------------------------
                            847 ; Function get_BX
                            848 ; ---------------------------------
   8056                     849 _get_BX::
                            850 ;src/enemigo/enemigo.c:232: return borracho.x;
   8056 21 3C A1      [10]  851 	ld	hl, #_borracho + 0
   8059 6E            [ 7]  852 	ld	l,(hl)
   805A C9            [10]  853 	ret
                            854 ;src/enemigo/enemigo.c:235: u8 get_BY(){
                            855 ;	---------------------------------
                            856 ; Function get_BY
                            857 ; ---------------------------------
   805B                     858 _get_BY::
                            859 ;src/enemigo/enemigo.c:236: return borracho.y;
   805B 21 3D A1      [10]  860 	ld	hl, #(_borracho + 0x0001) + 0
   805E 6E            [ 7]  861 	ld	l,(hl)
   805F C9            [10]  862 	ret
                            863 ;src/enemigo/enemigo.c:240: void reviveIA( )
                            864 ;	---------------------------------
                            865 ; Function reviveIA
                            866 ; ---------------------------------
   8060                     867 _reviveIA::
                            868 ;src/enemigo/enemigo.c:244: cpct_srand(c);
   8060 FD 21 50 A1   [14]  869 	ld	iy,#_c
   8064 FD 6E 00      [19]  870 	ld	l,0 (iy)
   8067 FD 21 50 A1   [14]  871 	ld	iy,#_c
   806B FD 66 01      [19]  872 	ld	h,1 (iy)
   806E FD 21 50 A1   [14]  873 	ld	iy,#_c
   8072 FD 5E 02      [19]  874 	ld	e,2 (iy)
   8075 FD 21 50 A1   [14]  875 	ld	iy,#_c
   8079 FD 56 03      [19]  876 	ld	d,3 (iy)
   807C CD 64 93      [17]  877 	call	_cpct_setSeed_mxor
   807F CD 6C 93      [17]  878 	call	_cpct_restoreState_mxor_u8
                            879 ;src/enemigo/enemigo.c:245: random=cpct_rand()%70;
   8082 CD 72 93      [17]  880 	call	_cpct_getRandom_mxor_u8
   8085 45            [ 4]  881 	ld	b,l
   8086 3E 46         [ 7]  882 	ld	a,#0x46
   8088 F5            [11]  883 	push	af
   8089 33            [ 6]  884 	inc	sp
   808A C5            [11]  885 	push	bc
   808B 33            [ 6]  886 	inc	sp
   808C CD 71 92      [17]  887 	call	__moduchar
   808F F1            [10]  888 	pop	af
   8090 4D            [ 4]  889 	ld	c,l
                            890 ;src/enemigo/enemigo.c:246: borracho.x=borracho.px=5+random;
   8091 21 3E A1      [10]  891 	ld	hl,#_borracho + 2
   8094 79            [ 4]  892 	ld	a,c
   8095 C6 05         [ 7]  893 	add	a, #0x05
   8097 77            [ 7]  894 	ld	(hl),a
   8098 32 3C A1      [13]  895 	ld	(#_borracho),a
                            896 ;src/enemigo/enemigo.c:247: borracho.y=borracho.py=162;
   809B 21 3F A1      [10]  897 	ld	hl,#(_borracho + 0x0003)
   809E 36 A2         [10]  898 	ld	(hl),#0xA2
   80A0 21 3D A1      [10]  899 	ld	hl,#(_borracho + 0x0001)
   80A3 36 A2         [10]  900 	ld	(hl),#0xA2
                            901 ;src/enemigo/enemigo.c:248: pmapa=mapaJug;
   80A5 2A 4B A1      [16]  902 	ld	hl,(_mapaJug)
   80A8 22 49 A1      [16]  903 	ld	(_pmapa),hl
                            904 ;src/enemigo/enemigo.c:249: c=0;
   80AB AF            [ 4]  905 	xor	a, a
   80AC 32 50 A1      [13]  906 	ld	(#_c + 0),a
   80AF 32 51 A1      [13]  907 	ld	(#_c + 1),a
   80B2 32 52 A1      [13]  908 	ld	(#_c + 2),a
   80B5 32 53 A1      [13]  909 	ld	(#_c + 3),a
                            910 ;src/enemigo/enemigo.c:250: j=0;
   80B8 21 4F A1      [10]  911 	ld	hl,#_j + 0
   80BB 36 00         [10]  912 	ld	(hl), #0x00
                            913 ;src/enemigo/enemigo.c:251: redibujarBorracho();
   80BD CD 95 7D      [17]  914 	call	_redibujarBorracho
                            915 ;src/enemigo/enemigo.c:252: ini_estado();
   80C0 C3 18 83      [10]  916 	jp  _ini_estado
                            917 ;src/enemigo/enemigo.c:255: void IA()
                            918 ;	---------------------------------
                            919 ; Function IA
                            920 ; ---------------------------------
   80C3                     921 _IA::
   80C3 DD E5         [15]  922 	push	ix
   80C5 DD 21 00 00   [14]  923 	ld	ix,#0
   80C9 DD 39         [15]  924 	add	ix,sp
   80CB 21 F6 FF      [10]  925 	ld	hl,#-10
   80CE 39            [11]  926 	add	hl,sp
   80CF F9            [ 6]  927 	ld	sp,hl
                            928 ;src/enemigo/enemigo.c:258: u8 x = get_X();
   80D0 CD DD AC      [17]  929 	call	_get_X
   80D3 DD 75 F6      [19]  930 	ld	-10 (ix),l
                            931 ;src/enemigo/enemigo.c:259: u8 y = get_Y();
   80D6 CD E2 AC      [17]  932 	call	_get_Y
   80D9 DD 75 F7      [19]  933 	ld	-9 (ix),l
                            934 ;src/enemigo/enemigo.c:261: mapaJug=get_tip_mapa();
   80DC CD F9 AC      [17]  935 	call	_get_tip_mapa
   80DF 22 4B A1      [16]  936 	ld	(_mapaJug),hl
                            937 ;src/enemigo/enemigo.c:262: if(mapaJug==pmapa)
   80E2 3A 4B A1      [13]  938 	ld	a,(#_mapaJug + 0)
   80E5 FD 21 49 A1   [14]  939 	ld	iy,#_pmapa
   80E9 FD 96 00      [19]  940 	sub	a, 0 (iy)
   80EC C2 FE 82      [10]  941 	jp	NZ,00140$
   80EF 3A 4C A1      [13]  942 	ld	a,(#_mapaJug + 1)
   80F2 FD 21 49 A1   [14]  943 	ld	iy,#_pmapa
   80F6 FD 96 01      [19]  944 	sub	a, 1 (iy)
   80F9 C2 FE 82      [10]  945 	jp	NZ,00140$
                            946 ;src/enemigo/enemigo.c:264: wait4UserKeypress();
   80FC CD 1C 80      [17]  947 	call	_wait4UserKeypress
                            948 ;src/enemigo/enemigo.c:265: if(borracho.x-20 < x && x < borracho.x-6 && y==borracho.y-6)
   80FF 01 3C A1      [10]  949 	ld	bc,#_borracho+0
   8102 0A            [ 7]  950 	ld	a,(bc)
   8103 5F            [ 4]  951 	ld	e,a
   8104 16 00         [ 7]  952 	ld	d,#0x00
   8106 7B            [ 4]  953 	ld	a,e
   8107 C6 EC         [ 7]  954 	add	a,#0xEC
   8109 6F            [ 4]  955 	ld	l,a
   810A 7A            [ 4]  956 	ld	a,d
   810B CE FF         [ 7]  957 	adc	a,#0xFF
   810D 67            [ 4]  958 	ld	h,a
   810E DD 7E F6      [19]  959 	ld	a,-10 (ix)
   8111 DD 77 F8      [19]  960 	ld	-8 (ix),a
   8114 DD 36 F9 00   [19]  961 	ld	-7 (ix),#0x00
   8118 DD 7E F7      [19]  962 	ld	a,-9 (ix)
   811B DD 77 FE      [19]  963 	ld	-2 (ix),a
   811E DD 36 FF 00   [19]  964 	ld	-1 (ix),#0x00
   8122 7D            [ 4]  965 	ld	a,l
   8123 DD 96 F8      [19]  966 	sub	a, -8 (ix)
   8126 7C            [ 4]  967 	ld	a,h
   8127 DD 9E F9      [19]  968 	sbc	a, -7 (ix)
   812A E2 2F 81      [10]  969 	jp	PO, 00242$
   812D EE 80         [ 7]  970 	xor	a, #0x80
   812F                     971 00242$:
   812F F2 7E 81      [10]  972 	jp	P,00135$
   8132 7B            [ 4]  973 	ld	a,e
   8133 C6 FA         [ 7]  974 	add	a,#0xFA
   8135 6F            [ 4]  975 	ld	l,a
   8136 7A            [ 4]  976 	ld	a,d
   8137 CE FF         [ 7]  977 	adc	a,#0xFF
   8139 67            [ 4]  978 	ld	h,a
   813A DD 7E F8      [19]  979 	ld	a,-8 (ix)
   813D 95            [ 4]  980 	sub	a, l
   813E DD 7E F9      [19]  981 	ld	a,-7 (ix)
   8141 9C            [ 4]  982 	sbc	a, h
   8142 E2 47 81      [10]  983 	jp	PO, 00243$
   8145 EE 80         [ 7]  984 	xor	a, #0x80
   8147                     985 00243$:
   8147 F2 7E 81      [10]  986 	jp	P,00135$
   814A 21 3D A1      [10]  987 	ld	hl,#_borracho+1
   814D 6E            [ 7]  988 	ld	l,(hl)
   814E 26 00         [ 7]  989 	ld	h,#0x00
   8150 7D            [ 4]  990 	ld	a,l
   8151 C6 FA         [ 7]  991 	add	a,#0xFA
   8153 DD 77 FC      [19]  992 	ld	-4 (ix),a
   8156 7C            [ 4]  993 	ld	a,h
   8157 CE FF         [ 7]  994 	adc	a,#0xFF
   8159 DD 77 FD      [19]  995 	ld	-3 (ix),a
   815C DD 7E FE      [19]  996 	ld	a,-2 (ix)
   815F DD 96 FC      [19]  997 	sub	a, -4 (ix)
   8162 20 1A         [12]  998 	jr	NZ,00135$
   8164 DD 7E FF      [19]  999 	ld	a,-1 (ix)
   8167 DD 96 FD      [19] 1000 	sub	a, -3 (ix)
   816A 20 12         [12] 1001 	jr	NZ,00135$
                           1002 ;src/enemigo/enemigo.c:267: if(j==0)
   816C 3A 4F A1      [13] 1003 	ld	a,(#_j + 0)
   816F B7            [ 4] 1004 	or	a, a
   8170 C2 01 83      [10] 1005 	jp	NZ,00142$
                           1006 ;src/enemigo/enemigo.c:269: izquierda();
   8173 CD F8 7D      [17] 1007 	call	_izquierda
                           1008 ;src/enemigo/enemigo.c:270: e=0;
   8176 21 4D A1      [10] 1009 	ld	hl,#_e + 0
   8179 36 00         [10] 1010 	ld	(hl), #0x00
   817B C3 01 83      [10] 1011 	jp	00142$
   817E                    1012 00135$:
                           1013 ;src/enemigo/enemigo.c:274: else if(borracho.x+8<x && x<borracho.x+20 && y==borracho.y-6)
   817E 21 08 00      [10] 1014 	ld	hl,#0x0008
   8181 19            [11] 1015 	add	hl,de
   8182 7D            [ 4] 1016 	ld	a,l
   8183 DD 96 F8      [19] 1017 	sub	a, -8 (ix)
   8186 7C            [ 4] 1018 	ld	a,h
   8187 DD 9E F9      [19] 1019 	sbc	a, -7 (ix)
   818A E2 8F 81      [10] 1020 	jp	PO, 00246$
   818D EE 80         [ 7] 1021 	xor	a, #0x80
   818F                    1022 00246$:
   818F F2 D2 81      [10] 1023 	jp	P,00130$
   8192 21 14 00      [10] 1024 	ld	hl,#0x0014
   8195 19            [11] 1025 	add	hl,de
   8196 DD 7E F8      [19] 1026 	ld	a,-8 (ix)
   8199 95            [ 4] 1027 	sub	a, l
   819A DD 7E F9      [19] 1028 	ld	a,-7 (ix)
   819D 9C            [ 4] 1029 	sbc	a, h
   819E E2 A3 81      [10] 1030 	jp	PO, 00247$
   81A1 EE 80         [ 7] 1031 	xor	a, #0x80
   81A3                    1032 00247$:
   81A3 F2 D2 81      [10] 1033 	jp	P,00130$
   81A6 21 3D A1      [10] 1034 	ld	hl,#_borracho+1
   81A9 5E            [ 7] 1035 	ld	e,(hl)
   81AA 16 00         [ 7] 1036 	ld	d,#0x00
   81AC 7B            [ 4] 1037 	ld	a,e
   81AD C6 FA         [ 7] 1038 	add	a,#0xFA
   81AF 5F            [ 4] 1039 	ld	e,a
   81B0 7A            [ 4] 1040 	ld	a,d
   81B1 CE FF         [ 7] 1041 	adc	a,#0xFF
   81B3 57            [ 4] 1042 	ld	d,a
   81B4 DD 7E FE      [19] 1043 	ld	a,-2 (ix)
   81B7 93            [ 4] 1044 	sub	a, e
   81B8 20 18         [12] 1045 	jr	NZ,00130$
   81BA DD 7E FF      [19] 1046 	ld	a,-1 (ix)
   81BD 92            [ 4] 1047 	sub	a, d
   81BE 20 12         [12] 1048 	jr	NZ,00130$
                           1049 ;src/enemigo/enemigo.c:276: if(j==0)
   81C0 3A 4F A1      [13] 1050 	ld	a,(#_j + 0)
   81C3 B7            [ 4] 1051 	or	a, a
   81C4 C2 01 83      [10] 1052 	jp	NZ,00142$
                           1053 ;src/enemigo/enemigo.c:278: derecha();
   81C7 CD 25 7E      [17] 1054 	call	_derecha
                           1055 ;src/enemigo/enemigo.c:279: e=0;
   81CA 21 4D A1      [10] 1056 	ld	hl,#_e + 0
   81CD 36 00         [10] 1057 	ld	(hl), #0x00
   81CF C3 01 83      [10] 1058 	jp	00142$
   81D2                    1059 00130$:
                           1060 ;src/enemigo/enemigo.c:284: if(e==0)
   81D2 3A 4D A1      [13] 1061 	ld	a,(#_e + 0)
   81D5 B7            [ 4] 1062 	or	a, a
   81D6 20 05         [12] 1063 	jr	NZ,00106$
                           1064 ;src/enemigo/enemigo.c:286: quietoENE();
   81D8 C5            [11] 1065 	push	bc
   81D9 CD 7D 7E      [17] 1066 	call	_quietoENE
   81DC C1            [10] 1067 	pop	bc
   81DD                    1068 00106$:
                           1069 ;src/enemigo/enemigo.c:289: if( borracho.x-20 < x && x <= borracho.x-6 && (y<162 && y>135)){
   81DD 0A            [ 7] 1070 	ld	a,(bc)
   81DE 4F            [ 4] 1071 	ld	c,a
   81DF 59            [ 4] 1072 	ld	e,c
   81E0 16 00         [ 7] 1073 	ld	d,#0x00
   81E2 7B            [ 4] 1074 	ld	a,e
   81E3 C6 EC         [ 7] 1075 	add	a,#0xEC
   81E5 47            [ 4] 1076 	ld	b,a
   81E6 7A            [ 4] 1077 	ld	a,d
   81E7 CE FF         [ 7] 1078 	adc	a,#0xFF
   81E9 6F            [ 4] 1079 	ld	l,a
   81EA DD 7E F7      [19] 1080 	ld	a,-9 (ix)
   81ED D6 A2         [ 7] 1081 	sub	a, #0xA2
   81EF 3E 00         [ 7] 1082 	ld	a,#0x00
   81F1 17            [ 4] 1083 	rla
   81F2 DD 77 FC      [19] 1084 	ld	-4 (ix),a
   81F5 3E 87         [ 7] 1085 	ld	a,#0x87
   81F7 DD 96 F7      [19] 1086 	sub	a, -9 (ix)
   81FA 3E 00         [ 7] 1087 	ld	a,#0x00
   81FC 17            [ 4] 1088 	rla
   81FD DD 77 FE      [19] 1089 	ld	-2 (ix),a
   8200 78            [ 4] 1090 	ld	a,b
   8201 DD 96 F8      [19] 1091 	sub	a, -8 (ix)
   8204 7D            [ 4] 1092 	ld	a,l
   8205 DD 9E F9      [19] 1093 	sbc	a, -7 (ix)
   8208 E2 0D 82      [10] 1094 	jp	PO, 00250$
   820B EE 80         [ 7] 1095 	xor	a, #0x80
   820D                    1096 00250$:
   820D F2 44 82      [10] 1097 	jp	P,00124$
   8210 7B            [ 4] 1098 	ld	a,e
   8211 C6 FA         [ 7] 1099 	add	a,#0xFA
   8213 47            [ 4] 1100 	ld	b,a
   8214 7A            [ 4] 1101 	ld	a,d
   8215 CE FF         [ 7] 1102 	adc	a,#0xFF
   8217 6F            [ 4] 1103 	ld	l,a
   8218 78            [ 4] 1104 	ld	a,b
   8219 DD 96 F8      [19] 1105 	sub	a, -8 (ix)
   821C 7D            [ 4] 1106 	ld	a,l
   821D DD 9E F9      [19] 1107 	sbc	a, -7 (ix)
   8220 E2 25 82      [10] 1108 	jp	PO, 00251$
   8223 EE 80         [ 7] 1109 	xor	a, #0x80
   8225                    1110 00251$:
   8225 FA 44 82      [10] 1111 	jp	M,00124$
   8228 DD 7E FC      [19] 1112 	ld	a,-4 (ix)
   822B B7            [ 4] 1113 	or	a, a
   822C 28 16         [12] 1114 	jr	Z,00124$
   822E DD 7E FE      [19] 1115 	ld	a,-2 (ix)
   8231 B7            [ 4] 1116 	or	a, a
   8232 28 10         [12] 1117 	jr	Z,00124$
                           1118 ;src/enemigo/enemigo.c:291: golpear(E_izquierda);
   8234 3E 01         [ 7] 1119 	ld	a,#0x01
   8236 F5            [11] 1120 	push	af
   8237 33            [ 6] 1121 	inc	sp
   8238 CD 50 7E      [17] 1122 	call	_golpear
   823B 33            [ 6] 1123 	inc	sp
                           1124 ;src/enemigo/enemigo.c:293: e=1;
   823C 21 4D A1      [10] 1125 	ld	hl,#_e + 0
   823F 36 01         [10] 1126 	ld	(hl), #0x01
   8241 C3 01 83      [10] 1127 	jp	00142$
   8244                    1128 00124$:
                           1129 ;src/enemigo/enemigo.c:294: }else if(borracho.x+8<=x && x<borracho.x+20 && (y<162 && y>135)){
   8244 21 08 00      [10] 1130 	ld	hl,#0x0008
   8247 19            [11] 1131 	add	hl,de
   8248 DD 75 FA      [19] 1132 	ld	-6 (ix),l
   824B DD 74 FB      [19] 1133 	ld	-5 (ix),h
   824E DD 7E F8      [19] 1134 	ld	a,-8 (ix)
   8251 DD 96 FA      [19] 1135 	sub	a, -6 (ix)
   8254 DD 7E F9      [19] 1136 	ld	a,-7 (ix)
   8257 DD 9E FB      [19] 1137 	sbc	a, -5 (ix)
   825A E2 5F 82      [10] 1138 	jp	PO, 00252$
   825D EE 80         [ 7] 1139 	xor	a, #0x80
   825F                    1140 00252$:
   825F FA 90 82      [10] 1141 	jp	M,00118$
   8262 21 14 00      [10] 1142 	ld	hl,#0x0014
   8265 19            [11] 1143 	add	hl,de
   8266 DD 7E F8      [19] 1144 	ld	a,-8 (ix)
   8269 95            [ 4] 1145 	sub	a, l
   826A DD 7E F9      [19] 1146 	ld	a,-7 (ix)
   826D 9C            [ 4] 1147 	sbc	a, h
   826E E2 73 82      [10] 1148 	jp	PO, 00253$
   8271 EE 80         [ 7] 1149 	xor	a, #0x80
   8273                    1150 00253$:
   8273 F2 90 82      [10] 1151 	jp	P,00118$
   8276 DD 7E FC      [19] 1152 	ld	a,-4 (ix)
   8279 B7            [ 4] 1153 	or	a, a
   827A 28 14         [12] 1154 	jr	Z,00118$
   827C DD 7E FE      [19] 1155 	ld	a,-2 (ix)
   827F B7            [ 4] 1156 	or	a, a
   8280 28 0E         [12] 1157 	jr	Z,00118$
                           1158 ;src/enemigo/enemigo.c:295: golpear(E_derecha);
   8282 AF            [ 4] 1159 	xor	a, a
   8283 F5            [11] 1160 	push	af
   8284 33            [ 6] 1161 	inc	sp
   8285 CD 50 7E      [17] 1162 	call	_golpear
   8288 33            [ 6] 1163 	inc	sp
                           1164 ;src/enemigo/enemigo.c:297: e=1;
   8289 21 4D A1      [10] 1165 	ld	hl,#_e + 0
   828C 36 01         [10] 1166 	ld	(hl), #0x01
   828E 18 71         [12] 1167 	jr	00142$
   8290                    1168 00118$:
                           1169 ;src/enemigo/enemigo.c:299: else if(borracho.x<x && x<borracho.x+G_BORRACHO_0_W && y==156){
   8290 DD 7E F7      [19] 1170 	ld	a,-9 (ix)
   8293 D6 9C         [ 7] 1171 	sub	a, #0x9C
   8295 20 04         [12] 1172 	jr	NZ,00254$
   8297 3E 01         [ 7] 1173 	ld	a,#0x01
   8299 18 01         [12] 1174 	jr	00255$
   829B                    1175 00254$:
   829B AF            [ 4] 1176 	xor	a,a
   829C                    1177 00255$:
   829C 6F            [ 4] 1178 	ld	l,a
   829D 79            [ 4] 1179 	ld	a,c
   829E DD 96 F6      [19] 1180 	sub	a, -10 (ix)
   82A1 30 25         [12] 1181 	jr	NC,00113$
   82A3 DD 7E F8      [19] 1182 	ld	a,-8 (ix)
   82A6 DD 96 FA      [19] 1183 	sub	a, -6 (ix)
   82A9 DD 7E F9      [19] 1184 	ld	a,-7 (ix)
   82AC DD 9E FB      [19] 1185 	sbc	a, -5 (ix)
   82AF E2 B4 82      [10] 1186 	jp	PO, 00256$
   82B2 EE 80         [ 7] 1187 	xor	a, #0x80
   82B4                    1188 00256$:
   82B4 F2 C8 82      [10] 1189 	jp	P,00113$
   82B7 7D            [ 4] 1190 	ld	a,l
   82B8 B7            [ 4] 1191 	or	a, a
   82B9 28 0D         [12] 1192 	jr	Z,00113$
                           1193 ;src/enemigo/enemigo.c:300: izquierda();
   82BB CD F8 7D      [17] 1194 	call	_izquierda
                           1195 ;src/enemigo/enemigo.c:301: dibujarProta();
   82BE CD 7A A1      [17] 1196 	call	_dibujarProta
                           1197 ;src/enemigo/enemigo.c:302: e=1;
   82C1 21 4D A1      [10] 1198 	ld	hl,#_e + 0
   82C4 36 01         [10] 1199 	ld	(hl), #0x01
   82C6 18 39         [12] 1200 	jr	00142$
   82C8                    1201 00113$:
                           1202 ;src/enemigo/enemigo.c:304: else if(borracho.x-10<x && x<borracho.x && y==156){
   82C8 7B            [ 4] 1203 	ld	a,e
   82C9 C6 F6         [ 7] 1204 	add	a,#0xF6
   82CB 5F            [ 4] 1205 	ld	e,a
   82CC 7A            [ 4] 1206 	ld	a,d
   82CD CE FF         [ 7] 1207 	adc	a,#0xFF
   82CF 57            [ 4] 1208 	ld	d,a
   82D0 7B            [ 4] 1209 	ld	a,e
   82D1 DD 96 F8      [19] 1210 	sub	a, -8 (ix)
   82D4 7A            [ 4] 1211 	ld	a,d
   82D5 DD 9E F9      [19] 1212 	sbc	a, -7 (ix)
   82D8 E2 DD 82      [10] 1213 	jp	PO, 00257$
   82DB EE 80         [ 7] 1214 	xor	a, #0x80
   82DD                    1215 00257$:
   82DD F2 F7 82      [10] 1216 	jp	P,00108$
   82E0 DD 7E F6      [19] 1217 	ld	a,-10 (ix)
   82E3 91            [ 4] 1218 	sub	a, c
   82E4 30 11         [12] 1219 	jr	NC,00108$
   82E6 7D            [ 4] 1220 	ld	a,l
   82E7 B7            [ 4] 1221 	or	a, a
   82E8 28 0D         [12] 1222 	jr	Z,00108$
                           1223 ;src/enemigo/enemigo.c:305: derecha();
   82EA CD 25 7E      [17] 1224 	call	_derecha
                           1225 ;src/enemigo/enemigo.c:306: dibujarProta();
   82ED CD 7A A1      [17] 1226 	call	_dibujarProta
                           1227 ;src/enemigo/enemigo.c:307: e=1;
   82F0 21 4D A1      [10] 1228 	ld	hl,#_e + 0
   82F3 36 01         [10] 1229 	ld	(hl), #0x01
   82F5 18 0A         [12] 1230 	jr	00142$
   82F7                    1231 00108$:
                           1232 ;src/enemigo/enemigo.c:310: e=0;
   82F7 21 4D A1      [10] 1233 	ld	hl,#_e + 0
   82FA 36 00         [10] 1234 	ld	(hl), #0x00
   82FC 18 03         [12] 1235 	jr	00142$
   82FE                    1236 00140$:
                           1237 ;src/enemigo/enemigo.c:315: reviveIA();
   82FE CD 60 80      [17] 1238 	call	_reviveIA
   8301                    1239 00142$:
   8301 DD F9         [10] 1240 	ld	sp, ix
   8303 DD E1         [14] 1241 	pop	ix
   8305 C9            [10] 1242 	ret
                           1243 ;src/enemigo/enemigo.c:320: u8 alive()
                           1244 ;	---------------------------------
                           1245 ; Function alive
                           1246 ; ---------------------------------
   8306                    1247 _alive::
                           1248 ;src/enemigo/enemigo.c:322: return j;
   8306 FD 21 4F A1   [14] 1249 	ld	iy,#_j
   830A FD 6E 00      [19] 1250 	ld	l,0 (iy)
   830D C9            [10] 1251 	ret
                           1252 ;src/enemigo/enemigo.c:325: void BOestado(u8 k)
                           1253 ;	---------------------------------
                           1254 ; Function BOestado
                           1255 ; ---------------------------------
   830E                    1256 _BOestado::
                           1257 ;src/enemigo/enemigo.c:327: switch(k)
   830E 21 02 00      [10] 1258 	ld	hl, #2+0
   8311 39            [11] 1259 	add	hl, sp
   8312 7E            [ 7] 1260 	ld	a, (hl)
   8313 B7            [ 4] 1261 	or	a, a
   8314 C0            [11] 1262 	ret	NZ
                           1263 ;src/enemigo/enemigo.c:329: case 0: IA();  break;
                           1264 ;src/enemigo/enemigo.c:331: }
   8315 C3 C3 80      [10] 1265 	jp  _IA
                           1266 ;src/enemigo/enemigo.c:334: void ini_estado()
                           1267 ;	---------------------------------
                           1268 ; Function ini_estado
                           1269 ; ---------------------------------
   8318                    1270 _ini_estado::
                           1271 ;src/enemigo/enemigo.c:336: BOestado(0);
   8318 AF            [ 4] 1272 	xor	a, a
   8319 F5            [11] 1273 	push	af
   831A 33            [ 6] 1274 	inc	sp
   831B CD 0E 83      [17] 1275 	call	_BOestado
   831E 33            [ 6] 1276 	inc	sp
   831F C9            [10] 1277 	ret
                           1278 ;src/enemigo/enemigo.c:339: void inicializar_borracho()
                           1279 ;	---------------------------------
                           1280 ; Function inicializar_borracho
                           1281 ; ---------------------------------
   8320                    1282 _inicializar_borracho::
                           1283 ;src/enemigo/enemigo.c:342: borracho.x= borracho.px = 60;
   8320 21 3E A1      [10] 1284 	ld	hl,#(_borracho + 0x0002)
   8323 36 3C         [10] 1285 	ld	(hl),#0x3C
   8325 21 3C A1      [10] 1286 	ld	hl,#_borracho
   8328 36 3C         [10] 1287 	ld	(hl),#0x3C
                           1288 ;src/enemigo/enemigo.c:343: borracho.y= borracho.py = 162;
   832A 21 3F A1      [10] 1289 	ld	hl,#(_borracho + 0x0003)
   832D 36 A2         [10] 1290 	ld	(hl),#0xA2
   832F 21 3D A1      [10] 1291 	ld	hl,#(_borracho + 0x0001)
   8332 36 A2         [10] 1292 	ld	(hl),#0xA2
                           1293 ;src/enemigo/enemigo.c:344: borracho.mover=SI;
   8334 21 42 A1      [10] 1294 	ld	hl,#(_borracho + 0x0006)
   8337 36 01         [10] 1295 	ld	(hl),#0x01
                           1296 ;src/enemigo/enemigo.c:345: borracho.estado = 0;//quieto
   8339 21 43 A1      [10] 1297 	ld	hl,#(_borracho + 0x0007)
   833C 36 00         [10] 1298 	ld	(hl),#0x00
                           1299 ;src/enemigo/enemigo.c:346: borracho.nframe = 0;
   833E 21 46 A1      [10] 1300 	ld	hl,#(_borracho + 0x000a)
   8341 36 00         [10] 1301 	ld	(hl),#0x00
                           1302 ;src/enemigo/enemigo.c:347: borracho.frame  = &g_Frames[0];
   8343 21 5F 7C      [10] 1303 	ld	hl,#_g_Frames
   8346 22 44 A1      [16] 1304 	ld	((_borracho + 0x0008)), hl
                           1305 ;src/enemigo/enemigo.c:348: borracho.mira   = E_derecha;
   8349 21 47 A1      [10] 1306 	ld	hl,#(_borracho + 0x000b)
   834C 36 00         [10] 1307 	ld	(hl),#0x00
                           1308 ;src/enemigo/enemigo.c:349: pmapa=g_map1;
   834E 21 F0 5E      [10] 1309 	ld	hl,#_g_map1+0
   8351 22 49 A1      [16] 1310 	ld	(_pmapa),hl
                           1311 ;src/enemigo/enemigo.c:350: mapaJug=get_tip_mapa();
   8354 CD F9 AC      [17] 1312 	call	_get_tip_mapa
   8357 22 4B A1      [16] 1313 	ld	(_mapaJug),hl
                           1314 ;src/enemigo/enemigo.c:351: e=0;
   835A 21 4D A1      [10] 1315 	ld	hl,#_e + 0
   835D 36 00         [10] 1316 	ld	(hl), #0x00
                           1317 ;src/enemigo/enemigo.c:352: c=0;
   835F AF            [ 4] 1318 	xor	a, a
   8360 32 50 A1      [13] 1319 	ld	(#_c + 0),a
   8363 32 51 A1      [13] 1320 	ld	(#_c + 1),a
   8366 32 52 A1      [13] 1321 	ld	(#_c + 2),a
   8369 32 53 A1      [13] 1322 	ld	(#_c + 3),a
                           1323 ;src/enemigo/enemigo.c:353: j=0;
   836C 21 4F A1      [10] 1324 	ld	hl,#_j + 0
   836F 36 00         [10] 1325 	ld	(hl), #0x00
                           1326 ;src/enemigo/enemigo.c:354: dibujarBorracho();
   8371 C3 F6 7C      [10] 1327 	jp  _dibujarBorracho
                           1328 	.area _CODE
                           1329 	.area _INITIALIZER
                           1330 	.area _CABS (ABS)
