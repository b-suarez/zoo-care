#include <cpctelera.h>
#include "espada.h"
#include "guarda.h"
#include "filete.h"
#include "espada.h"
#include "mierda.h"
#include "komodo.h"
#include "latigo.h"
#include "tilemap.h"
#include "zonaVision.h"
#include "spritePoli.h"
#include "music.h"
#define MemVideo (u8*)0xC000
#define SCR_WIDTH_PIXELS      160
#define SCR_HEIGHT_PIXELS     200
#define PIXELS_PER_BYTE         2
#define SPRITE_WIDTH_PIXELS    16
#define SPRITE_HEIGHT_PIXELS   24
#define PosXini   2
#define PosYini   60
#define PosEspXini   43
#define PosEspYini   45
#define EnemiX   56
#define EnemiY   140

const u8 g_palette[5] = { 
// HW Value  | FW Value | Colour name
//-------------------------------------
   0x14,  // |    0     | Black
   0x15,  // |    2     | Bright Blue
   0x13,  // |   20     | Bright Cyan
   0x16,  // |    9     | Green
   0x0E   // |   15     | Orange
};

typedef enum {
   No_Ataque = 0,  
   Ataque  = 1 ,
   Acaba_de_atacar = 2 
} DireccionesAtack;

typedef enum {
   Vigilar = 0,  
   Atacar  = 1,
   Huir = 2
} EstadosEnemigos;



typedef struct {      
   u8 x, y;  
   u8 nx, ny;          //  pixel location
   u8  w,  h;          // Width and height of the entity (in bytes!)
   u8* sprite;         // Sprite
   u8* spriteEspada;
   u8 ex,ey;
   u8 eantx,eanty;
   u8 ew,eh;
   DireccionesAtack dirAtaque;
   u8 lives;
   u8 change;
   u8 nivel;
   u8 senpuesto;
} TEntity;


typedef struct {
  u8 x,y;
  u8 nx, ny;
  u8 w, h;
  u8* sprite;
  u8 vigilancia;
  u8 change;
  u8 vivo;
  EstadosEnemigos estado;
} EnemyEntity;

typedef struct {
  u8 x,y;
  u8 w, h;
  u8* sprite;
  u8 dibujado,borrado,cogido;

} PoderEntity;

typedef struct {
  u8 x,y;
  u8 w, h;
  u8* sprite;
  u8 dibujado,borrado,cogido;

} mierdaEntity;


const   TEntity Personaje={
   2,60,
   2,60,
   10,20,  // | Sprite Size in bytes // |
   (u8*)&pers,   // Pointer to sprite definition
   (u8*)&espada,
   2,68,
   2,68,
   2,8,
   No_Ataque,
   3,
   1,
   1,
   0
  };


const   EnemyEntity Enemy={
    56,140,
    56,140,
    10,20,
    (u8*)&komodo,
    0,
    1,
    1,
    Vigilar
  };


const PoderEntity Power = {
  5,150,
  10,20,
  (u8*)&latigo,
  0,0,0
};

const mierdaEntity Mierda = {
  120,140,
  10,20,
  (u8*)&mierda,
  0,0,0
};



/*void myInterruptHandler() {
   static u8 i;   // Static variable to be preserved from call to call

   // Set the color of the border differently for each interrupt

  if(++i >= 5){
    //cpct_akp_musicPlay();
    i=0;
  }

  if (cpct_akp_songLoopTimes > 0)
            cpct_akp_musicInit(G_CancionRetro);


}*/


void score(){
  u8* puntMem;
  puntMem = cpct_getScreenPtr(MemVideo,5,5);
  if(Personaje.lives==3){
    cpct_drawStringM0("Vidas: 3",puntMem,g_palette[1],0);
  }else if(Personaje.lives==2){
    cpct_drawStringM0("Vidas: 2",puntMem,g_palette[1],0);
  }else if(Personaje.lives==1){
    cpct_drawStringM0("Vidas: 1",puntMem,g_palette[1],0);
  }
}


void CargarLevel(u8 nivel){

  cpct_clearScreen(0);

  if(nivel==1){
     u8* puntMem;
  puntMem = cpct_getScreenPtr(MemVideo,5,5 );

  cpct_etm_drawTileBox2x4(0, 0, 
                           40, 50, 
                           40, MemVideo, g_tilemap);
  }
   if(nivel==2){
     u8* puntMem;
  puntMem = cpct_getScreenPtr(MemVideo,5,5 );

  cpct_etm_drawTileBox2x4(0, 0, 
                           40, 50, 
                           40, MemVideo, g_tilemap2);
  }
   if(nivel==3){
     u8* puntMem;
  puntMem = cpct_getScreenPtr(MemVideo,5,5 );

  cpct_etm_drawTileBox2x4(0, 0, 
                           40, 50, 
                           40, MemVideo, g_tilemap3);
  }

 

score();

}


