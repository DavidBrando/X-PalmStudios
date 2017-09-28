
#include <cpctelera.h>
#include "enemigo.h"
#include "../mapa/map1.h"
#include "../mapa/carga_mapa.h"
#include "borracho.h"
#include "../jugador/jugador.h"
#include <stdio.h>
#define ANCHO  80
#define BORRACHO_FRAMES  16
#define ANIM_PAUSA      4
#define ANDAR_FRAMES    5
#define GOLPE_FRAMES    2


const Tframe g_Frames[BORRACHO_FRAMES] = {
      { E_derecha, g_borracho_0 }   ,  { E_derecha, g_borracho_1 }
   ,  { E_derecha, g_borracho_2 }   ,  { E_derecha, g_borracho_3 }
   ,  { E_derecha, g_borracho_4 }   ,  { E_derecha, g_borracho_5 }			
   ,  { E_derecha, g_borracho_6 }   ,  { E_derecha, g_borracho_7 }
   
};


Tframe* const anim_andar2[ANDAR_FRAMES] = { 
   &g_Frames[1], &g_Frames[2], &g_Frames[3], &g_Frames[4], &g_Frames[5]
};

Tborracho borracho;

u8* pmapa;
u8* mapaJug;
u8 e;


// Mirando hacia
enum {
      E_derecha   = 0
   ,  E_izquierda
} ENMirar;



Tframe* const anim_golpear[GOLPE_FRAMES] = {
	&g_Frames[7], &g_Frames[6]
};

u8 j;

void asignarFrame2(Tframe **animacion) {
   borracho.frame = animacion[borracho.nframe / ANIM_PAUSA];
}


void girarFrame2() {
   Tframe* f = borracho.frame;
   if (f->mira != borracho.mira) {
      cpct_hflipSpriteM0(G_BORRACHO_0_W, G_BORRACHO_0_H, f->sprite);
      f->mira = borracho.mira;
   }
}

void seleccionarSpriteBorracho() {
   switch(borracho.estado) {
      case 0:      { borracho.frame = &g_Frames[0];  break; }
      case 1:     { asignarFrame2(anim_andar2);    break; }
      case 2:		{ asignarFrame2(anim_golpear);   break; }
   }
   girarFrame2();
}

void dibujarBorracho()
{
	u8* punte = cpct_getScreenPtr(CPCT_VMEM_START, borracho.x, borracho.y);
	cpct_drawSpriteMaskedAlignedTable(borracho.frame->sprite, punte, G_BORRACHO_0_W, G_BORRACHO_0_H, a);
}

void borrarBorracho() {
   u8 w = 4 + (borracho.px & 1);
   u8 h = 7 + (borracho.py & 3 ? 1 : 0);
   cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
}


void redibujarBorracho() {
   borrarBorracho();
   borracho.px = borracho.x;
   borracho.py = borracho.y;
   dibujarBorracho();
}

void andar_ani2(u8 direccion)
{
  borracho.mira  = direccion;
   if(++borracho.nframe == 5*4)
      borracho.nframe = 0;
}

void golpear_ani2(u8 direccion){
  borracho.mira = direccion;
   if(++borracho.nframe == GOLPE_FRAMES*ANIM_PAUSA)
      borracho.nframe = 0;
}

void ini_andar2(u8 direccion)
{   
  borracho.nframe=0;
  borracho.estado=1;
  borracho.mira = direccion;
  borracho.mover=SI;
}

void izquierda()
{
   borracho.x--;
      andar_ani2(E_izquierda);
      borracho.estado=1;

      borracho.mover=SI;

       if(borracho.mover){

         seleccionarSpriteBorracho();
         cpct_waitVSYNC();
         redibujarBorracho();
         borracho.mover = NO;
    }
}

void derecha()
{
   borracho.x++;
       andar_ani2(E_derecha);
      borracho.estado=1;
      borracho.mover=SI;

       if(borracho.mover){
         seleccionarSpriteBorracho();
         cpct_waitVSYNC();
         redibujarBorracho();
         borracho.mover = NO;
    }
}



