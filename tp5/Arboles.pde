class Arboles {




  float vel;

  float tam;
  PImage arbol1;
  PImage arbol2;
  int cantArboles;
  float[] px=new float[6];
  float[] py=new float[76];



  Arboles() {


    vel=2;
    tam= 150;

    px[0]=900;
    px[1]=1260;
    px[2]=1560;
    px[3]=1085;
    px[4]=1410;
    px[5]=1660;



    py[0]=195;
    py[1]=195;
    py[2]=195;
    py[3]=405;
    py[4]=405;
    py[5]=405;



    

    arbol1= loadImage("image1.png");

    for (int i=0; i < 6; i++) {
      
    }
    for (int i=0; i < 6; i++) {
      
    }
  }



  void dibujar() {

    for (int i=0; i < 6; i++) { 
      px[i]=px[i]--;
      
    }
    imageMode(CENTER);
    for (int i=0; i < 6; i++) {
      image(arbol1, px[i], py[i], tam*2, tam);
    }
  }


  void mover() {
    for (int i=0; i < 6; i++) {
      px[i]=px[i]-3;
      if (px[i]<-50) {
        px[i]=width+50;
      }
    }
  }
}
