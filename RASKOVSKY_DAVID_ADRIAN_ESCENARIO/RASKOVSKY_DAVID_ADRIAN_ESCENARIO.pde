int numFilas = 3; // Número de filas
int numRectangulos = 45; // Número de rectángulos por fila
int ancho = 25; // Ancho de cada rectángulo
int alto = 15; // Alto de cada rectángulo
int separacion = 1; // Separación entre rectángulos
int inicioX = 0; // Posición inicial en X del primer ladrillo
int inicioY = 554; // Posición inicial en Y del primer ladrillo

// A----------PRESENTAR ----------  //////////////
//***** posicion del pezpayaso
int x = 0; //Posición inicial en X 
int y = 100; // Posición inicial en Y 
int velocidad = 5; // Velocidad de movimiento
PImage pezpayaso1;   // Variable para almacenar el pezpayaso
PImage fondo1;
//color tinte;

void setup() {
  size(800, 600);
  fondo1 = loadImage("Fondo.png");//,"sirena");
 // tinte = color(100,250,200); // Tinte #64FAC8
pezpayaso1= loadImage("pezpayaso.png"); // Carga el pezpayaso
}

void draw() {
  
  
paredLadrillos(); //llama a paredLadrillos
  tint(#ECF2C6); // aplicar tinte driectamente
  image(fondo1, 0, 0, width, height-46);//coloca el fondo
//background(fondo1);
//paredLadrillos();
//image(pezpayaso1, x, y); // carga el pezpayaso
movePezPayaso();
}
public void movePezPayaso(){ // mueve con las teclas
image(pezpayaso1, x, y); // carga el pezpayaso
//if  (keyPressed) {


if (keyPressed) {

    if (keyCode == UP) {
      y -= velocidad;
        println("tecla= "+(int) key+ " ancho " + width);
    } else if (keyCode == DOWN) {
      y += velocidad;
    } else if (keyCode == LEFT) {
      x -= velocidad;
    } else if (keyCode == RIGHT) {
      x += velocidad;
    }
  }
};
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
