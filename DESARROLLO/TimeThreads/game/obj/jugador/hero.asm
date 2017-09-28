;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module hero
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_hero_11
	.globl _g_hero_10
	.globl _g_hero_09
	.globl _g_hero_08
	.globl _g_hero_07
	.globl _g_hero_06
	.globl _g_hero_05
	.globl _g_hero_04
	.globl _g_hero_03
	.globl _g_hero_02
	.globl _g_hero_01
	.globl _g_hero_00
	.globl _g_palette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	.area _CODE
_g_palette:
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
	.db #0x5C	; 92
	.db #0x4C	; 76	'L'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x5E	; 94
	.db #0x40	; 64
	.db #0x4E	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x4A	; 74	'J'
	.db #0x43	; 67	'C'
	.db #0x4B	; 75	'K'
_g_hero_00:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xB0	; 176
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0xA5	; 165
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x70	; 112	'p'
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x85	; 133
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0xC6	; 198
	.db #0xCC	; 204
	.db #0x00	; 0
_g_hero_01:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x8D	; 141
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xB0	; 176
	.db #0x2F	; 47
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xB5	; 181
	.db #0x7A	; 122	'z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA5	; 165
	.db #0xB5	; 181
	.db #0x7A	; 122	'z'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x5A	; 90	'Z'
	.db #0xB0	; 176
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA5	; 165
	.db #0x1A	; 26
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0xB0	; 176
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x4E	; 78	'N'
	.db #0x9D	; 157
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0F	; 15
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xC0	; 192
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x80	; 128
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x82	; 130
	.db #0x00	; 0
_g_hero_02:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0xCC	; 204
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x35	; 53	'5'
	.db #0x2F	; 47
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xF0	; 240
	.db #0x35	; 53	'5'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0xA5	; 165
	.db #0x1A	; 26
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x25	; 37
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_03:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0xCC	; 204
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x35	; 53	'5'
	.db #0x2F	; 47
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xF0	; 240
	.db #0x35	; 53	'5'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x5A	; 90	'Z'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_04:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0xCC	; 204
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x3F	; 63
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xF0	; 240
	.db #0x35	; 53	'5'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x5A	; 90	'Z'
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x1A	; 26
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x50	; 80	'P'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x0F	; 15
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_05:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0xCC	; 204
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x35	; 53	'5'
	.db #0x2F	; 47
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xF0	; 240
	.db #0x35	; 53	'5'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0xA5	; 165
	.db #0x5A	; 90	'Z'
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0xA5	; 165
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x82	; 130
_g_hero_06:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xB0	; 176
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0xA0	; 160
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x70	; 112	'p'
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_07:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0xA0	; 160
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x70	; 112	'p'
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_08:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xB0	; 176
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0x70	; 112	'p'
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x5A	; 90	'Z'
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x4E	; 78	'N'
	.db #0x3F	; 63
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_09:
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xB0	; 176
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0x25	; 37
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0xA5	; 165
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_10:
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_hero_11:
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4E	; 78	'N'
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x89	; 137
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0B	; 11
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0x4E	; 78	'N'
	.db #0xCC	; 204
	.db #0x8D	; 141
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x9D	; 157
	.db #0x4E	; 78	'N'
	.db #0x0F	; 15
	.db #0x8D	; 141
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xB5	; 181
	.db #0x0F	; 15
	.db #0x2A	; 42
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x3F	; 63
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x70	; 112	'p'
	.db #0x3F	; 63
	.db #0xA5	; 165
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x3F	; 63
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0xC3	; 195
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
