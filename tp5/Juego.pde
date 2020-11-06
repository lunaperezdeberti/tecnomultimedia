
class Juego {

  String estado;

  float ax;
  int vida;
  float ay;
  PFont font;
  float segundos;
  Aprendiz jugador;
  Arboles arboles;


  Juego() {

    estado = "jugar";

    ax=random(400, 750);

    vida= 3;

    ay=250;

    font= createFont("Old_Englished_Boots.ttf", 48);
    textFont(font);

    jugador= new Aprendiz();

    arboles= new Arboles();
    
    
  
  }

  void empezar() {

    background(#B7B7B7);
    noStroke();
    fill(#6A6A6A);
    rect(width/2, height/2, 800, 400);
    
  
    
    println(segundos);
    jugador.dibujar();
    
    arboles.dibujar();
    arboles.mover();
    juego.chocar();
    juego.perder();
    juego.ganar();
    
  }


  void mover() {


segundos=frameCount/60;
    jugador.moverArriba();
    jugador.moverAbajo();
  }

  void chocar() {
    
    fill(255);
    textAlign(CENTER);
    textSize(28);
    text("De camino a tu destino, como era muy aburrido el recorrido, decidiste ponerle emocion y\nterminarlo en 15 segundos, veamos si podes conseguirlo sin chocarte ningun arbol", width/2,50,30);
    textSize(48);
    text(vida+"vidas",width/2,height/2);
    for (int i=0; i<6; i++) {
      float distancia= dist(jugador.x, jugador.y, arboles.px[i], arboles.py[i]);
      if (distancia<=arboles.tam-55) {
        arboles.px[i]=width+100;
        vida=vida-1;
      }
      println(distancia);
    }
  }

  void perder() {

    if (vida<=00) {

      vida=0;
      
      background(#FFFFFF);
      noStroke();
      textAlign(CENTER);
      fill(#6A6A6A);
      ellipse(width/2, height/2, 650, 650);
      fill(#F2ED87);
      text("Tardaste demasiado y el recorrido termino \n siendo aburrido", width/2, height/2);
      text("toca espacio para volver a comenzar", width/2, 400);
      estado="fin";
    }
  }
  
  void ganar(){
  
  if(segundos>=10){
 
    segundos=10;
      background(#FFFFFF);
      noStroke();
      textAlign(CENTER);
      fill(#6A6A6A);
      ellipse(width/2, height/2, 650, 650);
      fill(#F2ED87);
      text("Conseguiste llegar en el tiempo deseado!", width/2, height/2);
      text("toca espacio para volver a comenzar", width/2, 400);
      
      estado="fin";
  
  }
  }
  
  void volverAempezar(){
    
    if ( keyCode =='f' && estado=="fin"){
    vida=3;
   empezar();
  segundos=0;
   
   
    }
}
  
}
