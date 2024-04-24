int numFilas = 3; // Número de filas
int numRectangulos = 45; // Número de rectángulos por fila
int ancho = 50; // Ancho de cada rectángulo
int alto = 30; // Alto de cada rectángulo
int separacion = 1; // Separación entre rectángulos
int inicioX = 0; // Posición inicial en X
int inicioY = 506; // Posición inicial en Y
PImage fondo1;
color tinte;

void setup() {
  size(800, 600);
  fondo1 = loadImage("Fondo.png");
 // tinte = color(100,250,200); // Tinte #64FAC8
  //paredLadrillos();
}

void draw() {
 // paredLadrillos();
   paredLadrillos();
  //tint(tinte);
  image(fondo1, 0, 0); //, width, height);
 //background(fondo);

}

public void paredLadrillos(){

//int numFilas = 3; // Número de filas
//int numRectangulos = 45; // Número de rectángulos por fila
//int ancho = 50; // Ancho de cada rectángulo
//int alto = 30; // Alto de cada rectángulo
//int separacion = 1; // Separación entre rectángulos
//int inicioX = 0; // Posición inicial en X
//int inicioY = 506; // Posición inicial en Y

//void setup() {
//  size(800, 600);
  background(255);
  fill(#D14C0F);
  stroke(#F5DACD);
  for (int i = 0; i < numFilas; i++) {
    for (int j = 0; j < numRectangulos; j++) {
      float x = inicioX + (ancho + separacion) * j;
      float y = inicioY + (alto + separacion) * i;
      rect(x, y, ancho, alto);
    }
  }
//}

};
