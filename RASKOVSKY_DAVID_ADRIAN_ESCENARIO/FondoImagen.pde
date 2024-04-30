class FondoImagen{
//**** ATRIBUTOS (variables de uso - caracteristicas del objeto)
PImage img;  //background

//fondo1 = loadImage("Fondo.png");//no uso asi
//*************************************
//*****CONSTRUCTOR *****
public FondoImagen(PImage img){ // el construtor lleva public o no??
  this.img = img;  // atributo del constructor
}
void dibujarFondo(){  // metodo para dibujar del constructor??
image(img,0,0,width,height);
}
};
