class Nubes{
 float x, y; // Posición de la elipse
  float ancho, alto; // Ancho y alto de la elipse
  
  Nubes(float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }
  
  void dibujar() {
    noFill(); // Sin color de relleno
    stroke(240,252,255); // Borde negro
    ellipse(x, y, ancho, alto);
    fill(240,253,251); // Color de relleno gris
    ellipse(x, y, ancho - 2, alto + 40); // Elipse interna con relleno gris
  }




};
