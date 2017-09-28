                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module cinta
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_cinta
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 	.area _CODE
   8A6A                      44 _g_cinta:
   8A6A CC                   45 	.db #0xCC	; 204
   8A6B CC                   46 	.db #0xCC	; 204
   8A6C CC                   47 	.db #0xCC	; 204
   8A6D CC                   48 	.db #0xCC	; 204
   8A6E CC                   49 	.db #0xCC	; 204
   8A6F CC                   50 	.db #0xCC	; 204
   8A70 CC                   51 	.db #0xCC	; 204
   8A71 CC                   52 	.db #0xCC	; 204
   8A72 CC                   53 	.db #0xCC	; 204
   8A73 CC                   54 	.db #0xCC	; 204
   8A74 CC                   55 	.db #0xCC	; 204
   8A75 CC                   56 	.db #0xCC	; 204
   8A76 CC                   57 	.db #0xCC	; 204
   8A77 CC                   58 	.db #0xCC	; 204
   8A78 CC                   59 	.db #0xCC	; 204
   8A79 CC                   60 	.db #0xCC	; 204
   8A7A CC                   61 	.db #0xCC	; 204
   8A7B CC                   62 	.db #0xCC	; 204
   8A7C CC                   63 	.db #0xCC	; 204
   8A7D CC                   64 	.db #0xCC	; 204
   8A7E CC                   65 	.db #0xCC	; 204
   8A7F CC                   66 	.db #0xCC	; 204
   8A80 CC                   67 	.db #0xCC	; 204
   8A81 CC                   68 	.db #0xCC	; 204
   8A82 CC                   69 	.db #0xCC	; 204
   8A83 CC                   70 	.db #0xCC	; 204
   8A84 CC                   71 	.db #0xCC	; 204
   8A85 CC                   72 	.db #0xCC	; 204
   8A86 CC                   73 	.db #0xCC	; 204
   8A87 CC                   74 	.db #0xCC	; 204
   8A88 CC                   75 	.db #0xCC	; 204
   8A89 CC                   76 	.db #0xCC	; 204
   8A8A CC                   77 	.db #0xCC	; 204
   8A8B CC                   78 	.db #0xCC	; 204
   8A8C CC                   79 	.db #0xCC	; 204
   8A8D CC                   80 	.db #0xCC	; 204
   8A8E CC                   81 	.db #0xCC	; 204
   8A8F CC                   82 	.db #0xCC	; 204
   8A90 CC                   83 	.db #0xCC	; 204
   8A91 CC                   84 	.db #0xCC	; 204
   8A92 CC                   85 	.db #0xCC	; 204
   8A93 89                   86 	.db #0x89	; 137
   8A94 FF                   87 	.db #0xFF	; 255
   8A95 FF                   88 	.db #0xFF	; 255
   8A96 FF                   89 	.db #0xFF	; 255
   8A97 FF                   90 	.db #0xFF	; 255
   8A98 FF                   91 	.db #0xFF	; 255
   8A99 FF                   92 	.db #0xFF	; 255
   8A9A FF                   93 	.db #0xFF	; 255
   8A9B 57                   94 	.db #0x57	; 87	'W'
   8A9C AB                   95 	.db #0xAB	; 171
   8A9D FF                   96 	.db #0xFF	; 255
   8A9E FF                   97 	.db #0xFF	; 255
   8A9F FF                   98 	.db #0xFF	; 255
   8AA0 FF                   99 	.db #0xFF	; 255
   8AA1 FF                  100 	.db #0xFF	; 255
   8AA2 FF                  101 	.db #0xFF	; 255
   8AA3 FF                  102 	.db #0xFF	; 255
   8AA4 46                  103 	.db #0x46	; 70	'F'
   8AA5 CC                  104 	.db #0xCC	; 204
   8AA6 CC                  105 	.db #0xCC	; 204
   8AA7 57                  106 	.db #0x57	; 87	'W'
   8AA8 FF                  107 	.db #0xFF	; 255
   8AA9 FF                  108 	.db #0xFF	; 255
   8AAA FF                  109 	.db #0xFF	; 255
   8AAB FF                  110 	.db #0xFF	; 255
   8AAC FF                  111 	.db #0xFF	; 255
   8AAD 02                  112 	.db #0x02	; 2
   8AAE 03                  113 	.db #0x03	; 3
   8AAF 57                  114 	.db #0x57	; 87	'W'
   8AB0 03                  115 	.db #0x03	; 3
   8AB1 03                  116 	.db #0x03	; 3
   8AB2 03                  117 	.db #0x03	; 3
   8AB3 FF                  118 	.db #0xFF	; 255
   8AB4 FF                  119 	.db #0xFF	; 255
   8AB5 FF                  120 	.db #0xFF	; 255
   8AB6 FF                  121 	.db #0xFF	; 255
   8AB7 FF                  122 	.db #0xFF	; 255
   8AB8 AB                  123 	.db #0xAB	; 171
   8AB9 CC                  124 	.db #0xCC	; 204
   8ABA CC                  125 	.db #0xCC	; 204
   8ABB FF                  126 	.db #0xFF	; 255
   8ABC FF                  127 	.db #0xFF	; 255
   8ABD FF                  128 	.db #0xFF	; 255
   8ABE FF                  129 	.db #0xFF	; 255
   8ABF FF                  130 	.db #0xFF	; 255
   8AC0 FF                  131 	.db #0xFF	; 255
   8AC1 01                  132 	.db #0x01	; 1
   8AC2 AB                  133 	.db #0xAB	; 171
   8AC3 57                  134 	.db #0x57	; 87	'W'
   8AC4 02                  135 	.db #0x02	; 2
   8AC5 03                  136 	.db #0x03	; 3
   8AC6 03                  137 	.db #0x03	; 3
   8AC7 FF                  138 	.db #0xFF	; 255
   8AC8 FF                  139 	.db #0xFF	; 255
   8AC9 FF                  140 	.db #0xFF	; 255
   8ACA FF                  141 	.db #0xFF	; 255
   8ACB FF                  142 	.db #0xFF	; 255
   8ACC FF                  143 	.db #0xFF	; 255
   8ACD CC                  144 	.db #0xCC	; 204
   8ACE CC                  145 	.db #0xCC	; 204
   8ACF FF                  146 	.db #0xFF	; 255
   8AD0 FF                  147 	.db #0xFF	; 255
   8AD1 FF                  148 	.db #0xFF	; 255
   8AD2 FF                  149 	.db #0xFF	; 255
   8AD3 FF                  150 	.db #0xFF	; 255
   8AD4 FF                  151 	.db #0xFF	; 255
   8AD5 AB                  152 	.db #0xAB	; 171
   8AD6 AB                  153 	.db #0xAB	; 171
   8AD7 FF                  154 	.db #0xFF	; 255
   8AD8 AB                  155 	.db #0xAB	; 171
   8AD9 03                  156 	.db #0x03	; 3
   8ADA 57                  157 	.db #0x57	; 87	'W'
   8ADB FF                  158 	.db #0xFF	; 255
   8ADC FF                  159 	.db #0xFF	; 255
   8ADD FF                  160 	.db #0xFF	; 255
   8ADE FF                  161 	.db #0xFF	; 255
   8ADF FF                  162 	.db #0xFF	; 255
   8AE0 FF                  163 	.db #0xFF	; 255
   8AE1 CC                  164 	.db #0xCC	; 204
   8AE2 CC                  165 	.db #0xCC	; 204
   8AE3 30                  166 	.db #0x30	; 48	'0'
   8AE4 30                  167 	.db #0x30	; 48	'0'
   8AE5 30                  168 	.db #0x30	; 48	'0'
   8AE6 30                  169 	.db #0x30	; 48	'0'
   8AE7 30                  170 	.db #0x30	; 48	'0'
   8AE8 30                  171 	.db #0x30	; 48	'0'
   8AE9 30                  172 	.db #0x30	; 48	'0'
   8AEA 30                  173 	.db #0x30	; 48	'0'
   8AEB 30                  174 	.db #0x30	; 48	'0'
   8AEC 30                  175 	.db #0x30	; 48	'0'
   8AED 30                  176 	.db #0x30	; 48	'0'
   8AEE 30                  177 	.db #0x30	; 48	'0'
   8AEF 30                  178 	.db #0x30	; 48	'0'
   8AF0 30                  179 	.db #0x30	; 48	'0'
   8AF1 30                  180 	.db #0x30	; 48	'0'
   8AF2 30                  181 	.db #0x30	; 48	'0'
   8AF3 30                  182 	.db #0x30	; 48	'0'
   8AF4 30                  183 	.db #0x30	; 48	'0'
   8AF5 CC                  184 	.db #0xCC	; 204
   8AF6 CC                  185 	.db #0xCC	; 204
   8AF7 30                  186 	.db #0x30	; 48	'0'
   8AF8 30                  187 	.db #0x30	; 48	'0'
   8AF9 30                  188 	.db #0x30	; 48	'0'
   8AFA 30                  189 	.db #0x30	; 48	'0'
   8AFB 30                  190 	.db #0x30	; 48	'0'
   8AFC 30                  191 	.db #0x30	; 48	'0'
   8AFD 30                  192 	.db #0x30	; 48	'0'
   8AFE 30                  193 	.db #0x30	; 48	'0'
   8AFF 30                  194 	.db #0x30	; 48	'0'
   8B00 30                  195 	.db #0x30	; 48	'0'
   8B01 30                  196 	.db #0x30	; 48	'0'
   8B02 30                  197 	.db #0x30	; 48	'0'
   8B03 30                  198 	.db #0x30	; 48	'0'
   8B04 30                  199 	.db #0x30	; 48	'0'
   8B05 30                  200 	.db #0x30	; 48	'0'
   8B06 30                  201 	.db #0x30	; 48	'0'
   8B07 30                  202 	.db #0x30	; 48	'0'
   8B08 30                  203 	.db #0x30	; 48	'0'
   8B09 CC                  204 	.db #0xCC	; 204
   8B0A CC                  205 	.db #0xCC	; 204
   8B0B 30                  206 	.db #0x30	; 48	'0'
   8B0C 30                  207 	.db #0x30	; 48	'0'
   8B0D A0                  208 	.db #0xA0	; 160
   8B0E 00                  209 	.db #0x00	; 0
   8B0F 00                  210 	.db #0x00	; 0
   8B10 00                  211 	.db #0x00	; 0
   8B11 81                  212 	.db #0x81	; 129
   8B12 03                  213 	.db #0x03	; 3
   8B13 03                  214 	.db #0x03	; 3
   8B14 03                  215 	.db #0x03	; 3
   8B15 46                  216 	.db #0x46	; 70	'F'
   8B16 02                  217 	.db #0x02	; 2
   8B17 00                  218 	.db #0x00	; 0
   8B18 00                  219 	.db #0x00	; 0
   8B19 00                  220 	.db #0x00	; 0
   8B1A 54                  221 	.db #0x54	; 84	'T'
   8B1B 30                  222 	.db #0x30	; 48	'0'
   8B1C 30                  223 	.db #0x30	; 48	'0'
   8B1D CC                  224 	.db #0xCC	; 204
   8B1E CC                  225 	.db #0xCC	; 204
   8B1F 30                  226 	.db #0x30	; 48	'0'
   8B20 30                  227 	.db #0x30	; 48	'0'
   8B21 00                  228 	.db #0x00	; 0
   8B22 00                  229 	.db #0x00	; 0
   8B23 03                  230 	.db #0x03	; 3
   8B24 02                  231 	.db #0x02	; 2
   8B25 00                  232 	.db #0x00	; 0
   8B26 00                  233 	.db #0x00	; 0
   8B27 00                  234 	.db #0x00	; 0
   8B28 00                  235 	.db #0x00	; 0
   8B29 CC                  236 	.db #0xCC	; 204
   8B2A 00                  237 	.db #0x00	; 0
   8B2B A1                  238 	.db #0xA1	; 161
   8B2C 03                  239 	.db #0x03	; 3
   8B2D 00                  240 	.db #0x00	; 0
   8B2E 44                  241 	.db #0x44	; 68	'D'
   8B2F 30                  242 	.db #0x30	; 48	'0'
   8B30 30                  243 	.db #0x30	; 48	'0'
   8B31 CC                  244 	.db #0xCC	; 204
   8B32 CC                  245 	.db #0xCC	; 204
   8B33 30                  246 	.db #0x30	; 48	'0'
   8B34 30                  247 	.db #0x30	; 48	'0'
   8B35 00                  248 	.db #0x00	; 0
   8B36 01                  249 	.db #0x01	; 1
   8B37 CC                  250 	.db #0xCC	; 204
   8B38 89                  251 	.db #0x89	; 137
   8B39 00                  252 	.db #0x00	; 0
   8B3A 00                  253 	.db #0x00	; 0
   8B3B 00                  254 	.db #0x00	; 0
   8B3C 00                  255 	.db #0x00	; 0
   8B3D CC                  256 	.db #0xCC	; 204
   8B3E 01                  257 	.db #0x01	; 1
   8B3F 4E                  258 	.db #0x4E	; 78	'N'
   8B40 CC                  259 	.db #0xCC	; 204
   8B41 02                  260 	.db #0x02	; 2
   8B42 44                  261 	.db #0x44	; 68	'D'
   8B43 30                  262 	.db #0x30	; 48	'0'
   8B44 30                  263 	.db #0x30	; 48	'0'
   8B45 CC                  264 	.db #0xCC	; 204
   8B46 CC                  265 	.db #0xCC	; 204
   8B47 30                  266 	.db #0x30	; 48	'0'
   8B48 30                  267 	.db #0x30	; 48	'0'
   8B49 00                  268 	.db #0x00	; 0
   8B4A 03                  269 	.db #0x03	; 3
   8B4B CC                  270 	.db #0xCC	; 204
   8B4C 89                  271 	.db #0x89	; 137
   8B4D 02                  272 	.db #0x02	; 2
   8B4E 00                  273 	.db #0x00	; 0
   8B4F 00                  274 	.db #0x00	; 0
   8B50 00                  275 	.db #0x00	; 0
   8B51 CC                  276 	.db #0xCC	; 204
   8B52 01                  277 	.db #0x01	; 1
   8B53 CC                  278 	.db #0xCC	; 204
   8B54 CC                  279 	.db #0xCC	; 204
   8B55 02                  280 	.db #0x02	; 2
   8B56 44                  281 	.db #0x44	; 68	'D'
   8B57 30                  282 	.db #0x30	; 48	'0'
   8B58 30                  283 	.db #0x30	; 48	'0'
   8B59 CC                  284 	.db #0xCC	; 204
   8B5A CC                  285 	.db #0xCC	; 204
   8B5B 30                  286 	.db #0x30	; 48	'0'
   8B5C 30                  287 	.db #0x30	; 48	'0'
   8B5D 00                  288 	.db #0x00	; 0
   8B5E 03                  289 	.db #0x03	; 3
   8B5F CC                  290 	.db #0xCC	; 204
   8B60 89                  291 	.db #0x89	; 137
   8B61 02                  292 	.db #0x02	; 2
   8B62 00                  293 	.db #0x00	; 0
   8B63 00                  294 	.db #0x00	; 0
   8B64 00                  295 	.db #0x00	; 0
   8B65 CC                  296 	.db #0xCC	; 204
   8B66 01                  297 	.db #0x01	; 1
   8B67 02                  298 	.db #0x02	; 2
   8B68 CC                  299 	.db #0xCC	; 204
   8B69 02                  300 	.db #0x02	; 2
   8B6A 44                  301 	.db #0x44	; 68	'D'
   8B6B 30                  302 	.db #0x30	; 48	'0'
   8B6C 30                  303 	.db #0x30	; 48	'0'
   8B6D CC                  304 	.db #0xCC	; 204
   8B6E CC                  305 	.db #0xCC	; 204
   8B6F 30                  306 	.db #0x30	; 48	'0'
   8B70 30                  307 	.db #0x30	; 48	'0'
   8B71 00                  308 	.db #0x00	; 0
   8B72 01                  309 	.db #0x01	; 1
   8B73 8D                  310 	.db #0x8D	; 141
   8B74 03                  311 	.db #0x03	; 3
   8B75 00                  312 	.db #0x00	; 0
   8B76 00                  313 	.db #0x00	; 0
   8B77 00                  314 	.db #0x00	; 0
   8B78 00                  315 	.db #0x00	; 0
   8B79 CC                  316 	.db #0xCC	; 204
   8B7A 00                  317 	.db #0x00	; 0
   8B7B 03                  318 	.db #0x03	; 3
   8B7C 03                  319 	.db #0x03	; 3
   8B7D 02                  320 	.db #0x02	; 2
   8B7E 44                  321 	.db #0x44	; 68	'D'
   8B7F 30                  322 	.db #0x30	; 48	'0'
   8B80 30                  323 	.db #0x30	; 48	'0'
   8B81 CC                  324 	.db #0xCC	; 204
   8B82 CC                  325 	.db #0xCC	; 204
   8B83 30                  326 	.db #0x30	; 48	'0'
   8B84 30                  327 	.db #0x30	; 48	'0'
   8B85 00                  328 	.db #0x00	; 0
   8B86 00                  329 	.db #0x00	; 0
   8B87 03                  330 	.db #0x03	; 3
   8B88 88                  331 	.db #0x88	; 136
   8B89 CC                  332 	.db #0xCC	; 204
   8B8A CC                  333 	.db #0xCC	; 204
   8B8B CC                  334 	.db #0xCC	; 204
   8B8C CC                  335 	.db #0xCC	; 204
   8B8D CC                  336 	.db #0xCC	; 204
   8B8E CC                  337 	.db #0xCC	; 204
   8B8F 44                  338 	.db #0x44	; 68	'D'
   8B90 46                  339 	.db #0x46	; 70	'F'
   8B91 00                  340 	.db #0x00	; 0
   8B92 44                  341 	.db #0x44	; 68	'D'
   8B93 30                  342 	.db #0x30	; 48	'0'
   8B94 30                  343 	.db #0x30	; 48	'0'
   8B95 CC                  344 	.db #0xCC	; 204
   8B96 CC                  345 	.db #0xCC	; 204
   8B97 30                  346 	.db #0x30	; 48	'0'
   8B98 30                  347 	.db #0x30	; 48	'0'
   8B99 03                  348 	.db #0x03	; 3
   8B9A 56                  349 	.db #0x56	; 86	'V'
   8B9B CC                  350 	.db #0xCC	; 204
   8B9C DC                  351 	.db #0xDC	; 220
   8B9D CC                  352 	.db #0xCC	; 204
   8B9E CC                  353 	.db #0xCC	; 204
   8B9F CC                  354 	.db #0xCC	; 204
   8BA0 CC                  355 	.db #0xCC	; 204
   8BA1 CC                  356 	.db #0xCC	; 204
   8BA2 CC                  357 	.db #0xCC	; 204
   8BA3 CC                  358 	.db #0xCC	; 204
   8BA4 CC                  359 	.db #0xCC	; 204
   8BA5 CC                  360 	.db #0xCC	; 204
   8BA6 89                  361 	.db #0x89	; 137
   8BA7 30                  362 	.db #0x30	; 48	'0'
   8BA8 30                  363 	.db #0x30	; 48	'0'
   8BA9 CC                  364 	.db #0xCC	; 204
   8BAA CC                  365 	.db #0xCC	; 204
   8BAB CC                  366 	.db #0xCC	; 204
   8BAC CC                  367 	.db #0xCC	; 204
   8BAD CC                  368 	.db #0xCC	; 204
   8BAE CC                  369 	.db #0xCC	; 204
   8BAF CC                  370 	.db #0xCC	; 204
   8BB0 CC                  371 	.db #0xCC	; 204
   8BB1 CC                  372 	.db #0xCC	; 204
   8BB2 CC                  373 	.db #0xCC	; 204
   8BB3 CC                  374 	.db #0xCC	; 204
   8BB4 CC                  375 	.db #0xCC	; 204
   8BB5 CC                  376 	.db #0xCC	; 204
   8BB6 CC                  377 	.db #0xCC	; 204
   8BB7 CC                  378 	.db #0xCC	; 204
   8BB8 CC                  379 	.db #0xCC	; 204
   8BB9 CC                  380 	.db #0xCC	; 204
   8BBA CC                  381 	.db #0xCC	; 204
   8BBB CC                  382 	.db #0xCC	; 204
   8BBC CC                  383 	.db #0xCC	; 204
   8BBD CC                  384 	.db #0xCC	; 204
   8BBE CC                  385 	.db #0xCC	; 204
   8BBF FF                  386 	.db #0xFF	; 255
   8BC0 FF                  387 	.db #0xFF	; 255
   8BC1 FF                  388 	.db #0xFF	; 255
   8BC2 FF                  389 	.db #0xFF	; 255
   8BC3 FF                  390 	.db #0xFF	; 255
   8BC4 FF                  391 	.db #0xFF	; 255
   8BC5 FF                  392 	.db #0xFF	; 255
   8BC6 FF                  393 	.db #0xFF	; 255
   8BC7 FF                  394 	.db #0xFF	; 255
   8BC8 FF                  395 	.db #0xFF	; 255
   8BC9 FF                  396 	.db #0xFF	; 255
   8BCA FF                  397 	.db #0xFF	; 255
   8BCB FF                  398 	.db #0xFF	; 255
   8BCC FF                  399 	.db #0xFF	; 255
   8BCD FF                  400 	.db #0xFF	; 255
   8BCE FF                  401 	.db #0xFF	; 255
   8BCF FF                  402 	.db #0xFF	; 255
   8BD0 FF                  403 	.db #0xFF	; 255
   8BD1 CC                  404 	.db #0xCC	; 204
   8BD2 CC                  405 	.db #0xCC	; 204
   8BD3 FF                  406 	.db #0xFF	; 255
   8BD4 FF                  407 	.db #0xFF	; 255
   8BD5 FF                  408 	.db #0xFF	; 255
   8BD6 FF                  409 	.db #0xFF	; 255
   8BD7 FF                  410 	.db #0xFF	; 255
   8BD8 FF                  411 	.db #0xFF	; 255
   8BD9 FF                  412 	.db #0xFF	; 255
   8BDA FF                  413 	.db #0xFF	; 255
   8BDB FF                  414 	.db #0xFF	; 255
   8BDC FF                  415 	.db #0xFF	; 255
   8BDD FF                  416 	.db #0xFF	; 255
   8BDE FF                  417 	.db #0xFF	; 255
   8BDF FF                  418 	.db #0xFF	; 255
   8BE0 FF                  419 	.db #0xFF	; 255
   8BE1 FF                  420 	.db #0xFF	; 255
   8BE2 FF                  421 	.db #0xFF	; 255
   8BE3 FF                  422 	.db #0xFF	; 255
   8BE4 FF                  423 	.db #0xFF	; 255
   8BE5 CC                  424 	.db #0xCC	; 204
   8BE6 CC                  425 	.db #0xCC	; 204
   8BE7 44                  426 	.db #0x44	; 68	'D'
   8BE8 00                  427 	.db #0x00	; 0
   8BE9 50                  428 	.db #0x50	; 80	'P'
   8BEA 03                  429 	.db #0x03	; 3
   8BEB 03                  430 	.db #0x03	; 3
   8BEC 03                  431 	.db #0x03	; 3
   8BED 03                  432 	.db #0x03	; 3
   8BEE 03                  433 	.db #0x03	; 3
   8BEF 03                  434 	.db #0x03	; 3
   8BF0 03                  435 	.db #0x03	; 3
   8BF1 03                  436 	.db #0x03	; 3
   8BF2 03                  437 	.db #0x03	; 3
   8BF3 03                  438 	.db #0x03	; 3
   8BF4 03                  439 	.db #0x03	; 3
   8BF5 03                  440 	.db #0x03	; 3
   8BF6 EC                  441 	.db #0xEC	; 236
   8BF7 CC                  442 	.db #0xCC	; 204
   8BF8 00                  443 	.db #0x00	; 0
   8BF9 CC                  444 	.db #0xCC	; 204
   8BFA CC                  445 	.db #0xCC	; 204
   8BFB CC                  446 	.db #0xCC	; 204
   8BFC CC                  447 	.db #0xCC	; 204
   8BFD 44                  448 	.db #0x44	; 68	'D'
   8BFE 00                  449 	.db #0x00	; 0
   8BFF 00                  450 	.db #0x00	; 0
   8C00 00                  451 	.db #0x00	; 0
   8C01 00                  452 	.db #0x00	; 0
   8C02 44                  453 	.db #0x44	; 68	'D'
   8C03 CC                  454 	.db #0xCC	; 204
   8C04 CC                  455 	.db #0xCC	; 204
   8C05 CC                  456 	.db #0xCC	; 204
   8C06 CC                  457 	.db #0xCC	; 204
   8C07 CC                  458 	.db #0xCC	; 204
   8C08 CC                  459 	.db #0xCC	; 204
   8C09 CC                  460 	.db #0xCC	; 204
   8C0A CC                  461 	.db #0xCC	; 204
   8C0B CC                  462 	.db #0xCC	; 204
   8C0C CC                  463 	.db #0xCC	; 204
   8C0D CC                  464 	.db #0xCC	; 204
   8C0E CC                  465 	.db #0xCC	; 204
   8C0F CC                  466 	.db #0xCC	; 204
   8C10 CC                  467 	.db #0xCC	; 204
   8C11 CC                  468 	.db #0xCC	; 204
   8C12 00                  469 	.db #0x00	; 0
   8C13 00                  470 	.db #0x00	; 0
   8C14 00                  471 	.db #0x00	; 0
   8C15 00                  472 	.db #0x00	; 0
   8C16 CC                  473 	.db #0xCC	; 204
   8C17 CC                  474 	.db #0xCC	; 204
   8C18 CC                  475 	.db #0xCC	; 204
   8C19 CC                  476 	.db #0xCC	; 204
   8C1A CC                  477 	.db #0xCC	; 204
   8C1B CC                  478 	.db #0xCC	; 204
   8C1C CC                  479 	.db #0xCC	; 204
   8C1D CC                  480 	.db #0xCC	; 204
   8C1E CC                  481 	.db #0xCC	; 204
   8C1F CC                  482 	.db #0xCC	; 204
   8C20 CC                  483 	.db #0xCC	; 204
   8C21 CC                  484 	.db #0xCC	; 204
   8C22 CC                  485 	.db #0xCC	; 204
   8C23 CC                  486 	.db #0xCC	; 204
   8C24 CC                  487 	.db #0xCC	; 204
   8C25 CC                  488 	.db #0xCC	; 204
   8C26 CC                  489 	.db #0xCC	; 204
   8C27 CC                  490 	.db #0xCC	; 204
   8C28 CC                  491 	.db #0xCC	; 204
   8C29 CC                  492 	.db #0xCC	; 204
   8C2A CC                  493 	.db #0xCC	; 204
   8C2B CC                  494 	.db #0xCC	; 204
   8C2C CC                  495 	.db #0xCC	; 204
   8C2D CC                  496 	.db #0xCC	; 204
   8C2E CC                  497 	.db #0xCC	; 204
   8C2F CC                  498 	.db #0xCC	; 204
   8C30 CC                  499 	.db #0xCC	; 204
   8C31 CC                  500 	.db #0xCC	; 204
   8C32 CC                  501 	.db #0xCC	; 204
   8C33 CC                  502 	.db #0xCC	; 204
   8C34 CC                  503 	.db #0xCC	; 204
   8C35 CC                  504 	.db #0xCC	; 204
   8C36 CC                  505 	.db #0xCC	; 204
   8C37 CC                  506 	.db #0xCC	; 204
   8C38 CC                  507 	.db #0xCC	; 204
   8C39 CC                  508 	.db #0xCC	; 204
   8C3A CC                  509 	.db #0xCC	; 204
   8C3B CC                  510 	.db #0xCC	; 204
   8C3C CC                  511 	.db #0xCC	; 204
   8C3D CC                  512 	.db #0xCC	; 204
   8C3E CC                  513 	.db #0xCC	; 204
   8C3F CC                  514 	.db #0xCC	; 204
   8C40 CC                  515 	.db #0xCC	; 204
   8C41 CC                  516 	.db #0xCC	; 204
   8C42 CC                  517 	.db #0xCC	; 204
   8C43 CC                  518 	.db #0xCC	; 204
   8C44 CC                  519 	.db #0xCC	; 204
   8C45 CC                  520 	.db #0xCC	; 204
   8C46 CC                  521 	.db #0xCC	; 204
   8C47 CC                  522 	.db #0xCC	; 204
   8C48 CC                  523 	.db #0xCC	; 204
   8C49 CC                  524 	.db #0xCC	; 204
   8C4A CC                  525 	.db #0xCC	; 204
   8C4B CC                  526 	.db #0xCC	; 204
   8C4C CC                  527 	.db #0xCC	; 204
   8C4D CC                  528 	.db #0xCC	; 204
   8C4E CC                  529 	.db #0xCC	; 204
   8C4F CC                  530 	.db #0xCC	; 204
   8C50 CC                  531 	.db #0xCC	; 204
   8C51 CC                  532 	.db #0xCC	; 204
   8C52 CC                  533 	.db #0xCC	; 204
   8C53 CC                  534 	.db #0xCC	; 204
   8C54 CC                  535 	.db #0xCC	; 204
   8C55 CC                  536 	.db #0xCC	; 204
   8C56 CC                  537 	.db #0xCC	; 204
   8C57 CC                  538 	.db #0xCC	; 204
   8C58 CC                  539 	.db #0xCC	; 204
   8C59 CC                  540 	.db #0xCC	; 204
   8C5A CC                  541 	.db #0xCC	; 204
   8C5B CC                  542 	.db #0xCC	; 204
   8C5C CC                  543 	.db #0xCC	; 204
   8C5D CC                  544 	.db #0xCC	; 204
   8C5E CC                  545 	.db #0xCC	; 204
   8C5F CC                  546 	.db #0xCC	; 204
   8C60 CC                  547 	.db #0xCC	; 204
   8C61 CC                  548 	.db #0xCC	; 204
   8C62 CC                  549 	.db #0xCC	; 204
   8C63 CC                  550 	.db #0xCC	; 204
   8C64 CC                  551 	.db #0xCC	; 204
   8C65 CC                  552 	.db #0xCC	; 204
   8C66 CC                  553 	.db #0xCC	; 204
   8C67 CC                  554 	.db #0xCC	; 204
   8C68 CC                  555 	.db #0xCC	; 204
   8C69 CC                  556 	.db #0xCC	; 204
   8C6A CC                  557 	.db #0xCC	; 204
   8C6B CC                  558 	.db #0xCC	; 204
   8C6C CC                  559 	.db #0xCC	; 204
   8C6D CC                  560 	.db #0xCC	; 204
   8C6E CC                  561 	.db #0xCC	; 204
   8C6F CC                  562 	.db #0xCC	; 204
   8C70 CC                  563 	.db #0xCC	; 204
   8C71 CC                  564 	.db #0xCC	; 204
                            565 	.area _INITIALIZER
                            566 	.area _CABS (ABS)
