  //no pude hacer una funcion con parametros porque en el valor de key necesitaba poner un string pero me lo tomaba como que esa era una variable, no se si me explico.
  //Entonces si ya tenia q repetir todos los if porque no podia "parametearlo" xd no tenia sentido.
   
   void botones(){
    
 
  if ( key == 'b'&& estado==2 ){
    estado=3;}

  if ( key == 'a'&& estado==2 ){
    estado =4;}

  if ( key == 'c'&& estado==2 ){
    estado=5;}

  if ( key == '1'&& estado==4 ){
    estado=6;}

  if ( key == '2'&& estado==4 ){
    estado=7;}

  if ( key == 'h'&& estado==3){
    estado=8;}
    
  if ( key == 'i'&& estado==3){
    estado=9;}

  if ( key == 'p'&& estado==5){
    estado=10;}

  if ( key == 'q'&& estado==5){
    estado=11;}
    
    if ( key == ' '){
    estado=0;}
   }
