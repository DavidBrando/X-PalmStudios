#include "carga_mapa.h"
#include "../tiles/tiles.h"
#include <cpctelera.h>
#include "map1.h"

u8* mapa;
void inicializar_mapa()
{
	

	cpct_etm_setTileset2x4(g_tileset);
	mapa = g_map1;
	dibujarMapa();
}

void dibujarMapa(u8* map)
{
	cpct_etm_drawTilemap2x4 (g_map1_W, g_map1_H, ORIGEN_MAPA, map);
}
