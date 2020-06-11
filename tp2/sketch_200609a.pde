PFont miLetra;
float tamTexto;
float tamCirculo;

String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;

PImage miFondo;
PImage miImagen3;
PImage miImagen2;
PImage miImagen1;
PImage miOla;
PImage miFlor;
PImage miBurbuja;
PImage miTitulo;

float posX, posY;
float posY1, posY2, posY3, posY4, posY5, posY6;
float posI1, posI2,posI3, posI4,posI5,posI6;


void setup(){ 
  size(400,400);
  //background(0);
   
  
  //cargo tipografía e imágenes
  ;
   miFondo= loadImage("fondo.jpg");
   miLetra = createFont( "spongefont.ttf",20 );
   miImagen3 = loadImage( "imagen3.jpg" );
   miImagen2 = loadImage( "imagen2.jpg" );
   miImagen1 = loadImage( "imagen1.jpg" );
   miOla = loadImage( "ola.png" );
   miBurbuja = loadImage( "burbujas.png" );
   miTitulo = loadImage( "titulo.png" );
  
  //defino caracteristicas del texto e imagen
  textFont( miLetra );
  textAlign( CENTER, CENTER );
  imageMode( CENTER );
  
  posX=random(100,400);
  posY=random(100,400);
 
 
  posY1= 550;
  posY2=580;
  posY3= 900;
  posY4=930;
  posY5=1700;
  posY6=1730;
  posI1= 670;
  posI2=1050;
  posI3=1840;
  posI4=-1500;
  posI5=2100;
  posI6=2200;
  image(miFondo,width/2, height/2,400,400 );
  image(miTitulo,width/2, height/2,300,250 );
  
  tamCirculo=2;
  texto1=("DYRECTED AND PRODUCED BY");
  texto2=("STEPHEN HILLENBURG");
  texto3=("Written and Storyboarded by");
  texto4=("Derek Drymon");
  texto5=("Editor");
  texto6=("Lynn Hobson");
  
  
}

void draw(){
 
  
 noStroke();
 fill(#A3C8E0);
  ellipse(posX,posY,tamCirculo,tamCirculo);
  
  fill(#FFDC6A);
  text(texto1, 130 , posY1 );
  text(texto3,260, posY3 );
  text(texto5, 200 , posY5 );
  

  fill(255);
  text(texto2, 100 , posY2 );
  text(texto4, 280 , posY4 );
  text(texto6, 200 , posY6 );
  
  image(miImagen1,280,posI1,200,150);
  image(miBurbuja,80,posI1,50,80);
  image(miBurbuja,260,posY1,50,80);
  
  image(miImagen2,130,posI2,200,150);
  image(miBurbuja,290,posI2,50,80);
  image(miBurbuja,120,posY3,50,80);
  
  image(miImagen3,200,posI3,150,100);
  image(miOla,posI4,100,1000,1000);
  image(miBurbuja,200,posI5,120,150);
  image(miBurbuja,150,posI5, 100,120);
  image(miBurbuja,230,posI5,80,110);
  image(miBurbuja,100,posI5,150,180);
  image(miBurbuja,300,posI5,160,190);
  image(miBurbuja,60,posI5,110,140);
  image(miBurbuja,260,posI5,130,160);
  
  
  image(miOla,posI4,100,1000,1000);
  image(miBurbuja,200,posI6,120,150);
  image(miBurbuja,150,posI6,100,120);
  image(miBurbuja,230,posI6,80,110);
  image(miBurbuja,100,posI6,150,180);
  image(miBurbuja,300,posI6,160,190);
  image(miBurbuja,60,posI6,110,140);
  image(miBurbuja,260,posI6,130,160);
  
  
  
  posX = random( 0, 400 );
  posY = random( 0, 400 );






posY1= posY1 - 0.7;
posY2= posY2 - 0.7;
posY3=posY3- 0.7;
posY4=posY4-0.7;
posY5=posY5-1;
posY6=posY6-1;


posI1=posI1 -0.7;
posI2=posI2-0.7;
posI3=posI3-1;
posI4=posI4+1.1;
posI5=posI5-1;
posI6=posI6-1;
tamCirculo= tamCirculo +1;

 





};
