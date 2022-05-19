//variables//
int miVariable;
String texto0;
String texto1;
String texto2;
String texto3;
PImage image06;
PImage image07;
PFont tipografia;
PFont tipografiaC;

void setup (){
size(600,400);
background(0,0,0);
println(frameCount);
miVariable=80;
texto0="AVATAR";
texto1="Written and directed by\n  JAMES CAMERON";
texto2="   Produced by\nJAMES CAMERON \n  JON LANDAU";
texto3="     Casting by\nMARGERY SIMKIN \nSAM WORTHINGTON \n  ZOE SALDANA";
image07=loadImage("image07.jpg");
image06=loadImage("image06.jpg");
tipografiaC= loadFont("credits.vlw"); 
tipografia=loadFont("avatar.vlw");


}





void draw (){
  background (0,0,0);
 miVariable=frameCount;
 image(image06,-10,(-miVariable/4));
 textFont(tipografiaC); 
 textSize(50);
 fill(208,224,245);
 text(texto1,50,200+miVariable/4);
 fill(208,224,245);
 textSize(50);
 text(texto2,50,-30+miVariable/4);
 text(texto3,40,-400+miVariable/4);
 //pantalla2//
 textFont(tipografia);
 textSize(100);
 fill(47,131,232,(+miVariable/55));
 text(texto0,30,(-700+miVariable/6));
 //pantalla3//
 image(image07,(+miVariable),0,700,400); 







 
 
 







 
}
 

 


 
