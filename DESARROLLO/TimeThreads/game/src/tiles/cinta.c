#include "cinta.h"
// Data created with Img2CPC - (c) Retroworks - 2007-2015
// Tile g_cinta: 40x26 pixels, 20x26 bytes.
const u8 g_cinta[20 * 26] = {
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0x89, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x57, 0xab, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x46, 0xcc,
	0xcc, 0x57, 0xff, 0xff, 0xff, 0xff, 0xff, 0x02, 0x03, 0x57, 0x03, 0x03, 0x03, 0xff, 0xff, 0xff, 0xff, 0xff, 0xab, 0xcc,
	0xcc, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x01, 0xab, 0x57, 0x02, 0x03, 0x03, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xcc,
	0xcc, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xab, 0xab, 0xff, 0xab, 0x03, 0x57, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xcc,
	0xcc, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0xa0, 0x00, 0x00, 0x00, 0x81, 0x03, 0x03, 0x03, 0x46, 0x02, 0x00, 0x00, 0x00, 0x54, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x00, 0xa1, 0x03, 0x00, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x01, 0xcc, 0x89, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x01, 0x4e, 0xcc, 0x02, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x03, 0xcc, 0x89, 0x02, 0x00, 0x00, 0x00, 0xcc, 0x01, 0xcc, 0xcc, 0x02, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x03, 0xcc, 0x89, 0x02, 0x00, 0x00, 0x00, 0xcc, 0x01, 0x02, 0xcc, 0x02, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x01, 0x8d, 0x03, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x03, 0x03, 0x02, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x00, 0x00, 0x03, 0x88, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0x44, 0x46, 0x00, 0x44, 0x30, 0x30, 0xcc,
	0xcc, 0x30, 0x30, 0x03, 0x56, 0xcc, 0xdc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0x89, 0x30, 0x30, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xcc,
	0xcc, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xcc,
	0xcc, 0x44, 0x00, 0x50, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0xec, 0xcc, 0x00, 0xcc,
	0xcc, 0xcc, 0xcc, 0x44, 0x00, 0x00, 0x00, 0x00, 0x44, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0x00, 0x00, 0x00, 0x00, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc,
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc
};

