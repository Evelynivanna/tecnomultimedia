class Juego {
  int estado=0;

  Poder[]mypoder=new Poder[4];
  Prota myProta;
  Pantallas myPantallas;

  Juego() { 
    myProta= new Prota(loadImage("goku.png"), width/2, 650, 4);
    myPantallas= new Pantallas(loadImage("gameover.png"), loadImage("intro.png"));
    for (int i=0; i<mypoder.length; i++) {
      mypoder[i] = new Poder(loadImage("poder.png"), 8, i*height/mypoder.length, random(3, 6), 3);
    }
  }
  void actualizar() {
    if ( estado == 0) {
      myPantallas.displayInicio();
    } else if (estado == 1) { 
      myPantallas.displayFondo();

      for (int i=0; i<mypoder.length; i++) {
        mypoder[i].display();
        mypoder[i].drive();
        if ( mypoder[i].colision(myProta.x, myProta.y, myProta.ancho, myProta.alto)) {
          estado=2;
        }
      }

      myProta.display();
      myProta.mover();
    }

    if (estado==2) {
      myPantallas.displayFin();
      myPantallas.boton();
    } else if (estado ==1);
  }
  void tecla() {
    if ( estado == 0 ) {
      if (key == 'x' || key == 'X') {
        estado = 1;
      }
    }
  }
  void reinicio(){
     myProta= new Prota(loadImage("goku.png"), width/2, 650, 4);

    myPantallas= new Pantallas(loadImage("gameover.png"), loadImage("intro.png"));
    for (int i=0; i<mypoder.length; i++) {
      mypoder[i] = new Poder(loadImage("poder.png"), 8, i*height/mypoder.length, random(3, 6), 3);
    }
    estado=0;
  }
  
  void mouse() {
    if (estado == 2) {
      myPantallas.boton();
      {
        reinicio();
      }
    }
  }
}
