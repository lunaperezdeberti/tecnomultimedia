
Juego juego;


void setup() {
  size(800, 600);

  rectMode(CENTER);

  juego = new Juego();
}

void draw() {

  juego.empezar();
}


void keyPressed() {

  juego.mover();
  juego.volverAempezar();
}
