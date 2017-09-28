                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (CYGWIN)
                              4 ;--------------------------------------------------------
                              5 	.module tiles
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_tiles_26
                             12 	.globl _g_tiles_25
                             13 	.globl _g_tiles_24
                             14 	.globl _g_tiles_23
                             15 	.globl _g_tiles_22
                             16 	.globl _g_tiles_21
                             17 	.globl _g_tiles_20
                             18 	.globl _g_tiles_19
                             19 	.globl _g_tiles_18
                             20 	.globl _g_tiles_17
                             21 	.globl _g_tiles_16
                             22 	.globl _g_tiles_15
                             23 	.globl _g_tiles_14
                             24 	.globl _g_tiles_13
                             25 	.globl _g_tiles_12
                             26 	.globl _g_tiles_11
                             27 	.globl _g_tiles_10
                             28 	.globl _g_tiles_09
                             29 	.globl _g_tiles_08
                             30 	.globl _g_tiles_07
                             31 	.globl _g_tiles_06
                             32 	.globl _g_tiles_05
                             33 	.globl _g_tiles_04
                             34 	.globl _g_tiles_03
                             35 	.globl _g_tiles_02
                             36 	.globl _g_tiles_01
                             37 	.globl _g_tiles_00
                             38 	.globl _g_tileset
                             39 ;--------------------------------------------------------
                             40 ; special function registers
                             41 ;--------------------------------------------------------
                             42 ;--------------------------------------------------------
                             43 ; ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DATA
                             46 ;--------------------------------------------------------
                             47 ; ram data
                             48 ;--------------------------------------------------------
                             49 	.area _INITIALIZED
                             50 ;--------------------------------------------------------
                             51 ; absolute external ram data
                             52 ;--------------------------------------------------------
                             53 	.area _DABS (ABS)
                             54 ;--------------------------------------------------------
                             55 ; global & static initialisations
                             56 ;--------------------------------------------------------
                             57 	.area _HOME
                             58 	.area _GSINIT
                             59 	.area _GSFINAL
                             60 	.area _GSINIT
                             61 ;--------------------------------------------------------
                             62 ; Home
                             63 ;--------------------------------------------------------
                             64 	.area _HOME
                             65 	.area _HOME
                             66 ;--------------------------------------------------------
                             67 ; code
                             68 ;--------------------------------------------------------
                             69 	.area _CODE
                             70 	.area _CODE
   8F72                      71 _g_tileset:
   8F72 A8 8F                72 	.dw _g_tiles_00
   8F74 B0 8F                73 	.dw _g_tiles_01
   8F76 B8 8F                74 	.dw _g_tiles_02
   8F78 C0 8F                75 	.dw _g_tiles_03
   8F7A C8 8F                76 	.dw _g_tiles_04
   8F7C D0 8F                77 	.dw _g_tiles_05
   8F7E D8 8F                78 	.dw _g_tiles_06
   8F80 E0 8F                79 	.dw _g_tiles_07
   8F82 E8 8F                80 	.dw _g_tiles_08
   8F84 F0 8F                81 	.dw _g_tiles_09
   8F86 F8 8F                82 	.dw _g_tiles_10
   8F88 00 90                83 	.dw _g_tiles_11
   8F8A 08 90                84 	.dw _g_tiles_12
   8F8C 10 90                85 	.dw _g_tiles_13
   8F8E 18 90                86 	.dw _g_tiles_14
   8F90 20 90                87 	.dw _g_tiles_15
   8F92 28 90                88 	.dw _g_tiles_16
   8F94 30 90                89 	.dw _g_tiles_17
   8F96 38 90                90 	.dw _g_tiles_18
   8F98 40 90                91 	.dw _g_tiles_19
   8F9A 48 90                92 	.dw _g_tiles_20
   8F9C 50 90                93 	.dw _g_tiles_21
   8F9E 58 90                94 	.dw _g_tiles_22
   8FA0 60 90                95 	.dw _g_tiles_23
   8FA2 68 90                96 	.dw _g_tiles_24
   8FA4 70 90                97 	.dw _g_tiles_25
   8FA6 78 90                98 	.dw _g_tiles_26
   8FA8                      99 _g_tiles_00:
   8FA8 00                  100 	.db #0x00	; 0
   8FA9 00                  101 	.db #0x00	; 0
   8FAA 00                  102 	.db #0x00	; 0
   8FAB 00                  103 	.db #0x00	; 0
   8FAC 00                  104 	.db #0x00	; 0
   8FAD 00                  105 	.db #0x00	; 0
   8FAE 00                  106 	.db #0x00	; 0
   8FAF 00                  107 	.db #0x00	; 0
   8FB0                     108 _g_tiles_01:
   8FB0 C0                  109 	.db #0xC0	; 192
   8FB1 C0                  110 	.db #0xC0	; 192
   8FB2 C0                  111 	.db #0xC0	; 192
   8FB3 C0                  112 	.db #0xC0	; 192
   8FB4 C0                  113 	.db #0xC0	; 192
   8FB5 C0                  114 	.db #0xC0	; 192
   8FB6 C0                  115 	.db #0xC0	; 192
   8FB7 C0                  116 	.db #0xC0	; 192
   8FB8                     117 _g_tiles_02:
   8FB8 0C                  118 	.db #0x0C	; 12
   8FB9 0C                  119 	.db #0x0C	; 12
   8FBA 0C                  120 	.db #0x0C	; 12
   8FBB 0C                  121 	.db #0x0C	; 12
   8FBC 0C                  122 	.db #0x0C	; 12
   8FBD 0C                  123 	.db #0x0C	; 12
   8FBE 0C                  124 	.db #0x0C	; 12
   8FBF 0C                  125 	.db #0x0C	; 12
   8FC0                     126 _g_tiles_03:
   8FC0 CC                  127 	.db #0xCC	; 204
   8FC1 CC                  128 	.db #0xCC	; 204
   8FC2 CC                  129 	.db #0xCC	; 204
   8FC3 CC                  130 	.db #0xCC	; 204
   8FC4 CC                  131 	.db #0xCC	; 204
   8FC5 CC                  132 	.db #0xCC	; 204
   8FC6 CC                  133 	.db #0xCC	; 204
   8FC7 CC                  134 	.db #0xCC	; 204
   8FC8                     135 _g_tiles_04:
   8FC8 C0                  136 	.db #0xC0	; 192
   8FC9 C0                  137 	.db #0xC0	; 192
   8FCA C0                  138 	.db #0xC0	; 192
   8FCB C0                  139 	.db #0xC0	; 192
   8FCC C0                  140 	.db #0xC0	; 192
   8FCD C0                  141 	.db #0xC0	; 192
   8FCE C0                  142 	.db #0xC0	; 192
   8FCF C0                  143 	.db #0xC0	; 192
   8FD0                     144 _g_tiles_05:
   8FD0 0C                  145 	.db #0x0C	; 12
   8FD1 0C                  146 	.db #0x0C	; 12
   8FD2 0C                  147 	.db #0x0C	; 12
   8FD3 0C                  148 	.db #0x0C	; 12
   8FD4 0C                  149 	.db #0x0C	; 12
   8FD5 0C                  150 	.db #0x0C	; 12
   8FD6 0C                  151 	.db #0x0C	; 12
   8FD7 0C                  152 	.db #0x0C	; 12
   8FD8                     153 _g_tiles_06:
   8FD8 30                  154 	.db #0x30	; 48	'0'
   8FD9 30                  155 	.db #0x30	; 48	'0'
   8FDA 30                  156 	.db #0x30	; 48	'0'
   8FDB 30                  157 	.db #0x30	; 48	'0'
   8FDC 30                  158 	.db #0x30	; 48	'0'
   8FDD 30                  159 	.db #0x30	; 48	'0'
   8FDE 30                  160 	.db #0x30	; 48	'0'
   8FDF 30                  161 	.db #0x30	; 48	'0'
   8FE0                     162 _g_tiles_07:
   8FE0 30                  163 	.db #0x30	; 48	'0'
   8FE1 30                  164 	.db #0x30	; 48	'0'
   8FE2 30                  165 	.db #0x30	; 48	'0'
   8FE3 30                  166 	.db #0x30	; 48	'0'
   8FE4 30                  167 	.db #0x30	; 48	'0'
   8FE5 30                  168 	.db #0x30	; 48	'0'
   8FE6 30                  169 	.db #0x30	; 48	'0'
   8FE7 30                  170 	.db #0x30	; 48	'0'
   8FE8                     171 _g_tiles_08:
   8FE8 0F                  172 	.db #0x0F	; 15
   8FE9 0F                  173 	.db #0x0F	; 15
   8FEA 0F                  174 	.db #0x0F	; 15
   8FEB 0F                  175 	.db #0x0F	; 15
   8FEC 0F                  176 	.db #0x0F	; 15
   8FED 0F                  177 	.db #0x0F	; 15
   8FEE 0F                  178 	.db #0x0F	; 15
   8FEF 0F                  179 	.db #0x0F	; 15
   8FF0                     180 _g_tiles_09:
   8FF0 F0                  181 	.db #0xF0	; 240
   8FF1 F0                  182 	.db #0xF0	; 240
   8FF2 F0                  183 	.db #0xF0	; 240
   8FF3 F0                  184 	.db #0xF0	; 240
   8FF4 F0                  185 	.db #0xF0	; 240
   8FF5 F0                  186 	.db #0xF0	; 240
   8FF6 F0                  187 	.db #0xF0	; 240
   8FF7 F0                  188 	.db #0xF0	; 240
   8FF8                     189 _g_tiles_10:
   8FF8 3C                  190 	.db #0x3C	; 60
   8FF9 3C                  191 	.db #0x3C	; 60
   8FFA 3C                  192 	.db #0x3C	; 60
   8FFB 3C                  193 	.db #0x3C	; 60
   8FFC 3C                  194 	.db #0x3C	; 60
   8FFD 3C                  195 	.db #0x3C	; 60
   8FFE 3C                  196 	.db #0x3C	; 60
   8FFF 3C                  197 	.db #0x3C	; 60
   9000                     198 _g_tiles_11:
   9000 3C                  199 	.db #0x3C	; 60
   9001 3C                  200 	.db #0x3C	; 60
   9002 3C                  201 	.db #0x3C	; 60
   9003 3C                  202 	.db #0x3C	; 60
   9004 3C                  203 	.db #0x3C	; 60
   9005 3C                  204 	.db #0x3C	; 60
   9006 3C                  205 	.db #0x3C	; 60
   9007 3C                  206 	.db #0x3C	; 60
   9008                     207 _g_tiles_12:
   9008 FC                  208 	.db #0xFC	; 252
   9009 FC                  209 	.db #0xFC	; 252
   900A FC                  210 	.db #0xFC	; 252
   900B FC                  211 	.db #0xFC	; 252
   900C FC                  212 	.db #0xFC	; 252
   900D FC                  213 	.db #0xFC	; 252
   900E FC                  214 	.db #0xFC	; 252
   900F FC                  215 	.db #0xFC	; 252
   9010                     216 _g_tiles_13:
   9010 03                  217 	.db #0x03	; 3
   9011 03                  218 	.db #0x03	; 3
   9012 03                  219 	.db #0x03	; 3
   9013 03                  220 	.db #0x03	; 3
   9014 03                  221 	.db #0x03	; 3
   9015 03                  222 	.db #0x03	; 3
   9016 03                  223 	.db #0x03	; 3
   9017 03                  224 	.db #0x03	; 3
   9018                     225 _g_tiles_14:
   9018 03                  226 	.db #0x03	; 3
   9019 03                  227 	.db #0x03	; 3
   901A 03                  228 	.db #0x03	; 3
   901B 03                  229 	.db #0x03	; 3
   901C 03                  230 	.db #0x03	; 3
   901D 03                  231 	.db #0x03	; 3
   901E 03                  232 	.db #0x03	; 3
   901F 03                  233 	.db #0x03	; 3
   9020                     234 _g_tiles_15:
   9020 C3                  235 	.db #0xC3	; 195
   9021 C3                  236 	.db #0xC3	; 195
   9022 C3                  237 	.db #0xC3	; 195
   9023 C3                  238 	.db #0xC3	; 195
   9024 C3                  239 	.db #0xC3	; 195
   9025 C3                  240 	.db #0xC3	; 195
   9026 C3                  241 	.db #0xC3	; 195
   9027 C3                  242 	.db #0xC3	; 195
   9028                     243 _g_tiles_16:
   9028 0F                  244 	.db #0x0F	; 15
   9029 0F                  245 	.db #0x0F	; 15
   902A 0F                  246 	.db #0x0F	; 15
   902B 0F                  247 	.db #0x0F	; 15
   902C 0F                  248 	.db #0x0F	; 15
   902D 0F                  249 	.db #0x0F	; 15
   902E 0F                  250 	.db #0x0F	; 15
   902F 0F                  251 	.db #0x0F	; 15
   9030                     252 _g_tiles_17:
   9030 0F                  253 	.db #0x0F	; 15
   9031 0F                  254 	.db #0x0F	; 15
   9032 0F                  255 	.db #0x0F	; 15
   9033 0F                  256 	.db #0x0F	; 15
   9034 0F                  257 	.db #0x0F	; 15
   9035 0F                  258 	.db #0x0F	; 15
   9036 0F                  259 	.db #0x0F	; 15
   9037 0F                  260 	.db #0x0F	; 15
   9038                     261 _g_tiles_18:
   9038 CF                  262 	.db #0xCF	; 207
   9039 CF                  263 	.db #0xCF	; 207
   903A CF                  264 	.db #0xCF	; 207
   903B CF                  265 	.db #0xCF	; 207
   903C CF                  266 	.db #0xCF	; 207
   903D CF                  267 	.db #0xCF	; 207
   903E CF                  268 	.db #0xCF	; 207
   903F CF                  269 	.db #0xCF	; 207
   9040                     270 _g_tiles_19:
   9040 33                  271 	.db #0x33	; 51	'3'
   9041 33                  272 	.db #0x33	; 51	'3'
   9042 33                  273 	.db #0x33	; 51	'3'
   9043 33                  274 	.db #0x33	; 51	'3'
   9044 33                  275 	.db #0x33	; 51	'3'
   9045 33                  276 	.db #0x33	; 51	'3'
   9046 33                  277 	.db #0x33	; 51	'3'
   9047 33                  278 	.db #0x33	; 51	'3'
   9048                     279 _g_tiles_20:
   9048 33                  280 	.db #0x33	; 51	'3'
   9049 33                  281 	.db #0x33	; 51	'3'
   904A 33                  282 	.db #0x33	; 51	'3'
   904B 33                  283 	.db #0x33	; 51	'3'
   904C 33                  284 	.db #0x33	; 51	'3'
   904D 33                  285 	.db #0x33	; 51	'3'
   904E 33                  286 	.db #0x33	; 51	'3'
   904F 33                  287 	.db #0x33	; 51	'3'
   9050                     288 _g_tiles_21:
   9050 FC                  289 	.db #0xFC	; 252
   9051 FC                  290 	.db #0xFC	; 252
   9052 FC                  291 	.db #0xFC	; 252
   9053 FC                  292 	.db #0xFC	; 252
   9054 FC                  293 	.db #0xFC	; 252
   9055 FC                  294 	.db #0xFC	; 252
   9056 FC                  295 	.db #0xFC	; 252
   9057 FC                  296 	.db #0xFC	; 252
   9058                     297 _g_tiles_22:
   9058 03                  298 	.db #0x03	; 3
   9059 03                  299 	.db #0x03	; 3
   905A 03                  300 	.db #0x03	; 3
   905B 03                  301 	.db #0x03	; 3
   905C 03                  302 	.db #0x03	; 3
   905D 03                  303 	.db #0x03	; 3
   905E 03                  304 	.db #0x03	; 3
   905F 03                  305 	.db #0x03	; 3
   9060                     306 _g_tiles_23:
   9060 FF                  307 	.db #0xFF	; 255
   9061 FF                  308 	.db #0xFF	; 255
   9062 FF                  309 	.db #0xFF	; 255
   9063 FF                  310 	.db #0xFF	; 255
   9064 FF                  311 	.db #0xFF	; 255
   9065 FF                  312 	.db #0xFF	; 255
   9066 FF                  313 	.db #0xFF	; 255
   9067 FF                  314 	.db #0xFF	; 255
   9068                     315 _g_tiles_24:
   9068 F3                  316 	.db #0xF3	; 243
   9069 F3                  317 	.db #0xF3	; 243
   906A F3                  318 	.db #0xF3	; 243
   906B F3                  319 	.db #0xF3	; 243
   906C F3                  320 	.db #0xF3	; 243
   906D F3                  321 	.db #0xF3	; 243
   906E F3                  322 	.db #0xF3	; 243
   906F F3                  323 	.db #0xF3	; 243
   9070                     324 _g_tiles_25:
   9070 3F                  325 	.db #0x3F	; 63
   9071 3F                  326 	.db #0x3F	; 63
   9072 3F                  327 	.db #0x3F	; 63
   9073 3F                  328 	.db #0x3F	; 63
   9074 3F                  329 	.db #0x3F	; 63
   9075 3F                  330 	.db #0x3F	; 63
   9076 3F                  331 	.db #0x3F	; 63
   9077 3F                  332 	.db #0x3F	; 63
   9078                     333 _g_tiles_26:
   9078 FF                  334 	.db #0xFF	; 255
   9079 FF                  335 	.db #0xFF	; 255
   907A FF                  336 	.db #0xFF	; 255
   907B FF                  337 	.db #0xFF	; 255
   907C FF                  338 	.db #0xFF	; 255
   907D FF                  339 	.db #0xFF	; 255
   907E FF                  340 	.db #0xFF	; 255
   907F FF                  341 	.db #0xFF	; 255
                            342 	.area _INITIALIZER
                            343 	.area _CABS (ABS)
