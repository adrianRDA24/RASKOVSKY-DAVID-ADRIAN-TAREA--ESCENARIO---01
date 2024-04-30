


ArrayList<Estrella> estrellas = new ArrayList<Estrella>();
int rectanguloAltura = 75;


//**********VARIABLES DE LA PARED DE LADRILLOS
    //int numFilas = 3; // Numero de filas
    //int numRectangulos = 45; // Número de rectángulos por fila
    //int ancho = 25; // Ancho de cada rectángulo
    //int alto = 15; // Alto de cada rectangulo
    //int separacion = 1; // Separacion entre rectángulos
    //int inicioX = 0; // Posicion inicial en X del primer ladrillo
    //int inicioY = 554; // Posicipn inicial en Y del primer ladrillo
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
color tinte;
//*****************NUBES DEL CIELO *********//////////
ArrayList<Nubes> elipses = new ArrayList<Nubes>();
//****************PARED DE LADRILLOS **************///
ParedLadrillos pared ;
//////////////////////////////////////////////////////
void setup() {
size(800, 600);
//******* Crear estrellas dentro del rectangulo ***********//
   for (int i = 0; i < 150; i++) {
    float x = random(width);
    float y = random(rectanguloAltura);
    float tamaño = random(0,4);// tamaño de las estrellas
    boolean brillante = random(1,4) > 0.5; // Establecer aleatoriamente si la estrella es brillante
    Estrella estrella = new Estrella(x, y, tamaño, brillante);
    estrellas.add(estrella);
  }
//******* fin Crear estrellas dentro del rectangulo ***********//
//********* pared de ladrillos******************************
    pared = new ParedLadrillos(2, 50, 17, 10); 
//background(255); // Fondo blanco
  pared.construirPared(); // llamo al Metodo dela clase y dibuja la pared de ladrillos
////*********** Dibujar todas las elipses en el lienzo******
  
//***nuevo objeto = al constructor(le mando parametros);
//********* FIN pared de ladrillos**************************
//*** NUBES  - crea una fila de elipses *****************/////////
  float posY = 1; //100;
  float posX = 0;
    while (posX < width) {
      float anchoElipse = random(0, 90); // ancho 10,100
       float altoElipse = random(10, 45);   // alto  5,10
    //float anchoElipse = random(10, 100);
    //float altoElipse = random(5, 10);
 if(altoElipse < anchoElipse){
   //MANDA AL CONSTRUCTOR
    Nubes elipse = new Nubes(posX + anchoElipse/2, posY, anchoElipse, altoElipse);
    elipses.add(elipse);
    posX += anchoElipse-30; // Avanzar a la siguiente elipse
  }
  }
//************ FIN SET-UP NUBES  **********
/////-----PEZ NAVE SET UP ----------///////////////////////////
//PImage pezNave=loadImage("navepez.png");
//pezNave1=new NavePez(pezNave);
pezNave1 =new NavePez(); // defino variable para el CONSTRUCTOR
pezNave1.posicion = new PVector(width/2-109,height/2-179);
pezNave1.velocidad = new PVector(10,0); // se mueve horizontal
////-------FIN NAVE SET UP ---------------------------////////////////////////
//********** SETUP FONDO DEL JUEGO  ///////////***********************  
 PImage fondo1= loadImage("fondo.png");
 fondo= new FondoImagen(fondo1);  // creo nuevo objeto tipo FondoImagen
  //fondo1 = loadImage("Fondo.png");
//tinte = color(0,0,2); // Tinte #64FAC8  
//********** FIN SETUP FONDO DEL JUEGO  ///////////***********************  
////////******pezpayaso  *********////////
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
//**** Dibujar rectángulo  *********
//fill(2,15,227); //color de cielo;
fill(#0046A0); //color de cielo;
   rect(0, 0, width, rectanguloAltura);
//******** Dibujar estrellas dentro del rectángulo **************//
 for(int i = 0; i < estrellas.size(); i++) {
    Estrella estrella = estrellas.get(i);
    estrella.dibujar();
 }
//*****************fin de estrellas del Draw  **********************  
//*****************  NUBES DEL DRAW  *******************************
ponerLasNubes();
//*****************  FIN NUBES DEL DRAW  ****************************
//***************pared de ladrillos DEL DRAW  *************************
//background(255); // Fondo blanco
  pared.construirPared(); // llamo al Metodo dela clase y dibuja la pared de ladrillos
//*************** FIN PARE LADRILLOS DEL DRAW   *******************

println("Antes de mover al pez payaso hacer clic en el lienzo");
//***************** NAVE PEZ DEL DRAWW ********************//
pezNave1.dibujarNavePez(); // llamo al metodo de la clase
    //pezNave1.posicion.x= mouseX; //si funciona
    //pezNave1.posicion.y= mouseY;   //si funciona
//***************** FIN NAVE PEZ DEL DRAWW ********************//
    //fondo.dibujarFondo(); // AQUI NO VA POR QUE TAPA AL PezNave1
    //paredLadrillos(); //llama a paredLadrillos
pulpo1.dibujar();
pulpo1.mover();
    //image(fondo1, 0, 0, width, height-46);//coloca el fondo
    //paredLadrillos(); //llama a paredLadrillos
      tint(#E8E9F0);//(0); // aplicar tinte driectamente
    //**************image(fondo1, 0, 0, width, height-46);//coloca el fondo
    //background(fondo1);
    //paredLadrillos();
    //image(pezpayaso1,50,100,posENx,posENy);  //x, y); // carga el pezpayaso
    //image(pulpo1,10,200,100,100);
movePezPayaso();
    //mueveYrebota(); // procedimiento mueve y revota el pulpo
   //fondo.dibujarFondo(); // AQUI NO SALE ENCIMA DE TODO
};
//*****************  NUBES  ********************
public void ponerLasNubes(){
for (int i = 0; i < elipses.size(); i++) {
  Nubes elipse = elipses.get(i);
  elipse.dibujar();
}
};
//***************** fin NUBES  ********************
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

public void keyPressed(){
if (key == 'd') {
          //pezNave1.posicion.x += 10;
          pezNave1.posicion.x += pezNave1.velocidad.x; 
        }
if (key == 'a') {
          //pezNave1.posicion.x -= 10;
          pezNave1.posicion.x -= pezNave1.velocidad.x;
        }
//if (key == 'w') {
//          pezNave1.posicion.y -= 10;
//        }
//if (key == 's') {
//          pezNave1.posicion.y += 10;
//        }
};
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
//******************  PARED DE LADRILLOS  ******************
 //public void paredLadrillos(){
    //  //background(255);
    //  fill(#D14C0F);
    //  stroke(0);//#F5DACD);
    //  for (int i = 0; i < numFilas; i++) {
    //    for (int j = 0; j < numRectangulos; j++) {
    //      float x = inicioX + (ancho + separacion) * j;
    //      float y = inicioY + (alto + separacion) * i;
    //      rect(x, y, ancho, alto);
    //    }
    //  }
    //};
