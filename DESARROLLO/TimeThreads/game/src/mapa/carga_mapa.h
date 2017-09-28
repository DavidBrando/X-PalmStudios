#ifndef _CARGAR_MAPA_H_
#define _CARGAR_MAPA_H_

#include <types.h>
#define  ORIGEN_MAPA_Y	68
#define  ORIGEN_MAPA  cpctm_screenPtr(CPCT_VMEM_START, 0, ORIGEN_MAPA_Y)

void dibujarMapa(u8* map);
void inicializar_mapa();

#endif