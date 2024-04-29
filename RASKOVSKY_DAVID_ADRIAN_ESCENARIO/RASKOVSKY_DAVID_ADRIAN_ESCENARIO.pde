
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
int velocidadPP = 7; // Velocidad de movimiento
//////***para cambiar la direccion del pulpo
//int direCCION= 1;
//////
 FondoImagen fondo; //***** USO LA CLASE FondoImagen
//PImage fondo1;
PImage pezpayaso1;   // Variable para almacenar el pezpayaso
PImage pulpo; //img
Pulpo pulpo1;  //Myimage myimage
//////////////////////////////////////////////
NavePez pezNave1;  //** variable de la clase
/////////////////////////////////////////////
//color tinte;
void setup() {
size(800, 600);
/////////////////////////////////////
//PImage pezNave=loadImage("navepez.png");
//pezNave1=new NavePez(pezNave);
pezNave1 =new NavePez(); // defino variable para el CONSTRUCTOR
pezNave1.posicion = new PVector(width/2,height/2);
/////////////////////////////////////
//********** SETUP FONDO DEL JUEGO  ///////////***********************  
 PImage fondo1= loadImage("fondo.png");
 fondo= new FondoImagen(fondo1);  // creo nuevo objeto tipo FondoImagen
  //fondo1 = loadImage("Fondo.png");
 // tinte = color(100,250,200); // Tinte #64FAC8
//********** FIN SETUP FONDO DEL JUEGO  ///////////***********************  
pezpayaso1= loadImage("pezpayaso.png"); // Carga el pezpayaso
////////////////////////////////////////
pulpo = loadImage("pulpo.png");
pulpo1 = new Pulpo(pulpo, new PVector(0, 100),new PVector(5, 0));
//////////////////////////////////////////////////////////////////
//pulpo1 = new Pulpo(new PVector(width/2,0),new PVector(0,10));
//pulpo =new Pulpo(pulpo1,40,100,5,1);
//pulpo1.posicion= new PVector(width/2,height/2);
//pulpo1.velocidad= new PVector(10,10);
};

void draw() {
//****************** LLAMA Y DIBUJA EL FONDO ******************
//cargaFondo();
  fondo.dibujarFondo(); // AQUI SI SALE EL FONDO ATRAS DE TODO
//****************** FIN LLAMA Y DIBUJA EL FONDO ******************
println("Antes de mover al pez payaso hacer clic en el lienzo");

pezNave1.dibujarNavePez(); // llamo al metodo de la clase

//fondo.dibujarFondo(); // AQUI NO VA POR QUE TAPA AL PezNave1

paredLadrillos(); //llama a paredLadrillos
pulpo1.dibujar();
pulpo1.mover();
//image(fondo1, 0, 0, width, height-46);//coloca el fondo
//paredLadrillos(); //llama a paredLadrillos
//  tint(#ECF2C6); // aplicar tinte driectamente
//**************image(fondo1, 0, 0, width, height-46);//coloca el fondo
//background(fondo1);
//paredLadrillos();
//image(pezpayaso1,50,100,posENx,posENy);  //x, y); // carga el pezpayaso
//image(pulpo1,10,200,100,100);
movePezPayaso();
//mueveYrebota(); // procedimiento mueve y revota el pulpo

 //fondo.dibujarFondo(); // AQUI NO SALE ENCIMA DE TODO
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
          posENy -= velocidadPP;
        } else if (keyCode == DOWN) {
          posENy += velocidadPP;
        } else if (keyCode == LEFT) {
          posENx -= velocidadPP;
        } else if (keyCode == RIGHT) {
          posENx += velocidadPP;
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
//****** Muestra el fondo  //********************
    //public void cargaFondo(){
    //image(fondo1, 0, 0, width, height-46);//coloca el fond/o
////image(fondo1, 0, 0);//coloca el fondo
//}
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
