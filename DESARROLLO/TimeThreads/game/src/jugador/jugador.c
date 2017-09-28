#include <cpctelera.h>
#include <stdio.h>
#include "personaje.h"
#include "jugador.h"
#include "../mapa/map1.h"
#include "../mapa/map2.h"
#include "../mapa/map3.h"
#include "../mapa/map4.h"
#include "../mapa/map5.h"
#include "../mapa/map6.h"
#include "../mapa/map7.h"
#include "../mapa/carga_mapa.h"
#include "../tiles/tiles.h"
#include "cuchillo.h"
#include "../enemigo/enemigo.h"

#define NUM_MAPAS 7
#define POS_MUNI cpct_getScreenPtr(CPCT_VMEM_START, 0, 0)
#define POS_NUM_MUNI cpct_getScreenPtr(CPCT_VMEM_START, 25, 0)
#define POS_VIDA cpct_getScreenPtr(CPCT_VMEM_START, 0, 10)
#define POS_NUM_VIDA cpct_getScreenPtr(CPCT_VMEM_START, 25, 10)
#define PASOS_SALTO  20
#define HERO_FRAMES  12
#define NUM_MAPAS 7

cpctm_createTransparentMaskTable (a,0x100, M0, 0);

u8* map;
u8  num_mapa;
u8 q;
typedef struct {
   u8  mira;
   u8* sprite;
} TFrame;

typedef struct 
{
	u8 x, y;
	u8 xp, yp;
	u8* sprite;
	u8 mover;
	TFrame* frame;
	u8 mira;
	u8 nframe;
	u8 estado;
	u8 salto;
	u8 vida;
}Tprota;

Tprota prota;

enum {
      ST_quieto  = 0
   ,  ST_andando
   ,  ST_salto
   ,  ST_saltando
   ,  ST_cayendo
   ,  ST_caer
   ,  ST_sal_salto
} EEstados;


typedef struct 
{
    u8 x, y; //tipo de datos de 8 bits
    u8 xp, yp;//posicion previa
    u8* sprite;
    u8 mover;
    u8 lanzandoDerecha; 
    u8 mira;
    u8 municion;
    TFrame* fram;
}Tcuchillo;
Tcuchillo cuchillo;




const TFrame g_frames[HERO_FRAMES] = {
	  { M_derecha, g_personaje_00 }   ,  { M_derecha, g_personaje_01 }
   ,  { M_derecha, g_personaje_02 }   ,  { M_derecha, g_personaje_03 }
   ,  { M_derecha, g_personaje_04 }   ,  { M_derecha, g_personaje_05 }
   ,  { M_derecha, g_personaje_06 }   ,  { M_derecha, g_personaje_07 }
   ,  { M_derecha, g_personaje_08 }   ,  { M_derecha, g_personaje_09 }
   ,  { M_derecha, g_personaje_10 }   
   
};

TFrame* const anim_andar[5] = { 
   &g_frames[1], &g_frames[2], &g_frames[3], &g_frames[4], &g_frames[5]
};

TFrame* const anim_salto[4] = { 
   &g_frames[7], &g_frames[8], &g_frames[9], &g_frames[10]
};


u8* const mapas[NUM_MAPAS] = { g_map1, g_map2, g_map3 , g_map4, g_map5, g_map6,g_map7};

enum {
      M_derecha   = 0
   ,  M_izquierda
} EMirar;


const CPCT_2BITARRAY(g_tablaSalto, PASOS_SALTO) = {
         CPCT_ENCODE2BITS(3, 3, 3, 3) 
   , CPCT_ENCODE2BITS(3, 3, 2, 2)
   , CPCT_ENCODE2BITS(2, 2, 2, 1)
   , CPCT_ENCODE2BITS(1, 1, 1, 1)
   , CPCT_ENCODE2BITS(1, 0, 0, 0)
};



void dibujarProta()
{
	
	u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
	cpct_drawSpriteMaskedAlignedTable(prota.frame->sprite, pvmem, G_PERSONAJE_00_W,G_PERSONAJE_00_H,a);
	
}

void borrarProta() {
    u8 w = 3 + (prota.xp & 1);
    u8 h = 8 + (prota.yp & 3 ? 1 : 0);
    cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
}


