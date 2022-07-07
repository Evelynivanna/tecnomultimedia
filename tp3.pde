//EVELYN VERGARA COM3//https://youtu.be/YnfhKiWpWsc
//arrays
Personaje[]misPersonajes = new Personaje [50];
//img
PImage inicio;
PImage cabezazombie; 
//puntuacion
int Puntos = 0;
int Puntuacionmasalta = 0;
boolean intro = true;
 int tiempototal= 20000;
 int tiempo;
 
 
 void setup (){
   size( 600,600);
   inicio= loadImage("inicio.jpg"); 
   cabezazombie= loadImage ("cabezazombie.png");
   textSize( 30);
   tiempo = millis();
   
   for (int i=0; i<misPersonajes.length; i++){
     misPersonajes [i] = new Personaje ( 250,250,8);}
 }
 
 
 void draw(){
   background(0);
   if(keyPressed){
     if(key == 'i'|| key  == 'I'){
       intro = false;
     }
   }
      if(intro == true){
         image(inicio,0,0);
       fill(12,212,245); 
       text( "PUNTUACION MAS ALTA:"+Puntuacionmasalta,100,550);
     text("Presiona 'I' para iniciar",130,500);}
      else { 
        for (int i=0; i<misPersonajes.length; i++){
      misPersonajes [i].velocidad(); 
      misPersonajes [i].display();
      misPersonajes [i].limites();
      misPersonajes [i].matar();
      misPersonajes [i].score();
      misPersonajes [i]. gameover();
    }
   
    }
 }

 
 class Personaje {
 float x;
 float y;
 float t; 
 float vloX;
 float vloY; 
 Personaje (float posX , float posY , float diametro){
   x = posX;
   y =posY;
   t = diametro;
   
   vloX = random( -2,4);
   vloY = random ( -2,4); }
 
void velocidad(){
 x += vloX;
 y += vloY;} 
 
 void display(){
   image(cabezazombie,y,x,60,60); }
 
 void limites(){
   if(x<0 || (x>width-t)) {
     vloX = -vloX;}
     
     if (y<0 || (y> height-t)){
       vloY = -vloY;}}
       
       void matar(){
         if( mousePressed){
       float distancia = dist(mouseX, mouseY, y, x);
       if( distancia< t){
         x =-1000;
         vloX = 0;
         vloY=0;
         Puntos ++;
         Puntuacionmasalta = max ( Puntos,Puntuacionmasalta);}
         }
       }
          void score (){
       fill(12,212,245);
       text("PUNTOS:"+Puntos,20,30);
     }
     
         
         
   void gameover() { 
   int passedTime = millis() - tiempo;
   
     if (passedTime > tiempototal){
         intro = true;
         tiempo = millis();
         Puntos = 0;
         for(int i=0; i<misPersonajes.length; i++) {
         misPersonajes[i] = new Personaje(300,300,35);  
         }
     }
   }
   
}