void iniciar(){ 

cpct_disableFirmware();
cpct_setVideoMode(0);
//cpct_fw2hw(paletaColores,4);
cpct_setPalette(g_palette,5);
cpct_setBorder(g_palette[0]);    // Set the border to the background colour (colour 0)
cpct_clearScreen(0);
//cpct_clearScreen_f64(0x5555);  
// Initialize instruments to be used for SFX (Same as music song)
cpct_akp_musicInit(G_CancionRetro);    // Initialize the music
cpct_akp_SFXInit(G_CancionRetro);
//cpct_akp_setFadeVolume(5);
//cpct_setInterruptHandler( myInterruptHandler );

}








void BorrarEntidades(){

     u8* puntMem;

cpct_waitVSYNC();

//borramos y escribimos al personaje
if(Personaje.change || Personaje.dirAtaque!=No_Ataque ){

  puntMem= cpct_getScreenPtr(MemVideo,Personaje.x,Personaje.y );
  cpct_drawSolidBox(puntMem,0,Personaje.w,Personaje.h);

  //borrar espada si atacamos
  if(Personaje.dirAtaque!=No_Ataque){

  puntMem = cpct_getScreenPtr(MemVideo,Personaje.eantx,Personaje.eanty);
  cpct_drawSolidBox(puntMem,0,Personaje.ew,Personaje.eh);

  }

}




///borrar enemigo 
if(Enemy.change ){
  puntMem= cpct_getScreenPtr(MemVideo,Enemy.x,Enemy.y);
  cpct_drawSolidBox(puntMem,0,Enemy.w,Enemy.h);
}

if(Power.cogido && !Power.borrado){
  puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
  cpct_drawSolidBox(puntMem,0,Power.w,Power.h);
}
if(Mierda.cogido && !Mierda.borrado){
  puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
  cpct_drawSolidBox(puntMem,0,Mierda.w,Mierda.h);
}

  



}


u16 myTile(u8 x, u8 y) {
   u8 tx = x / 2;
   u8 ty = y / 4;
   return ty*40 + tx;
}

u8 mapActPosition(u16 position){

u8 pos;
  if(Personaje.nivel==1){

    pos=g_tilemap[position];

  }else if(Personaje.nivel==2){

    pos=g_tilemap2[position];

  }else if(Personaje.nivel==3){

    pos=g_tilemap3[position];

  }
  return pos;

}




void ComprobarTeclado(TEntity *player){
       //
      //Teclado
      //
player->change=0;
player->x=player->nx;
player->y=player->ny;
player->eantx=player->ex;
player->eanty=player->ey;


cpct_scanKeyboard_f();
if(cpct_isAnyKeyPressed_f()){

  ////condiciones acabar nivel
if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==2 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==2 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==2 && Personaje.nivel==1){

player->nivel=2;
CargarLevel(Personaje.nivel);

}
///a la posicion que te devuelve mytyle le sumas los tyles necesarios para lograr saber el punto exacto para evitar colision... //Cada 40 unidades es bajar una fila
if(cpct_isKeyPressed(Key_CursorRight) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+5)==0 &&  mapActPosition(myTile(Personaje.nx,Personaje.ny)+85)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+165)==0){
  player->nx+=2;
  player->change=1;
 
}
  else if(cpct_isKeyPressed(Key_CursorLeft) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-1)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+79)==0  && mapActPosition(myTile(Personaje.nx,Personaje.ny)+159)==0 ){
   player->nx-=2;
   player->change=1;
   
  }
    if(cpct_isKeyPressed(Key_CursorUp) && mapActPosition(myTile(Personaje.nx,Personaje.ny)-40)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-38)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)-36)==0){
      player->ny-=4;
      player->change=1;
     
    }
      else if(cpct_isKeyPressed(Key_CursorDown) && mapActPosition(myTile(Personaje.nx,Personaje.ny)+200)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+202)==0 && mapActPosition(myTile(Personaje.nx,Personaje.ny)+204)==0 ){
          player->ny+=4;
          player->change=1;
      }
        if(cpct_isKeyPressed(Key_W) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny-8))==0){
          if(player->senpuesto==0){
          player->ex = player->nx + (player->w/2) - 1; 
          player->ey = player->ny - (player->h/2)+2 ;
          player->senpuesto=1;
          }
        }else if(cpct_isKeyPressed(Key_A) && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+8))==0 && mapActPosition(myTile(Personaje.nx-2,Personaje.ny+12))==0 ){
               if(player->senpuesto==0){
                player->ex = player->nx - (player->w/2)+1 ; 
                player->ey = player->ny + (player->h/2) - 1;
                player->senpuesto=1;
              }
            }
              else if(cpct_isKeyPressed(Key_S) && mapActPosition(myTile(Personaje.nx+4,Personaje.ny+20))==0  &&  mapActPosition(myTile(Personaje.nx+4,Personaje.ny+24))==0){
                 if(player->senpuesto==0){
                player->ex = player->nx + (player->w/2) - 1; 
                player->ey = player->ny + player->h +2 ;
                player->senpuesto=1;
          }
              }
                else if(cpct_isKeyPressed(Key_D) &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+8))==0 &&  mapActPosition(myTile(Personaje.nx+10,Personaje.ny+12))==0){
                  if(player->senpuesto==0){
                  player->ex = player->nx + player->w +1 ; 
                  player->ey = player->ny + (player->h/2) - 1;
                  player->senpuesto=1;
              }
            }
}
}




