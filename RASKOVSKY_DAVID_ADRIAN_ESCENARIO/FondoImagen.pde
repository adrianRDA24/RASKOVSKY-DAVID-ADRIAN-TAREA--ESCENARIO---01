class FondoImagen{
PImage img;  //background
//fondo1 = loadImage("Fondo.png");
//*****CONSTRUCTOR *****

FondoImagen(PImage img){
  this.img = img;  // atributo del constructor
}
void dibujarFondo(){  // metodo para dibujar del constructor
image(img,0,0,width,height);
}
};
