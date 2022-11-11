import processing.sound.*;


boolean DEBUG= false;
Juego myJuego;
SoundFile miSonido;

void setup() {
  size(800, 700);
  myJuego=new Juego( );
  miSonido = new SoundFile(this,"sonido ambiente.aiff");
  miSonido.loop();


}

void draw() {
  myJuego.actualizar();
}

void keyPressed() {
  //pantalla 1
  myJuego.tecla();
}
void mousePressed() {
  myJuego.mouse();
 if (miSonido.isPlaying()){
  miSonido.stop();
 } else{
   miSonido.loop();}
}
