                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _teclado
                             13 	.globl _cambiaEstado
                             14 	.globl _inicializar
                             15 	.globl _muerteJug
                             16 	.globl _fin
                             17 	.globl _presenta
                             18 	.globl _inicializar_borracho
                             19 	.globl _ejecutar_jugador
                             20 	.globl _get_mapa
                             21 	.globl _get_X
                             22 	.globl _inicializar_jugador
                             23 	.globl _cpct_etm_setTileset2x4
                             24 	.globl _cpct_setPALColour
                             25 	.globl _cpct_setPalette
                             26 	.globl _cpct_waitVSYNC
                             27 	.globl _cpct_setVideoMode
                             28 	.globl _cpct_drawStringM0
                             29 	.globl _cpct_drawSprite
                             30 	.globl _cpct_isKeyPressed
                             31 	.globl _cpct_scanKeyboard_f
                             32 	.globl _cpct_memset
                             33 	.globl _cpct_disableFirmware
                             34 	.globl _estados
                             35 ;--------------------------------------------------------
                             36 ; special function registers
                             37 ;--------------------------------------------------------
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DATA
   A13B                      42 _estados::
   A13B                      43 	.ds 1
                             44 ;--------------------------------------------------------
                             45 ; ram data
                             46 ;--------------------------------------------------------
                             47 	.area _INITIALIZED
                             48 ;--------------------------------------------------------
                             49 ; absolute external ram data
                             50 ;--------------------------------------------------------
                             51 	.area _DABS (ABS)
                             52 ;--------------------------------------------------------
                             53 ; global & static initialisations
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _GSINIT
                             57 	.area _GSFINAL
                             58 	.area _GSINIT
                             59 ;--------------------------------------------------------
                             60 ; Home
                             61 ;--------------------------------------------------------
                             62 	.area _HOME
                             63 	.area _HOME
                             64 ;--------------------------------------------------------
                             65 ; code
                             66 ;--------------------------------------------------------
                             67 	.area _CODE
                             68 ;src/main.c:36: void presenta()
                             69 ;	---------------------------------
                             70 ; Function presenta
                             71 ; ---------------------------------
   7A28                      72 _presenta::
                             73 ;src/main.c:38: cpct_drawSprite(g_async, TITULO, G_ASYNC_W, G_ASYNC_H);
   7A28 21 20 18      [10]   74 	ld	hl,#0x1820
   7A2B E5            [11]   75 	push	hl
   7A2C 21 38 C3      [10]   76 	ld	hl,#0xC338
   7A2F E5            [11]   77 	push	hl
   7A30 21 72 8C      [10]   78 	ld	hl,#_g_async
   7A33 E5            [11]   79 	push	hl
   7A34 CD 3D 91      [17]   80 	call	_cpct_drawSprite
                             81 ;src/main.c:39: cpct_drawStringM0("Presenta", PRESEN, 1, 0);
   7A37 21 01 00      [10]   82 	ld	hl,#0x0001
   7A3A E5            [11]   83 	push	hl
   7A3B 21 28 F4      [10]   84 	ld	hl,#0xF428
   7A3E E5            [11]   85 	push	hl
   7A3F 21 74 7A      [10]   86 	ld	hl,#___str_0
   7A42 E5            [11]   87 	push	hl
   7A43 CD 19 91      [17]   88 	call	_cpct_drawStringM0
   7A46 21 06 00      [10]   89 	ld	hl,#6
   7A49 39            [11]   90 	add	hl,sp
   7A4A F9            [ 6]   91 	ld	sp,hl
                             92 ;src/main.c:40: cpct_drawStringM0 ("PLEASE!", SCREEN, 3, 0);
   7A4B 21 03 00      [10]   93 	ld	hl,#0x0003
   7A4E E5            [11]   94 	push	hl
   7A4F 21 BB F5      [10]   95 	ld	hl,#0xF5BB
   7A52 E5            [11]   96 	push	hl
   7A53 21 7D 7A      [10]   97 	ld	hl,#___str_1
   7A56 E5            [11]   98 	push	hl
   7A57 CD 19 91      [17]   99 	call	_cpct_drawStringM0
   7A5A 21 06 00      [10]  100 	ld	hl,#6
   7A5D 39            [11]  101 	add	hl,sp
   7A5E F9            [ 6]  102 	ld	sp,hl
                            103 ;src/main.c:41: cpct_drawStringM0 ("PRESS INTRO!", SCREEN2, 3, 0);
   7A5F 21 03 00      [10]  104 	ld	hl,#0x0003
   7A62 E5            [11]  105 	push	hl
   7A63 21 51 C6      [10]  106 	ld	hl,#0xC651
   7A66 E5            [11]  107 	push	hl
   7A67 21 85 7A      [10]  108 	ld	hl,#___str_2
   7A6A E5            [11]  109 	push	hl
   7A6B CD 19 91      [17]  110 	call	_cpct_drawStringM0
   7A6E 21 06 00      [10]  111 	ld	hl,#6
   7A71 39            [11]  112 	add	hl,sp
   7A72 F9            [ 6]  113 	ld	sp,hl
   7A73 C9            [10]  114 	ret
   7A74                     115 ___str_0:
   7A74 50 72 65 73 65 6E   116 	.ascii "Presenta"
        74 61
   7A7C 00                  117 	.db 0x00
   7A7D                     118 ___str_1:
   7A7D 50 4C 45 41 53 45   119 	.ascii "PLEASE!"
        21
   7A84 00                  120 	.db 0x00
   7A85                     121 ___str_2:
   7A85 50 52 45 53 53 20   122 	.ascii "PRESS INTRO!"
        49 4E 54 52 4F 21
   7A91 00                  123 	.db 0x00
                            124 ;src/main.c:45: u8 fin()
                            125 ;	---------------------------------
                            126 ; Function fin
                            127 ; ---------------------------------
   7A92                     128 _fin::
                            129 ;src/main.c:47: u8 mapa=get_mapa();
   7A92 CD F1 AC      [17]  130 	call	_get_mapa
                            131 ;src/main.c:48: u8 x=get_X();
   7A95 E5            [11]  132 	push	hl
   7A96 CD DD AC      [17]  133 	call	_get_X
   7A99 45            [ 4]  134 	ld	b,l
   7A9A E1            [10]  135 	pop	hl
                            136 ;src/main.c:49: u8 t=0;
   7A9B 0E 00         [ 7]  137 	ld	c,#0x00
                            138 ;src/main.c:50: if(mapa==6&& x==74)
   7A9D 7D            [ 4]  139 	ld	a,l
   7A9E D6 06         [ 7]  140 	sub	a, #0x06
   7AA0 20 19         [12]  141 	jr	NZ,00102$
   7AA2 78            [ 4]  142 	ld	a,b
   7AA3 D6 4A         [ 7]  143 	sub	a, #0x4A
   7AA5 20 14         [12]  144 	jr	NZ,00102$
                            145 ;src/main.c:52: cpct_clearScreen(0);
   7AA7 21 00 40      [10]  146 	ld	hl,#0x4000
   7AAA E5            [11]  147 	push	hl
   7AAB AF            [ 4]  148 	xor	a, a
   7AAC F5            [11]  149 	push	af
   7AAD 33            [ 6]  150 	inc	sp
   7AAE 26 C0         [ 7]  151 	ld	h, #0xC0
   7AB0 E5            [11]  152 	push	hl
   7AB1 CD 6A 95      [17]  153 	call	_cpct_memset
                            154 ;src/main.c:53: estados=2;
   7AB4 21 3B A1      [10]  155 	ld	hl,#_estados + 0
   7AB7 36 02         [10]  156 	ld	(hl), #0x02
                            157 ;src/main.c:54: t=1;
   7AB9 0E 01         [ 7]  158 	ld	c,#0x01
   7ABB                     159 00102$:
                            160 ;src/main.c:56: return t;
   7ABB 69            [ 4]  161 	ld	l,c
   7ABC C9            [10]  162 	ret
                            163 ;src/main.c:59: u8 muerteJug()
                            164 ;	---------------------------------
                            165 ; Function muerteJug
                            166 ; ---------------------------------
   7ABD                     167 _muerteJug::
                            168 ;src/main.c:61: u8 vida=get_vida();
   7ABD CD FD AC      [17]  169 	call	_get_vida
                            170 ;src/main.c:62: u8 v=0;
                            171 ;src/main.c:63: if(vida<=0)
   7AC0 7D            [ 4]  172 	ld	a, l
   7AC1 2E 00         [ 7]  173 	ld	l, #0x00
   7AC3 B7            [ 4]  174 	or	a, a
   7AC4 C0            [11]  175 	ret	NZ
                            176 ;src/main.c:65: cpct_clearScreen(0);
   7AC5 21 00 40      [10]  177 	ld	hl,#0x4000
   7AC8 E5            [11]  178 	push	hl
   7AC9 AF            [ 4]  179 	xor	a, a
   7ACA F5            [11]  180 	push	af
   7ACB 33            [ 6]  181 	inc	sp
   7ACC 26 C0         [ 7]  182 	ld	h, #0xC0
   7ACE E5            [11]  183 	push	hl
   7ACF CD 6A 95      [17]  184 	call	_cpct_memset
                            185 ;src/main.c:66: estados=3;
   7AD2 21 3B A1      [10]  186 	ld	hl,#_estados + 0
   7AD5 36 03         [10]  187 	ld	(hl), #0x03
                            188 ;src/main.c:67: v=1;
   7AD7 2E 01         [ 7]  189 	ld	l,#0x01
                            190 ;src/main.c:69: return v;
   7AD9 C9            [10]  191 	ret
                            192 ;src/main.c:71: void inicializar()
                            193 ;	---------------------------------
                            194 ; Function inicializar
                            195 ; ---------------------------------
   7ADA                     196 _inicializar::
                            197 ;src/main.c:73: cpct_disableFirmware();
   7ADA CD 78 95      [17]  198 	call	_cpct_disableFirmware
                            199 ;src/main.c:74: cpct_setVideoMode(0);
   7ADD 2E 00         [ 7]  200 	ld	l,#0x00
   7ADF CD 4C 95      [17]  201 	call	_cpct_setVideoMode
                            202 ;src/main.c:75: cpct_setBorder(HW_BLACK);
   7AE2 21 10 14      [10]  203 	ld	hl,#0x1410
   7AE5 E5            [11]  204 	push	hl
   7AE6 CD 0D 91      [17]  205 	call	_cpct_setPALColour
                            206 ;src/main.c:76: cpct_setPalette(g_palette,16);
   7AE9 21 10 00      [10]  207 	ld	hl,#0x0010
   7AEC E5            [11]  208 	push	hl
   7AED 21 18 64      [10]  209 	ld	hl,#_g_palette
   7AF0 E5            [11]  210 	push	hl
   7AF1 CD 80 90      [17]  211 	call	_cpct_setPalette
                            212 ;src/main.c:77: cpct_etm_setTileset2x4(g_tileset);
   7AF4 21 72 8F      [10]  213 	ld	hl,#_g_tileset
   7AF7 CD 88 92      [17]  214 	call	_cpct_etm_setTileset2x4
                            215 ;src/main.c:78: estados=0;
   7AFA 21 3B A1      [10]  216 	ld	hl,#_estados + 0
   7AFD 36 00         [10]  217 	ld	(hl), #0x00
   7AFF C9            [10]  218 	ret
                            219 ;src/main.c:81: void cambiaEstado(u8 state)
                            220 ;	---------------------------------
                            221 ; Function cambiaEstado
                            222 ; ---------------------------------
   7B00                     223 _cambiaEstado::
                            224 ;src/main.c:83: estados=state;
   7B00 21 02 00      [10]  225 	ld	hl, #2+0
   7B03 39            [11]  226 	add	hl, sp
   7B04 7E            [ 7]  227 	ld	a, (hl)
   7B05 32 3B A1      [13]  228 	ld	(#_estados + 0),a
   7B08 C9            [10]  229 	ret
                            230 ;src/main.c:86: void teclado(u8 k)
                            231 ;	---------------------------------
                            232 ; Function teclado
                            233 ; ---------------------------------
   7B09                     234 _teclado::
                            235 ;src/main.c:88: cpct_scanKeyboard_f();
   7B09 CD A3 90      [17]  236 	call	_cpct_scanKeyboard_f
                            237 ;src/main.c:89: if ( cpct_isKeyPressed(Key_Return)) {
   7B0C 21 02 04      [10]  238 	ld	hl,#0x0402
   7B0F CD 97 90      [17]  239 	call	_cpct_isKeyPressed
   7B12 7D            [ 4]  240 	ld	a,l
   7B13 B7            [ 4]  241 	or	a, a
   7B14 C8            [11]  242 	ret	Z
                            243 ;src/main.c:90: if(k==0)
   7B15 21 02 00      [10]  244 	ld	hl, #2+0
   7B18 39            [11]  245 	add	hl, sp
   7B19 7E            [ 7]  246 	ld	a, (hl)
   7B1A B7            [ 4]  247 	or	a, a
   7B1B 20 12         [12]  248 	jr	NZ,00102$
                            249 ;src/main.c:92: estados=1;
   7B1D 21 3B A1      [10]  250 	ld	hl,#_estados + 0
   7B20 36 01         [10]  251 	ld	(hl), #0x01
                            252 ;src/main.c:93: cpct_clearScreen(0);
   7B22 21 00 40      [10]  253 	ld	hl,#0x4000
   7B25 E5            [11]  254 	push	hl
   7B26 AF            [ 4]  255 	xor	a, a
   7B27 F5            [11]  256 	push	af
   7B28 33            [ 6]  257 	inc	sp
   7B29 26 C0         [ 7]  258 	ld	h, #0xC0
   7B2B E5            [11]  259 	push	hl
   7B2C CD 6A 95      [17]  260 	call	_cpct_memset
   7B2F                     261 00102$:
                            262 ;src/main.c:96: if(k==1)
   7B2F 21 02 00      [10]  263 	ld	hl, #2+0
   7B32 39            [11]  264 	add	hl, sp
   7B33 7E            [ 7]  265 	ld	a, (hl)
   7B34 3D            [ 4]  266 	dec	a
   7B35 20 05         [12]  267 	jr	NZ,00104$
                            268 ;src/main.c:99: estados=2;
   7B37 21 3B A1      [10]  269 	ld	hl,#_estados + 0
   7B3A 36 02         [10]  270 	ld	(hl), #0x02
   7B3C                     271 00104$:
                            272 ;src/main.c:102: if(k==2||k==3)
   7B3C FD 21 02 00   [14]  273 	ld	iy,#2
   7B40 FD 39         [15]  274 	add	iy,sp
   7B42 FD 7E 00      [19]  275 	ld	a,0 (iy)
   7B45 D6 02         [ 7]  276 	sub	a, #0x02
   7B47 28 06         [12]  277 	jr	Z,00105$
   7B49 FD 7E 00      [19]  278 	ld	a,0 (iy)
   7B4C D6 03         [ 7]  279 	sub	a, #0x03
   7B4E C0            [11]  280 	ret	NZ
   7B4F                     281 00105$:
                            282 ;src/main.c:104: estados=0;
   7B4F 21 3B A1      [10]  283 	ld	hl,#_estados + 0
   7B52 36 00         [10]  284 	ld	(hl), #0x00
   7B54 C9            [10]  285 	ret
                            286 ;src/main.c:110: void main(void) {
                            287 ;	---------------------------------
                            288 ; Function main
                            289 ; ---------------------------------
   7B55                     290 _main::
                            291 ;src/main.c:111: inicializar();
   7B55 CD DA 7A      [17]  292 	call	_inicializar
                            293 ;src/main.c:112: while(1)
   7B58                     294 00107$:
                            295 ;src/main.c:115: switch(estados)
   7B58 3E 03         [ 7]  296 	ld	a,#0x03
   7B5A FD 21 3B A1   [14]  297 	ld	iy,#_estados
   7B5E FD 96 00      [19]  298 	sub	a, 0 (iy)
   7B61 38 F5         [12]  299 	jr	C,00107$
   7B63 FD 21 3B A1   [14]  300 	ld	iy,#_estados
   7B67 FD 5E 00      [19]  301 	ld	e,0 (iy)
   7B6A 16 00         [ 7]  302 	ld	d,#0x00
   7B6C 21 72 7B      [10]  303 	ld	hl,#00119$
   7B6F 19            [11]  304 	add	hl,de
   7B70 19            [11]  305 	add	hl,de
                            306 ;src/main.c:117: case 0: 
   7B71 E9            [ 4]  307 	jp	(hl)
   7B72                     308 00119$:
   7B72 18 06         [12]  309 	jr	00101$
   7B74 18 12         [12]  310 	jr	00102$
   7B76 18 28         [12]  311 	jr	00103$
   7B78 18 5D         [12]  312 	jr	00104$
   7B7A                     313 00101$:
                            314 ;src/main.c:118: presenta();
   7B7A CD 28 7A      [17]  315 	call	_presenta
                            316 ;src/main.c:119: teclado(estados);
   7B7D 3A 3B A1      [13]  317 	ld	a,(_estados)
   7B80 F5            [11]  318 	push	af
   7B81 33            [ 6]  319 	inc	sp
   7B82 CD 09 7B      [17]  320 	call	_teclado
   7B85 33            [ 6]  321 	inc	sp
                            322 ;src/main.c:122: break;
   7B86 18 D0         [12]  323 	jr	00107$
                            324 ;src/main.c:123: case 1:
   7B88                     325 00102$:
                            326 ;src/main.c:124: cpct_clearScreen(0);
   7B88 21 00 40      [10]  327 	ld	hl,#0x4000
   7B8B E5            [11]  328 	push	hl
   7B8C AF            [ 4]  329 	xor	a, a
   7B8D F5            [11]  330 	push	af
   7B8E 33            [ 6]  331 	inc	sp
   7B8F 26 C0         [ 7]  332 	ld	h, #0xC0
   7B91 E5            [11]  333 	push	hl
   7B92 CD 6A 95      [17]  334 	call	_cpct_memset
                            335 ;src/main.c:125: inicializar_jugador();
   7B95 CD 42 AB      [17]  336 	call	_inicializar_jugador
                            337 ;src/main.c:126: inicializar_borracho();
   7B98 CD 20 83      [17]  338 	call	_inicializar_borracho
                            339 ;src/main.c:127: ejecutar_jugador();
   7B9B CD 02 AD      [17]  340 	call	_ejecutar_jugador
                            341 ;src/main.c:128: break;
   7B9E 18 B8         [12]  342 	jr	00107$
                            343 ;src/main.c:130: case 2:
   7BA0                     344 00103$:
                            345 ;src/main.c:132: cpct_drawStringM0 ("THE END", FIN, 4, 0);
   7BA0 21 04 00      [10]  346 	ld	hl,#0x0004
   7BA3 E5            [11]  347 	push	hl
   7BA4 21 E9 DA      [10]  348 	ld	hl,#0xDAE9
   7BA7 E5            [11]  349 	push	hl
   7BA8 21 0E 7C      [10]  350 	ld	hl,#___str_3
   7BAB E5            [11]  351 	push	hl
   7BAC CD 19 91      [17]  352 	call	_cpct_drawStringM0
   7BAF 21 06 00      [10]  353 	ld	hl,#6
   7BB2 39            [11]  354 	add	hl,sp
   7BB3 F9            [ 6]  355 	ld	sp,hl
                            356 ;src/main.c:133: cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
   7BB4 21 04 00      [10]  357 	ld	hl,#0x0004
   7BB7 E5            [11]  358 	push	hl
   7BB8 21 2E EB      [10]  359 	ld	hl,#0xEB2E
   7BBB E5            [11]  360 	push	hl
   7BBC 21 16 7C      [10]  361 	ld	hl,#___str_4
   7BBF E5            [11]  362 	push	hl
   7BC0 CD 19 91      [17]  363 	call	_cpct_drawStringM0
   7BC3 21 06 00      [10]  364 	ld	hl,#6
   7BC6 39            [11]  365 	add	hl,sp
   7BC7 F9            [ 6]  366 	ld	sp,hl
                            367 ;src/main.c:134: cpct_waitVSYNC();
   7BC8 CD 44 95      [17]  368 	call	_cpct_waitVSYNC
                            369 ;src/main.c:135: teclado(estados);
   7BCB 3A 3B A1      [13]  370 	ld	a,(_estados)
   7BCE F5            [11]  371 	push	af
   7BCF 33            [ 6]  372 	inc	sp
   7BD0 CD 09 7B      [17]  373 	call	_teclado
   7BD3 33            [ 6]  374 	inc	sp
                            375 ;src/main.c:136: break;
   7BD4 C3 58 7B      [10]  376 	jp	00107$
                            377 ;src/main.c:138: case 3:
   7BD7                     378 00104$:
                            379 ;src/main.c:139: cpct_drawStringM0 ("YOUR PLAYER HAS DIED", DIED, 4, 0);
   7BD7 21 04 00      [10]  380 	ld	hl,#0x0004
   7BDA E5            [11]  381 	push	hl
   7BDB 21 E0 F9      [10]  382 	ld	hl,#0xF9E0
   7BDE E5            [11]  383 	push	hl
   7BDF 21 24 7C      [10]  384 	ld	hl,#___str_5
   7BE2 E5            [11]  385 	push	hl
   7BE3 CD 19 91      [17]  386 	call	_cpct_drawStringM0
   7BE6 21 06 00      [10]  387 	ld	hl,#6
   7BE9 39            [11]  388 	add	hl,sp
   7BEA F9            [ 6]  389 	ld	sp,hl
                            390 ;src/main.c:140: cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
   7BEB 21 04 00      [10]  391 	ld	hl,#0x0004
   7BEE E5            [11]  392 	push	hl
   7BEF 21 2E EB      [10]  393 	ld	hl,#0xEB2E
   7BF2 E5            [11]  394 	push	hl
   7BF3 21 16 7C      [10]  395 	ld	hl,#___str_4
   7BF6 E5            [11]  396 	push	hl
   7BF7 CD 19 91      [17]  397 	call	_cpct_drawStringM0
   7BFA 21 06 00      [10]  398 	ld	hl,#6
   7BFD 39            [11]  399 	add	hl,sp
   7BFE F9            [ 6]  400 	ld	sp,hl
                            401 ;src/main.c:141: cpct_waitVSYNC();
   7BFF CD 44 95      [17]  402 	call	_cpct_waitVSYNC
                            403 ;src/main.c:142: teclado(estados);
   7C02 3A 3B A1      [13]  404 	ld	a,(_estados)
   7C05 F5            [11]  405 	push	af
   7C06 33            [ 6]  406 	inc	sp
   7C07 CD 09 7B      [17]  407 	call	_teclado
   7C0A 33            [ 6]  408 	inc	sp
                            409 ;src/main.c:144: }
   7C0B C3 58 7B      [10]  410 	jp	00107$
   7C0E                     411 ___str_3:
   7C0E 54 48 45 20 45 4E   412 	.ascii "THE END"
        44
   7C15 00                  413 	.db 0x00
   7C16                     414 ___str_4:
   7C16 50 52 45 53 53 20   415 	.ascii "PRESS ENTER!!"
        45 4E 54 45 52 21
        21
   7C23 00                  416 	.db 0x00
   7C24                     417 ___str_5:
   7C24 59 4F 55 52 20 50   418 	.ascii "YOUR PLAYER HAS DIED"
        4C 41 59 45 52 20
        48 41 53 20 44 49
        45 44
   7C38 00                  419 	.db 0x00
                            420 	.area _CODE
                            421 	.area _INITIALIZER
                            422 	.area _CABS (ABS)
