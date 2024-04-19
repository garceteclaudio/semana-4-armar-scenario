private Personaje personaje;
//private Asteroide rocaEspacial;

PImage fondo; // Variable para almacenar la imagen

public void setup(){
  size(800,600);
  fondo = loadImage("fondo.png"); // Carga la imagen desde la carpeta de datos
  
  personaje = new Personaje(); 

  personaje.setPosicion(new PVector(10,500));
  personaje.setVelocidad(new PVector(10,10));
  
  //rocaEspacial = new Asteroide(new PVector(width/2,0),new PVector(0,10));
  
}

public void draw(){

  image(fondo, 0, 0, width, height); // Ajusta el tamaño de la imagen al tamaño del lienzo
  personaje.dibujar();
   //actualizarVelocidadNave();
  //rocaEspacial.dibujar();
  //rocaEspacial.mover();
}



public void actualizarVelocidadNave(){
  if(personaje.getPosicion().x>(width/2)){
    personaje.getVelocidad().x=30;
  }else{
    personaje.getVelocidad().x=10;
  }
}
