//-----------------------------LICENSE NOTICE------------------------------------
//  This file is part of CPCtelera: An Amstrad CPC Game Engine
//  Copyright (C) 2015 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#include <cpctelera.h>
#include "jugador/personaje.h"
#include "tiles/tiles.h"
#include "jugador/jugador.h"
#include "mapa/carga_mapa.h"
#include "enemigo/enemigo.h"
#include "tiles/async.h"

#define TITULO  cpctm_screenPtr(CPCT_VMEM_START, 24, 80)
#define PRESEN  cpctm_screenPtr(CPCT_VMEM_START, 24, 110)
#define SCREEN  cpctm_screenPtr(CPCT_VMEM_START, 27, 150)
#define SCREEN2  cpctm_screenPtr(CPCT_VMEM_START, 17, 160)
#define FIN cpctm_screenPtr(CPCT_VMEM_START, 25, 75)
#define CONTINUE cpctm_screenPtr(CPCT_VMEM_START, 14, 85)
#define DIED cpctm_screenPtr(CPCT_VMEM_START, 0, 55)
u8 estados;

void presenta()
{
   cpct_drawSprite(g_async, TITULO, G_ASYNC_W, G_ASYNC_H);
     cpct_drawStringM0("Presenta", PRESEN, 1, 0);
    cpct_drawStringM0 ("PLEASE!", SCREEN, 3, 0);
    cpct_drawStringM0 ("PRESS INTRO!", SCREEN2, 3, 0);

}

u8 fin()
{
  u8 mapa=get_mapa();
  u8 x=get_X();
  u8 t=0;
  if(mapa==6&& x==74)
  {
   cpct_clearScreen(0);
    estados=2;
    t=1;
  }
  return t;
}

u8 muerteJug()
{
  u8 vida=get_vida();
  u8 v=0;
  if(vida<=0)
  {
     cpct_clearScreen(0);
      estados=3;
    v=1;
  }
  return v;
}
void inicializar()
{
	cpct_disableFirmware();
	cpct_setVideoMode(0);
	cpct_setBorder(HW_BLACK);
	cpct_setPalette(g_palette,16);
   cpct_etm_setTileset2x4(g_tileset);
   estados=0;
}

void cambiaEstado(u8 state)
{
   estados=state;
}

void teclado(u8 k)
{
   cpct_scanKeyboard_f();
    if ( cpct_isKeyPressed(Key_Return)) {
      if(k==0)
      {
         estados=1;
         cpct_clearScreen(0);
      }

      if(k==1)
      {

         estados=2;
         
      }
      if(k==2||k==3)
      {
        estados=0;
        
      }
    }
}

void main(void) {
   inicializar();
   while(1)
   {
      
      switch(estados)
      {
         case 0: 
              presenta();
              teclado(estados);
         
     
         break;
         case 1:
          cpct_clearScreen(0);
          inicializar_jugador();
          inicializar_borracho();
          ejecutar_jugador();
          break;

          case 2:
             
              cpct_drawStringM0 ("THE END", FIN, 4, 0);
              cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
                cpct_waitVSYNC();
                teclado(estados);
          break;

          case 3:
            cpct_drawStringM0 ("YOUR PLAYER HAS DIED", DIED, 4, 0);
            cpct_drawStringM0 ("PRESS ENTER!!", CONTINUE, 4, 0);
                cpct_waitVSYNC();
                teclado(estados);
          break;                    
      }
   }
}
