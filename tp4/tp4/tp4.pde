
int estado;
PImage[] imagen = new PImage[7];
String[] mistextos= new String[38];
PFont font;
color c;
float tamText;
int i;
float x;
float y;
float tamX;
float tamY;

void setup() {
  size(800, 600);
  textAlign(CENTER); 
  imageMode(CENTER);
  rectMode(CENTER);
  //fuente

  fill(#F2ED87);


  font= createFont("Old_Englished_Boots.ttf", 48);
  textFont(font);

  //estado
  estado=0;

  //imagenes
 
 imagenes();
  
  //textos
 
 mistextos();
    
}

void draw() {



  //------------------------------------------------------------------estado0
  if (estado==0) {

    //pantalla 1
    background(100);
    textos(#F2ED87,200, width/2, height/2,0);
    textos(#F2ED87, 35, 400,570,1);
     textos(0,25,700,570,2);
    
  
  }
  //--------------------------------------------estado1
  if (estado==1) {
    background(0);
    
    image( imagen[2], width/2, height/2,600,600);

    fill(0);
    rect(300, 110, 410, 100);
    image(imagen[0], width-(width/4), height-(height/1.174), 100, 300);
    image(imagen[1], 200, 450, 200, 350);

    textos(#F2ED87,23,300,100,3);
   
     textos(0,23,400,570,4);
    
  }//--------------------------------------------------------------estado2
  if (estado==2) {
    background(0);
    image(imagen[3], width/2, height/2, 500, 600);
    //fill(0);
    
     textos(0,40,425,100,5);
     textos(0,40,400,230,6);
     textos(0,40,400,360,7);
     textos(180,20,425,115,8);
     textos(180,20,400,245,9);
     textos(180,20,410,375,10);

  }
  //---------------------------------------------------------------estado3

  if (estado==3) { 

    background(0);
    image(imagen[4], width/2, height/2, 400, 600);
    
     textos(#F2ED87,30,100,250,11);
   

    rect(300, height/2, 150, 50);
    rect(500, 350, 200, 50);

 textos(0,25,300,height/2,12);
  textos(0,25,500,350,13);



 textos(255,20,300,315,14);
  textos(255,20,500,365,15);

  }
  //---------------------------------------------------------------------estado4

  if (estado==4) {

    background(0);
    image(imagen[5], width/2, height/2, 400, 600);
     textos(#F2ED87,30,400,600,16);
      textos(#F2ED87,25,700,140,17);
       textos(#F2ED87,25,700,280,18);
   

    triangle(510, 130, 520, 130, 495, 145);
    rect(500, 100, 200, 60);

    triangle(440, 380, 450, 380, 430, 395);  
    rect(400, 350, 250, 60);

 textos(255,25,700,50,19);
   

 textos(255,25,500,100,20);
  textos(255,25,400,350,21);
   
  }
  //-----------------------------------------------------------------------------------estado5
  if (estado==5) {

    background(0);
    image(imagen[6], width/2, height/2, 800, 600);

    fill(#F2ED87);
    triangle(200, 100, 210, 100, 200, 115);
    rect(190, 75, 350, 50);

    triangle(480, 75, 495, 75, 480, 90);
    rect(480, 50, 250, 50);

 textos(0,30,width/2,550,22);
  textos(0,30,width/2,25,23);
   textos(0,25,190,75,24);
    textos(0,25,480,50,25);
     textos(0,25,210,40,26); 
     textos(0,25,550,25,27);
   
  }
  //-----------------------------------------------------------------------------------------------estado6

  if (estado==6) {

    //final trigo
    background(180);
     textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,29); 
      textos(#F2ED87,30,width/2,500,37);
  
  }


  //-----------------------------------------------------------------------------------------------estado7

  if (estado==7) {

    //final cura

    background(180);
    textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,30); 
      textos(#F2ED87,30,width/2,500,37);
  

  //-----------------------------------------------------------------------------------------------estado8

  if (estado==8) {

    //final hongo

    background(180);
    textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,31); 
      textos(#F2ED87,30,width/2,500,37);
 
  }


  //-----------------------------------------------------------------------------------------------estado9

  if (estado==9) {

    //final ciervo

    background(180);
    textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,32); 
      textos(#F2ED87,30,width/2,500,37);
    
  }

  //-----------------------------------------------------------------------------------------------estado10

  if (estado==10) {

    //final puente

    background(180);
     textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,33); 
      textos(#F2ED87,30,width/2,500,37);
  
  }

  //-----------------------------------------------------------------------------------------------estado11

  if (estado==11) {

    //final alquimia

    background(180);
     textos(0,40,width/2,200,28);
      textos(#F2ED87,150,width/2,450,3436); 
      textos(#F2ED87,30,width/2,500,37);
   
  }
  //-----------------------------------------------------------------------------------------------estado12CREDITOS

  if (estado==12) {

    //CREDITOS
    background(0);
     textos(0,40,width/2,200,35);
      textos(#F2ED87,150,width/2,450,36); 
      textos(#F2ED87,30,width/2,500,37);
    
  }
}
}


void mousePressed() {



  if ( mouseX >= 300 && mouseX <= 500 && mouseY >= 500 && mouseY <= 600 && estado>=0 && estado<=1 ) {
    estado=estado+1;}

    if ( mouseX >=600 && mouseX <=800 && mouseY >=500 && mouseY<=600){
      estado=12;
  
}
}
void keyPressed() {

  botones();
}