///demasiadas variables le estoy pasando



void DibujarEntidades(){

   u8* puntMem;  //puntero a memoria


 // Draw the sprite 
   if(Personaje.change  || Personaje.dirAtaque!=No_Ataque ){
     puntMem = cpct_getScreenPtr(MemVideo,Personaje.nx,Personaje.ny );
      cpct_drawSprite(Personaje.sprite, puntMem, Personaje.w, Personaje.h);


//dibujamos la espada calculando su posicion con el sprite si atacamos
           

   }
  if(Personaje.senpuesto==1){
    puntMem= cpct_getScreenPtr(MemVideo,Personaje.ex,Personaje.ey);
    cpct_drawSprite(&filete, puntMem, Enemy.w, Enemy.h);
  }

////Dibujar enemigo
  if(Enemy.change){

  puntMem= cpct_getScreenPtr(MemVideo,Enemy.nx,Enemy.ny);
  cpct_drawSprite(Enemy.sprite, puntMem, Enemy.w, Enemy.h);

  }
  if(!Mierda.dibujado ){
  puntMem= cpct_getScreenPtr(MemVideo,Mierda.x,Mierda.y);
  cpct_drawSprite(Mierda.sprite, puntMem, Mierda.w, Mierda.h);
}

if(!Power.dibujado ){
  puntMem= cpct_getScreenPtr(MemVideo,Power.x,Power.y);
  cpct_drawSprite(Power.sprite, puntMem, Power.w, Power.h);
}


  
}




void respawn(TEntity *personaje, EnemyEntity *enemigo){

personaje->change=1;
enemigo->change=1;
personaje->lives-=1;
score();
BorrarEntidades();
personaje->x = PosXini;
personaje->y = PosYini;
personaje->nx = PosXini;
personaje->ny = PosYini;
personaje->ex = PosEspXini;
personaje->ey = PosEspYini;

enemigo->x = EnemiX;
enemigo->y = EnemiY;
enemigo->nx = EnemiX;
enemigo->ny = EnemiY;


}

u8 distancia(){



  u8 distancia=0;

  if(((Personaje.nx>Enemy.nx-30 &&  Personaje.nx<=Enemy.nx) || (Personaje.nx<Enemy.nx + 30 && Personaje.nx>=Enemy.nx )) && ((Personaje.ny>Enemy.ny-50 &&  Personaje.ny<=Enemy.ny) || (Personaje.ny<Enemy.ny + 50 && Personaje.ny>=Enemy.ny )) ) distancia=1;
  else distancia = 10;

  return distancia;

}