void golpear(u8 direccion){
  

   golpear_ani2(direccion);
   borracho.estado = 2;
   borracho.mover=SI;
   
    if(borracho.mover){
        seleccionarSpriteBorracho();
         cpct_waitVSYNC();
         redibujarBorracho();
         borracho.mover = NO;
    }

   restaVida();

}


void quietoENE()
{
    borracho.estado=0;
    borracho.mover = SI;
    borracho.nframe=0;
     if(borracho.mover){
         seleccionarSpriteBorracho();
         cpct_waitVSYNC();
         redibujarBorracho();
         e=1;
         borracho.mover = NO;
    }

}

void mata_enemigo()
{
  u8 cX=get_CX();
  u8 cY=get_CY();


     
    if(borracho.x-5 < cX && cX < borracho.x)
    { u8 w = 4 + (borracho.px & 1);
        u8 h = 7 + (borracho.py & 3 ? 1 : 0);
     cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
     j=1;
      
    }
    else if(borracho.x<cX && cX<borracho.x+5)
    {
         u8 w = 4 + (borracho.px & 1);
        u8 h = 7 + (borracho.py & 3 ? 1 : 0);
     cpct_etm_drawTileBox2x4(borracho.px / 2, (borracho.py-ORIGEN_MAPA_Y) / 4, w, h, 40, ORIGEN_MAPA, pmapa);
    j=1;     

    }


}

void quitar_vida()
{
  u8 x=get_X();

  if(borracho.x==x)
  {
    restaVida();
   
  }
}
 u32 c;
void wait4UserKeypress() {
       // Count the number of cycles passed till user k

    cpct_scanKeyboard_f(); 
    if (cpct_isAnyKeyPressed()) 
     {
        if(cpct_isKeyPressed(Key_CursorRight)||cpct_isKeyPressed(Key_CursorLeft)||cpct_isKeyPressed(Key_CursorUp))
         {
            c++;
         } 
     }
}

u8 get_BX(){
  return borracho.x;
}

u8 get_BY(){
  return borracho.y;
}


void reviveIA( )
{

   u32 random=0;  
      cpct_srand(c);
   random=cpct_rand()%70;
    borracho.x=borracho.px=5+random;
    borracho.y=borracho.py=162;
    pmapa=mapaJug;
    c=0;
    j=0;
    redibujarBorracho();
    ini_estado();
}

void IA()
{

  u8 x = get_X();
  u8 y = get_Y();

  mapaJug=get_tip_mapa();
  if(mapaJug==pmapa)
  {
   wait4UserKeypress();
   if(borracho.x-20 < x && x < borracho.x-6 && y==borracho.y-6)
    {
      if(j==0)
      {
        izquierda();
        e=0;
      }
    }

    else if(borracho.x+8<x && x<borracho.x+20 && y==borracho.y-6)
    {
        if(j==0)
        {
          derecha();
          e=0;
        }
    }

    else{ 
          if(e==0)
          {
             quietoENE();
          }

          if( borracho.x-20 < x && x <= borracho.x-6 && (y<162 && y>135)){
              
              golpear(E_izquierda);
              
              e=1;
          }else if(borracho.x+8<=x && x<borracho.x+20 && (y<162 && y>135)){
              golpear(E_derecha);
              
              e=1;
          }
          else if(borracho.x<x && x<borracho.x+G_BORRACHO_0_W && y==156){
              izquierda();
              dibujarProta();
              e=1;
          }
          else if(borracho.x-10<x && x<borracho.x && y==156){
              derecha();
              dibujarProta();
              e=1;
          }
          else
            e=0;
    }
  }
  else
  {
    reviveIA();
  }

}

u8 alive()
{
  return j;
}

void BOestado(u8 k)
{
  switch(k)
  {
     case 0: IA();  break;

  }
}

void ini_estado()
{
    BOestado(0);
}

void inicializar_borracho()
{
   
	borracho.x= borracho.px = 60;
	borracho.y= borracho.py = 162;
	borracho.mover=SI;
	borracho.estado = 0;//quieto
	borracho.nframe = 0;
    borracho.frame  = &g_Frames[0];
    borracho.mira   = E_derecha;
	pmapa=g_map1;
  mapaJug=get_tip_mapa();
  e=0;
  c=0;
  j=0;
	dibujarBorracho();

}

