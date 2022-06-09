//Evelyn vergara com3//https://youtu.be/LV_ypuVM2gk// 
float x = 10;

void setup(){
size (400,400);
noFill();
strokeWeight(4);
ellipseMode (RADIUS);
 
}


void draw(){
  // Background cambio de color segun la posicion de mouseX-mouseY//
  float mx = map (mouseX ,0,width,255,0);
  float my = map (mouseY ,0, height,255,0);
  background (my,0,mx);
  
  //Ellipse posicion y movimiento//
  for (float x =10; x<= width-10; x +=10){
    ellipse (width/3, x, mx, my);}
    
  for (x =10; x<= width-10; x +=10){
    ellipse (height-35,x,mx, my);}
    
 for (x =10; x<= width-10; x +=10){
    ellipse (width/10,x, mx, my);}
    
  for (x =10; x<= width-10; x +=10){
    ellipse (height/1.60, x, mx, my);
}

 keyPressed (); 
 if (key=='v' || key== 'v') {
 background(0);} 
}
 
   
   
     
     
   

   
    
 
    
  
 
