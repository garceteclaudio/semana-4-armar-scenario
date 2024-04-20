class Alien{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private int ancho; // Nuevo atributo para el ancho de la imagen
  
  public Alien(){
    imagen = loadImage("alien.png");
    ancho = 70; // Asignar el ancho predeterminado
  }
  
  public Alien(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("alien.png");
    ancho = 70; // Asignar el ancho predeterminado
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, ancho, ancho); // Usar el ancho como parámetro de la imagen
  }
  
  public void mover(){
    // Mover el Alien horizontalmente
    this.posicion.x += this.velocidad.x;
  }
  
  public void invertirVelocidadX(){
    // Invertir la dirección horizontal del Alien
    this.velocidad.x *= -1;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad = velocidad;
  }
  
  public int getAncho(){
    return this.ancho;
  }
}
