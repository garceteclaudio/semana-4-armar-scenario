import processing.sound.*;

SoundFile musica;
private Personaje personaje;
private Alien alien, alien2, alien3, alien4, alien5;
private PImage fondo; // Variable para almacenar la imagen

public void setup(){
  size(800,600);
  
  // Cargar el archivo de música
  musica = new SoundFile(this, "8bit.mp3");
  
  // Reproducir la música
  musica.play();
  
  fondo = loadImage("fondo.png"); // Carga la imagen desde la carpeta de datos
  
  personaje = new Personaje(); 
  personaje.setPosicion(new PVector(50,500));
  personaje.setVelocidad(new PVector(10,10));
  
  alien = new Alien(new PVector(0,30), new PVector(3,0)); // Cambiar la velocidad para moverse horizontalmente
  alien2= new Alien(new PVector(0,100), new PVector(4,0));
  alien3= new Alien(new PVector(0,310), new PVector(1,0));
  alien4= new Alien(new PVector(0,460), new PVector(6,0));
  alien5= new Alien(new PVector(0,500), new PVector(11,0));
}

public void draw(){
  background(0);
  imageMode(CORNER);
  image(fondo, 0, 0, width, height); // Dibuja el fondo
  personaje.dibujar();
  actualizarVelocidadNave();
  
  alien.dibujar();
  moverYRebotar(alien);
  
  alien2.dibujar();
  moverYRebotar(alien2);
  
  alien3.dibujar();
  moverYRebotar(alien3);
  
  alien4.dibujar();
  moverYRebotar(alien4);
  
  alien5.dibujar();
  moverYRebotar(alien5);
}

public void keyPressed(){
  switch(key){
    case 'd':
      personaje.mover(1);
      break;
    case 'a':
      personaje.mover(0);
      break;
    case 'w':
      personaje.mover(2);
      break;
    case 's':
      personaje.mover(3);
      break;
    default:
      break;
  }
}

public void actualizarVelocidadNave(){
  if(personaje.getPosicion().x > (width/2)){
    personaje.getVelocidad().x = 50;
  } else {
    personaje.getVelocidad().x = 30;
  }
}

public void moverYRebotar(Alien alien){
  alien.mover(); // Mover el Alien
  
  // Revisar si el Alien ha alcanzado los bordes del lienzo
  if (alien.getPosicion().x < 0 || alien.getPosicion().x > width - alien.getAncho()) {
    alien.invertirVelocidadX(); // Invertir la dirección horizontal
  }
}// fin clase
