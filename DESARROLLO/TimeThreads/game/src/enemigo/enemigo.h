#ifndef _ENEMIGO_H_
#define _ENEMIGO_H_

#define ANCHO_PANTALLA 80

#define ORIGEN_MAPA_Y 68
#define ORIGEN_MAPA cpctm_screenPtr(CPCT_VMEM_START, 0, ORIGEN_MAPA_Y)  


#include <types.h>
#include "../jugador/jugador.h"

#define SI 1
#define NO 0



typedef struct {
   u8  mira;
   u8* sprite;
}Tframe;

typedef struct 
{
    u8 x, y;
    u8 px, py;
    u8* sprite;
    u8 mover;
    u8 estado;
    Tframe* frame;
    u8 nframe;
    u8 mira;
    u8 golpe;


}Tborracho;

void girarFrame2();
void seleccionarSpriteBorracho();
void dibujarBorracho();
void borrarBorracho();
void redibujarBorracho();
void andar_ani2(u8 direccion);
void golpear_ani2(u8 direccion);
void ini_andar2(u8 direccion);
void izquierda();
void derecha();
void golpear(u8 direccion);
void quietoENE();
void mata_enemigo();
u8 get_BX();
void IA();
void BOestado(u8 k);
void ini_estado();
void inicializar_borracho();

#endif