PImage princesa;
PImage fondo;

Princesa p;  

void setup(){
  size( 851, 315 );
imageMode(CENTER);
  
  
  princesa=loadImage("Lumpy_Space.png");
  fondo= loadImage("fondo.png");
 
  
  p = new Princesa( width/2, height/2, 170, 200);
}


void draw(){
  
image(fondo,width/2,height/2);

  fill( 100, 20 );
  rect( 0, 0, width, height );  
  

  p.imagen();

}

void keyPressed(){

  p.moverIzq();
  p.moverDer();  
}