void borrarCuchillo() {
   u8 w = 2 + (cuchillo.xp & 1);
   u8 h = 1 + (cuchillo.yp & 3 ? 1 : 0);
   cpct_etm_drawTileBox2x4(cuchillo.xp / 2, (cuchillo.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);
}


void redibujarProta(){
    borrarProta();
    prota.xp = prota.x;
    prota.yp = prota.y;
    dibujarProta();
}

u8* mapaCU;
void moverCuchillo(){

    if(cuchillo.lanzandoDerecha == SI)
    {
        if(cuchillo.x <= LIMITE_DERECHO_CUCHILLO-2){
            cuchillo.x+=2;
            cuchillo.mover = SI;        
        }else{
            //borrarEstrella();
          //  estrella.x = estrella.xp;
            cuchillo.lanzandoDerecha = NO;
            cuchillo.mover = NO;
            
        }
    }
    else
    {
        if(cuchillo.lanzandoDerecha == NO)
            if(cuchillo.x >= 2){
                cuchillo.x-=2;
                cuchillo.mover = SI;
            }
            else{
                cuchillo.mover=NO;

            }
    }
}


void dibujarCuchillo(){
     u8* pvmem2= cpct_getScreenPtr(CPCT_VMEM_START, cuchillo.x, cuchillo.y); //puntero a la memoria de video con la posicion del prota

    cpct_drawSpriteMaskedAlignedTable (cuchillo.sprite, pvmem2, G_CUCHILLO_W, G_CUCHILLO_H, a);

    
}

void avanzarMapa() {

   if (num_mapa < NUM_MAPAS-1) {
      map = mapas[++num_mapa];
      prota.x = prota.xp = 0;
      prota.mover = SI;
      inicializar_cuchillo(map);
      dibujarMapa(map);
   }
}

void retrocederMapa() {
   if (num_mapa > 0) {
      map = mapas[--num_mapa];
      prota.x = prota.xp = ANCHO_PANTALLA - G_PERSONAJE_00_W;
      prota.mover = SI;
      inicializar_cuchillo(map);
      dibujarMapa(map);
   }
}


void redibujarCuchillo(){
    borrarCuchillo();
    cuchillo.xp = cuchillo.x;
    cuchillo.yp = cuchillo.y;
    dibujarCuchillo();
}


u8* obtenerTilePtr(u8 x, u8 y) {
   return map + (y-ORIGEN_MAPA_Y)/4*g_map1_W + x/2;
}

void girarFrame() {
   TFrame* f = prota.frame;
   if (f->mira != prota.mira) {
      cpct_hflipSpriteM0(G_PERSONAJE_00_W, G_PERSONAJE_00_H, f->sprite);
      f->mira = prota.mira;
   }
}

void asignarFrame(TFrame **animacion);

void asignarFrame(TFrame **animacion) {
   prota.frame = animacion[prota.nframe / 4];
}

void ini_preSalto()
{
  prota.nframe = 0;
   prota.estado = ST_salto;
   prota.mover  = SI;
}


void ini_salto()
{	
	
   	prota.estado = ST_saltando;
   	prota.mover  = SI;
    prota.salto = 0;
}

void ini_andar(u8 direccion)
{   
	prota.nframe=0;
	prota.estado=ST_andando;
	prota.mira = direccion;
	prota.mover=SI;
}

void ini_quieto()
{
	prota.estado = ST_quieto;
   	prota.mover  = SI;
}

void ini_caer() {
   prota.nframe = 0;
   prota.estado = ST_caer;
   prota.mover  = SI;
}

void caer() {
   prota.mover = SI;
      ini_quieto();      
}

void cayendo_entrar() {
   prota.estado = ST_cayendo;
   prota.mover  = SI;
   prota.salto  = PASOS_SALTO - 3;
}

void ajustarAlSuelo() {

   prota.y = (prota.y & 0b11111100);


}

u8 sobreSuelo() {

   u8* tileSuelo = obtenerTilePtr(prota.x+2, prota.y +32);

   if (*tileSuelo==13)
   {
   	     return 1;
 	 }
   return 0;
}

void imprimirMuni()
{
	u8 str[1];
	sprintf(str, "%2u", cuchillo.municion);
	cpct_drawStringM0(str, POS_NUM_MUNI, 4, 0);		
}
void imprimirVida()
{
	u8 str[1];
	sprintf(str, "%2u", prota.vida);
  	cpct_drawStringM0(str, POS_NUM_VIDA, 4, 0);		
  
}


void atacar(){
    cuchillo.y = prota.y+10;
   cuchillo.mover=SI;
   if(cuchillo.mira != prota.mira){
        cuchillo.mira = prota.mira;
        cpct_hflipSpriteM0(G_CUCHILLO_W, G_CUCHILLO_H, cuchillo.sprite);
   }

    if(prota.mira == M_derecha){
        cuchillo.x = prota.x+5; 
        cuchillo.lanzandoDerecha = SI;
    }  
    else{
        cuchillo.x = prota.x-5; 
    }
    if(cuchillo.municion!=0)
    {
      cuchillo.municion--;
      imprimirMuni();
    }
    
}


void estatico() {
	
	static const cpct_keyID keys[4] = {Key_CursorUp, Key_CursorRight, Key_CursorLeft, Key_Space};
   u8 k = compruebaTeclas(keys, 4);
   switch(k) {
      case 0:  break; // Nada que hacer
      case 1: ini_preSalto(); break;
      case 2: ini_andar(M_derecha);   break;
      case 3: ini_andar(M_izquierda); break;
      case 4: 
         if(cuchillo.lanzandoDerecha==NO && cuchillo.mover==NO && cuchillo.municion!=0)
         {
                atacar();
            }
       break;
   }
}

u8 compruebaTeclas(const cpct_keyID* k, u8 numk) {
   u8 i;
   cpct_scanKeyboard_if();
   if (cpct_isAnyKeyPressed()) {
      for(i=1; i <= numk; i++, k++) {
         if (cpct_isKeyPressed(*k))
            return i;
      }
   }
   return 0;
}


void selectSprite()
{
	switch(prota.estado)
	{
		case ST_quieto: {
			prota.frame = &g_frames[0];
			break;
		}

		case ST_andando: {
			asignarFrame(anim_andar);
			 	

			break;
		}

		case ST_salto:{ 
			asignarFrame(anim_salto);   
			break; }
	}
	girarFrame();	
}

void descender() {
   prota.y += cpct_get2Bits(g_tablaSalto, prota.salto);
   if (prota.salto > 1)
      prota.salto--;
}

void cayendo() {
   static const cpct_keyID keys[2] = {Key_CursorRight, Key_CursorLeft};
   u8 k = compruebaTeclas(keys, 2);
   switch(k) {
      case 0: break; // Nada que hacer
      case 1: moverDer2();  break;
      case 2: moverIzq2(); break;
   }
  	 
  	 descender();

  if (sobreSuelo()) {
      ajustarAlSuelo();
      ini_caer();
   }
  	
   prota.mover=SI;
}

void ascender() {
   prota.y -= cpct_get2Bits(g_tablaSalto, prota.salto);
   if (prota.y < ORIGEN_MAPA_Y)
      prota.y = ORIGEN_MAPA_Y;
   if (++prota.salto == PASOS_SALTO)
      cayendo_entrar();
}


void saltando()
{

   if (!cpct_isKeyPressed(Key_CursorUp)) {
      cayendo_entrar();
   } else {
      static const cpct_keyID keys[2] = {Key_CursorRight, Key_CursorLeft};
      u8 k = compruebaTeclas(keys, 2);
      switch(k) {
         case 0: break;
         case 1: moverDer2();   break;
         case 2: moverIzq2(); break;
      }
      ascender();
      prota.mover = SI;
   }

}

void saltar_ani()
{
   while(++prota.nframe == 4*4)
   {
   	      prota.nframe = 0;

  	 if(prota.frame==&g_frames[10])
  	 {
  	 	prota.estado=ST_sal_salto;
  	 }
  	}

	
}

void finsalto()
{
   if (!cpct_isKeyPressed(Key_CursorUp)) {
      cayendo_entrar();
   } else {
      static const cpct_keyID keys[2] = {Key_CursorRight, Key_CursorLeft};
      u8 k = compruebaTeclas(keys, 2);
      switch(k) {
         case 0: break;
         case 1: moverDerecha();   break;
         case 2: moverIzquierda(); break;
      }
      saltando();
      prota.mover = SI;
   }
}


void andar_ani(u8 direccion)
{
	prota.mira  = direccion;
   if(++prota.nframe == 5*4)
      prota.nframe = 0;
}




void moverIzquierda()
{
  u8 x = get_BX() + G_PERSONAJE_00_W+2;
  u8 j= alive();
    u8 y =get_BY();
 
      if(prota.x > 0)
      {
         if(((prota.x>x || prota.x<x) && (prota.x > x || prota.x < x-G_PERSONAJE_00_W+3)) || prota.y<132|| y==0||j==1){
            prota.x-=2;
            prota.mira = M_izquierda;
         }
      }
      else {
        if(map!=g_map1)
        {
          retrocederMapa();
        }
     }
 
}


void moverDerecha()
{
    u8 x =get_BX() - 6;
    u8 j= alive();
    u8 y =get_BY();

      if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
      {
        if(((prota.x<x || prota.x>x ) && (prota.x<x || prota.x > x + G_PERSONAJE_00_W ))|| prota.y<132 || y==0||j==1){
          prota.x+=2;
          prota.mira = M_derecha;
        }
      }
      else {
          avanzarMapa();
      }  
}

void moverIzq2()
{
  if(prota.x > 0)
  {
    prota.x--;
    prota.mira = M_izquierda;

  }
     else {
        if(map!=g_map1)
        {
          retrocederMapa();
        }
     }
}

void moverDer2()
{

  if (prota.x + G_PERSONAJE_00_W < ANCHO_PANTALLA) 
  {
    prota.x++;
    prota.mira = M_derecha;
  }
     else {
          avanzarMapa();
      }
  
}

void ante_salto()
{
	while (++prota.nframe == 4*4)
      ini_salto();
  
}


void saltar()
{
	static const cpct_keyID keys[1] = {Key_CursorUp};
   u8 k = compruebaTeclas(keys, 1);
   switch(k) {
      case 0: ini_quieto(); break; 
      case 1: ante_salto(); break;
   }
   prota.mover = SI;
	
}



void andar()
{
	 static const cpct_keyID keys[3] = {Key_CursorUp, Key_CursorRight, Key_CursorLeft};
   u8 k = compruebaTeclas(keys, 3);
   switch(k) {
      case 0:  ini_quieto();   break;
      case 1:  saltar(); break;
      case 2: moverDerecha();   andar_ani(M_derecha);  break;
      case 3: moverIzquierda(); andar_ani(M_izquierda); break;
   }
   prota.mover=SI;
   if (!sobreSuelo())
      cayendo_entrar();
}




void cambiarEstado()
{
	switch(prota.estado) {
      case ST_quieto:      estatico();      break;
      case ST_andando:  andar(); break;
      case ST_salto:   saltar();   break;
      case ST_saltando: saltando(); break;
      case ST_sal_salto: finsalto(); break;
      case ST_cayendo:     cayendo();     break;
      case ST_caer: caer(); break;  
   }
}

void imprimeHUD()
{
	u8  str[2];
	cpct_drawStringM0 ("Balas:", POS_MUNI, 4, 0);
	cpct_drawStringM0 ("Vidas:", POS_VIDA, 4, 0);
	sprintf(str, "%u", cuchillo.municion);
	cpct_drawStringM0(str, POS_NUM_MUNI, 4, 0);		
	sprintf(str, "%u", 1);
	cpct_drawStringM0(str, POS_NUM_VIDA, 4, 0);

}

void restaVida()
{

    prota.vida--;

  
}


void inicializar_cuchillo(u8* mapacuchi)
{
    cuchillo.municion=10;
    cuchillo.x =prota.x;
    cuchillo.y =prota.y;
    cuchillo.sprite = g_cuchillo;
    cuchillo.mover = NO;
    cuchillo.lanzandoDerecha = NO;
    cuchillo.mira = M_derecha;
    mapaCU=mapacuchi;
}


u8 o;
u8 fin();
u8 Jy;
void inicializar_jugador()
{
	prota.x = prota.xp = 20;
  	 prota.y = prota.yp = 156;
	prota.mover=NO;
	prota.nframe=0;
	prota.estado=ST_quieto;
	prota.mira=M_derecha;
	prota.frame  = &g_frames[0];
	prota.vida=100;
	map = g_map1;
  num_mapa=0;
	dibujarMapa(map);
	dibujarProta();
  inicializar_cuchillo(map);
    o=0;
    q=0;
    imprimeHUD();
}


void muerteCaida()
{
  if(prota.x<40)
  {
    if(prota.y<180&&prota.y>170)
    {
      u8 w = 3 + (prota.xp & 1);
      u8 h = 8 + (prota.yp & 3 ? 1 : 0);
      cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);

      prota.x=prota.xp=prota.x-10;
      prota.y=prota.yp=156;
    }
  }
  else
  {
    if(prota.y<180&&prota.y>170)
    {
      u8 w = 3 + (prota.xp & 1);
      u8 h = 8 + (prota.yp & 3 ? 1 : 0);
      cpct_etm_drawTileBox2x4(prota.xp / 2, (prota.yp-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, map);

      prota.x=prota.xp=prota.x-30;
      prota.y=prota.yp=156;
    }
  }
  
}

u8 get_X()
{
  return prota.x;
}

u8 get_Y()
{

  return prota.y;
}


u8 get_CX()
{
  return cuchillo.x;
}

u8 get_CY()
{

  return cuchillo.y;
}

u8 get_mapa()
{
  return num_mapa;
}

u8* get_tip_mapa()
{
  return map;
}

u8 get_vida()
{
  return prota.vida;
}

void ini_estado();

void ejecutar_jugador()
{

	while(1) //bucle juego
	{
		cambiarEstado();

    o=fin();
		if(o==1)
    {
      break;
    }

    q=muerteJug();
    if(q==1)
    {
      break;
    }

		if(prota.mover)
		{	    muerteCaida();
			selectSprite();
			cpct_waitVSYNC(); 
			redibujarProta();
			prota.mover=NO;
		}  

        if(cuchillo.mover){
         
            moverCuchillo();
      
            cpct_waitVSYNC();
            redibujarCuchillo();
             imprimirMuni();
            if(!cuchillo.mover)
                borrarCuchillo();  
        }
                mata_enemigo();
         ini_estado();
     
     if(prota.vida/5==0)
     {
       imprimirVida();
     }
      
        
	}

}