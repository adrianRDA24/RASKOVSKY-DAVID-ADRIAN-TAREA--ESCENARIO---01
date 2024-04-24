int numFilas = 3; // Número de filas
int numRectangulos = 45; // Número de rectángulos por fila
int ancho = 25; // Ancho de cada rectángulo
int alto = 15; // Alto de cada rectángulo
int separacion = 1; // Separación entre rectángulos
int inicioX = 0; // Posición inicial en X del primer ladrillo
int inicioY = 554; // Posición inicial en Y del primer ladrillo

// A----------PRESENTAR ----------  //////////////
//***** POSICION DE LA IMAGEN FONDO
//int x = 0; //Posición inicial en X 
//int y = 100; // Posición inicial en Y 
//int velocidad = 5; // Velocidad de movimiento
//PImage pezpayaso1;
PImage fondo1;
color tinte;
  // Variable para almacenar la imagen que se moverá
void setup() {
  size(800, 600);
  fondo1 = loadImage("Fondo.png");//,"sirena");
 // tinte = color(100,250,200); // Tinte #64FAC8
 // pezpayaso1= loadImage("pezpayaso.png"); // Carga la imagen de fondo
}

void draw() {
paredLadrillos();
  tint(#ECF2C6);
  image(fondo1, 0, 0, width, height-46);
//background(fondo1);
//paredLadrillos();
}

public void paredLadrillos(){
  background(255);
  fill(#D14C0F);
  stroke(0);//#F5DACD);
  for (int i = 0; i < numFilas; i++) {
    for (int j = 0; j < numRectangulos; j++) {
      float x = inicioX + (ancho + separacion) * j;
      float y = inicioY + (alto + separacion) * i;
      rect(x, y, ancho, alto);
    }
  }
//}

};