void IA(EnemyEntity *enemigo, TEntity *player){

enemigo->change=0;
enemigo->x=enemigo->nx;
enemigo->y=enemigo->ny;

if(Personaje.senpuesto==1){
  if(Personaje.ex < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
    enemigo->nx-=1;
    enemigo->change=1;
  }else if(Personaje.ey > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
    enemigo->ny+=1;
    enemigo->change=1;
  }else if(Personaje.ey < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ) {
    enemigo->ny-=1;
    enemigo->change=1;
  }else if(Personaje.ex > Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)!=1 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
    enemigo->nx+=1;
    enemigo->change=1;
  }else if(Enemy.ny == Personaje.ey && Enemy.nx == Personaje.ex){
  enemigo->change=1;
  enemigo->estado=Vigilar;
  player->senpuesto=0;
  }
}

 else if(Enemy.estado==Vigilar){

  if(Enemy.vigilancia){
    if( mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
    enemigo->ny+=2;
    enemigo->change=1;
     }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0 ){
      enemigo->ny-=2;
      enemigo->change=1;
      enemigo->vigilancia=0;
     }
    
  }else{
     if(mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0  ){
      enemigo->ny-=2;
      enemigo->change=1;
     }else if(mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0&& mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
      enemigo->ny+=2;
      enemigo->change=1;
      enemigo->vigilancia=1;
     }

   
  }

  if(distancia()<5)enemigo->estado=Atacar;



  }else if(Enemy.estado==Atacar){

  if(Personaje.nx < Enemy.nx && mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0 ){
    enemigo->nx-=1;
  }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
    enemigo->ny+=2;
  }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
    enemigo->ny-=2;
  }if(Personaje.nx > Enemy.nx  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0 ){
    enemigo->nx+=1;
  }
  if(distancia()>5)enemigo->estado=Vigilar;
  enemigo->change=1;
  
    }else if(Enemy.estado==Huir && distancia()<5 ){

     if(Personaje.nx < Enemy.nx &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)+5)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+85)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+165)==0){
      enemigo->nx+=1;
      enemigo->change=1;
     }if(Personaje.ny > Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)-40)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)-38)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)-36)==0){
      enemigo->ny-=2;
      enemigo->change=1;
     }if(Personaje.ny < Enemy.ny && mapActPosition(myTile(Enemy.nx,Enemy.ny)+200)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+202)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+204)==0){
     enemigo->ny+=2;
     enemigo->change=1;
     }if(Personaje.nx > Enemy.nx  &&  mapActPosition(myTile(Enemy.nx,Enemy.ny)-1)==0 && mapActPosition(myTile(Enemy.nx,Enemy.ny)+79)==0  && mapActPosition(myTile(Enemy.nx,Enemy.ny)+159)==0){
     enemigo->nx-=1;
     enemigo->change=1;
     }

     
   }



} 




//Colisiones
void ComprobarColision(TEntity *personaje, PoderEntity *poder, EnemyEntity *enemigo, mierdaEntity *mierda){



//colision 
/*
if(Personaje.ex+Personaje.ew > posx && Personaje.ex < posx+ancho && Personaje.ey+Personaje.eh > posy && personaje->ey < posy+alto && personaje->dirAtaque!=No_Ataque){

personaje->variablepruebadestruir+=1;
}*/


if(Personaje.nx+Personaje.w > Enemy.nx && Personaje.nx < Enemy.nx+Enemy.w && Personaje.ny+Personaje.h > Enemy.ny && Personaje.ny < Enemy.ny+Enemy.h){
   respawn(personaje,enemigo);
}


if(Personaje.nx+Personaje.w > Power.x && Personaje.nx < Power.x+Power.w && Personaje.ny+Personaje.h > Power.y && Personaje.ny < Power.y+Power.h){
    poder->cogido=1;
    enemigo->estado=Huir;
}
if(Personaje.nx+Personaje.w > Mierda.x && Personaje.nx < Mierda.x+Mierda.w && Personaje.ny+Personaje.h > Mierda.y && Personaje.ny < Mierda.y+Mierda.h){
    mierda->cogido=1;
}
     

}



