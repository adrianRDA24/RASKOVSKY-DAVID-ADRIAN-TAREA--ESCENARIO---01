class Estrella {
  float x, y, tamaño;
  boolean brillante;

  Estrella(float x, float y, float tamaño, boolean brillante) {
    this.x = x;
    this.y = y;
    this.tamaño = tamaño;
    this.brillante = brillante;
  }

  void dibujar() {
    if (brillante) {
      fill(255, 251, 0); // Estrella brillante en color amarillo
    } else {
      fill(255.252,0); // Estrella no brillante en color blanco
    }
    ellipse(x, y, tamaño, tamaño);
  }

  boolean esBrillante() {
    return brillante;
  }
}
