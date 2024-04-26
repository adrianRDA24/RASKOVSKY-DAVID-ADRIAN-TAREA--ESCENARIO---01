
//**********VARIABLES DE LA PARED DE LADRILLOS
int numFilas = 3; // Numero de filas
int numRectangulos = 45; // Número de rectángulos por fila
int ancho = 25; // Ancho de cada rectángulo
int alto = 15; // Alto de cada rectangulo
int separacion = 1; // Separacion entre rectángulos
int inicioX = 0; // Posicion inicial en X del primer ladrillo
int inicioY = 554; // Posicipn inicial en Y del primer ladrillo
////
////*******Posicion del pezpayaso mueve sin salirce de la pantalla
int posENx = 200; //Posicion inicial en X 
int posENy = 200; // Posicion inicial en Y 
int velocidad = 5; // Velocidad de movimiento
//////***para cambiar la direccion del pulpo
//int direCCION= 1;
//////
PImage fondo1;
PImage pezpayaso1;   // Variable para almacenar el pezpayaso
PImage pulpo1; 
//color tinte;

void setup() {
  size(800, 600);
  fondo1 = loadImage("Fondo.png");//,"sirena");
 // tinte = color(100,250,200); // Tinte #64FAC8
pezpayaso1= loadImage("pezpayaso.png"); // Carga el pezpayaso
pulpo1= loadImage("pulpo.png");
}

void draw() {
  println("Antes de mover al pez payaso hacer clic en el lienzo");
paredLadrillos(); //llama a paredLadrillos
cargaFondo();
image(fondo1, 0, 0, width, height-46);//coloca el fondo
//paredLadrillos(); //llama a paredLadrillos
//  tint(#ECF2C6); // aplicar tinte driectamente
//**************image(fondo1, 0, 0, width, height-46);//coloca el fondo
//background(fondo1);
//paredLadrillos();
//image(pezpayaso1,50,100,posENx,posENy);  //x, y); // carga el pezpayaso
image(pulpo1,10,200,100,100);
movePezPayaso();
//mueveYrebota(); // procedimiento mueve y revota el pulpo

};
////////////mueve el pulpo
//public void mueveYrebota(){
//// image(pulpo1, posENx, posENy);
  
//  // Mover la imagen en la dirección establecida
// // posENx += velocidad * direCCION;
  
//  // Rebotar contra los bordes del lienzo
//  if (posENx <= 0 || posENx >= width - pulpo1.width) {
//    direCCION *= -1; // Cambiar la dirección de movimiento
//  }
//};

public void movePezPayaso(){ // mueve con las teclas
     image(pezpayaso1, posENx, posENy); // carga el pezpayaso
    if (keyPressed) {
   // println("tecla pres= "+ posENy+" ancho "+width+" alto "+height);
      if (keyCode == UP) {
          posENy -= velocidad;
        } else if (keyCode == DOWN) {
          posENy += velocidad;
        } else if (keyCode == LEFT) {
          posENx -= velocidad;
        } else if (keyCode == RIGHT) {
          posENx += velocidad;
        }
    //-**** Controla que la imagen no se salga de la pantalla
    if (posENx < 0) {
        posENx = 0;
      }
      if (posENx > width - pezpayaso1.width) {
        posENx = width - pezpayaso1.width;
      }
      if (posENy < 0) {
        posENy = 0;
      }
      if (posENy > height - pezpayaso1.height) {
        posENy = height - pezpayaso1.height;
      }
}
}
//***** Proceso que dibuja la pared de ladrillos
public void cargaFondo(){
image(fondo1, 0, 0, width, height-46);//coloca el fond/o
////image(fondo1, 0, 0);//coloca el fondo
}
public void paredLadrillos(){
  //background(255);
  fill(#D14C0F);
  stroke(0);//#F5DACD);
  for (int i = 0; i < numFilas; i++) {
    for (int j = 0; j < numRectangulos; j++) {
      float x = inicioX + (ancho + separacion) * j;
      float y = inicioY + (alto + separacion) * i;
      rect(x, y, ancho, alto);
    }
  }
};
