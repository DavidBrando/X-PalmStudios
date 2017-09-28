#ifndef _JUGADOR_H_
#define _JUGADOR_H_

#define ANCHO_PANTALLA 80
#define LIMITE_DERECHO ANCHO_PANTALLA - G_HERO_00_W
#define LIMITE_DERECHO_CUCHILLO ANCHO_PANTALLA - G_CUCHILLO_W

#define ORIGEN_MAPA_Y 68
#define ORIGEN_MAPA cpctm_screenPtr(CPCT_VMEM_START, 0, ORIGEN_MAPA_Y)  


#include <types.h>

#define SI 1
#define NO 0


cpctm_declareMaskTable(a);

void dibujarProta();
void borrarProta();
void borrarCuchillo();
void redibujarProta();
void moverCuchillo();
void dibujarCuchillo();
void avanzarMapa();
void retrocederMapa();
void redibujarCuchillo();
u8* obtenerTilePtr(u8 x, u8 y);
void girarFrame();
void ini_preSalto();
void ini_salto();
void ini_andar(u8 direccion);
void ini_quieto();
void ini_caer();
void caer();
void cayendo_entrar();
void ajustarAlSuelo();
void imprimirMuni();
void imprimirVida();
void atacar();
void estatico();
u8 compruebaTeclas(const cpct_keyID* k, u8 numk);
void selectSprite();
void descender();
void cayendo();
void ascender();
void saltando();
void saltar_ani();
void finsalto();
void andar_ani(u8 direccion);
void moverIzquierda();
void moverDerecha();
void moverIzq2();
void moverDer2();
void ante_salto();
void saltar();
void andar();
void cambiarEstado();
void imprimeHUD();
void restaVida();
void inicializar_jugador();
void inicializar_cuchillo(u8* mapacuchi);
void inicializar_cuchillo2(u8* mapacuchi);
void muerteCaida();
u8 get_X();
u8 get_Y();
u8 get_CX();
u8 get_CY();
u8 get_mapa();
u8* get_tip_mapa();
void ejecutar_jugador();
#endif