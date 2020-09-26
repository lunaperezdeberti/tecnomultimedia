class Princesa{

 
  float x, y;
  float t1;
  float t2;
 


  Princesa( float x_, float y_, float t1_ , float t2_) {
   
    x = x_;
    y = y_ ;
    t1 = t1_;
    t2= t2_;
  }

  void moverConMouse() {
    x = mouseX;
  }

  void imagen() {
   
    
      image(princesa,x,y,t1,t2);
      
   
  }


  void moverIzq() {
    if ( keyCode == LEFT )
      x -= t1/4;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      x += t1/4;
  }
}