u8 menu(){

  u8* puntMem; 
  cpct_clearScreen(0);

   //puntero a memoria


 // Draw the string
      puntMem = cpct_getScreenPtr(MemVideo,0,10 );
      cpct_drawStringM0("Welcome to Scape", puntMem ,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,80 );
      cpct_drawStringM0("Pulse 'I' para ver ", puntMem,g_palette[1],0);
    
    puntMem = cpct_getScreenPtr(MemVideo,0,95 );
      cpct_drawStringM0("controles", puntMem,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,120 );
      cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
    
    puntMem = cpct_getScreenPtr(MemVideo,0,135 );
      cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,160 );
      cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);

      while(1){
        cpct_scanKeyboard_f();

      if(cpct_isKeyPressed(Key_E) ){
        return 2;
      }
    
     if(cpct_isKeyPressed(Key_V) ){
       
    cpct_clearScreen(0);
    
     puntMem = cpct_getScreenPtr(MemVideo,0,10 );
      cpct_drawStringM0("Welcome to Zoo clean", puntMem ,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,80 );
      cpct_drawStringM0("Recoge los excrementos", puntMem,g_palette[1],0);
    
    puntMem = cpct_getScreenPtr(MemVideo,0,95 );
      cpct_drawStringM0("para abrir las jaulas", puntMem,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,120 );
      cpct_drawStringM0("Pulse Espacio", puntMem,g_palette[1],0);
    
    puntMem = cpct_getScreenPtr(MemVideo,0,135 );
      cpct_drawStringM0("para jugar", puntMem,g_palette[1],0);
    
    

      puntMem = cpct_getScreenPtr(MemVideo,0,160 );
      cpct_drawStringM0("Pulse 'E' para salir", puntMem,g_palette[1],0);
        
      }
    
    if(cpct_isKeyPressed(Key_I) ){
      
    cpct_clearScreen(0);
      
      puntMem = cpct_getScreenPtr(MemVideo,0,10 );
      cpct_drawStringM0("Controles Scape", puntMem ,g_palette[1],0);
      
      
      
      puntMem = cpct_getScreenPtr(MemVideo,0,80 );
      cpct_drawStringM0("Flechas de direccion", puntMem ,g_palette[1],0);
      
      puntMem = cpct_getScreenPtr(MemVideo,0,95 );
      cpct_drawStringM0("para mover", puntMem ,g_palette[1],0);
      
      
      
      puntMem = cpct_getScreenPtr(MemVideo,0,120 );
      cpct_drawStringM0("WASD para dejar señuelos", puntMem ,g_palette[1],0);
      
      puntMem = cpct_getScreenPtr(MemVideo,0,135 );
      cpct_drawStringM0("dejar señuelo", puntMem ,g_palette[1],0);
      
      
      
      puntMem = cpct_getScreenPtr(MemVideo,0,160 );
      cpct_drawStringM0("Pulse 'V' para", puntMem,g_palette[1],0);
      
      puntMem = cpct_getScreenPtr(MemVideo,0,175 );
      cpct_drawStringM0("volver", puntMem,g_palette[1],0);
            
      
      }
      if(cpct_isKeyPressed(Key_Space)){
        return 1;
      }

      }
}

void actualizarPower(PoderEntity *poder, mierdaEntity *mierda){

  if(!Power.dibujado)poder->dibujado=1;
  if(Power.cogido && !Power.borrado)poder->borrado=1;

  if(!Mierda.dibujado)mierda->dibujado=1;
  if(Mierda.cogido && !Mierda.borrado)mierda->borrado=1;

}




void main(void) {
  
   

 // u8* puntMem; //puntero a memoria

/////POR AQUIII Crear puntero que iguale a las variables constante de arriba--> personaje y enemigos.


//  TEntity* player=Personaje;

   

TEntity *player=&Personaje;
EnemyEntity *enemigo=&Enemy;
PoderEntity *poder = &Power;
mierdaEntity *mierda = &Mierda;
u8 resultado_menu=0;




  iniciar();


   // Loop forever


while (resultado_menu!=2){

/*if(alive){}


*/
if(resultado_menu==0){
resultado_menu =  menu();
if(resultado_menu!=2){
  player->lives=3;
  cpct_clearScreen(0);

  cpct_etm_setTileset2x4(g_tilesetum);
  CargarLevel(Personaje.nivel);
}


}

if(resultado_menu==1){

  cpct_akp_musicPlay();
  cpct_setBorder(g_palette[1]);

BorrarEntidades();
cpct_setBorder(g_palette[2]);

DibujarEntidades();



cpct_setBorder(g_palette[0]);


cpct_setBorder(g_palette[0]);
actualizarPower(poder,mierda);
ComprobarTeclado(player);
IA(enemigo,player);
ComprobarColision(player,poder,enemigo,mierda);

if (cpct_akp_songLoopTimes > 0)
            cpct_akp_musicInit(G_CancionRetro);

if(Personaje.lives==0)resultado_menu=0;
}


    /*  

     puntMem= cpct_getScreenPtr(MemVideo,Personaje.x,Personaje.y);
      cpct_drawSolidBox(puntMem,0,Personaje.w,Personaje.h);

      


      puntMem= cpct_getScreenPtr(MemVideo,Personaje.x,Personaje.y);
      cpct_drawSprite(Personaje.sprite,puntMem,Personaje.w,Personaje.h);*/
   }
  
     
}
