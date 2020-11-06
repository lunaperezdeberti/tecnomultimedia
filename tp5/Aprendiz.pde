class Aprendiz {

  float x, y;
  PImage aprendiz;


  Aprendiz () {


    aprendiz= loadImage("aprendiz.png");

    x=100;
    y=height/2;
  }


  void moverArriba() {

    if (keyCode== UP && y>=150)
      y = y - 10;
  }

  void moverAbajo() {

    if (keyCode== DOWN && y<=450)
      y=y+10;
  }


  void dibujar() {

    imageMode(CENTER);
    image(aprendiz, x, y, 125, 125);
  }
}
