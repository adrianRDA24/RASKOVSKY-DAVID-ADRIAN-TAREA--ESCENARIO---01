class NavePez{
//****ATRIBUTOS *********//
public PVector posicion;
public PImage imagen;
public PVector velocidad;

//*** constructor *****//
public NavePez(){
 imagen= loadImage("navepez.png"); //carga la imagen del disco en lavariable atributo

};

public void dibujarNavePez(){
//En dibujarNavePez le digo que dibuje esta en la psocion que indiquemos
//usando la funcion del Processing image() y le debo pasar parametros
//le paso el PImage que quiero dibujar y la posicion en x e y o sea de los ATRIBUTOS
// imageMode(CENTER); //NO FUNCIONA POR QUE CAMBIA LA POSICION DE TODAS LAS IMAGENES YA UBICADAS
//image(imagen,Posicion.x,Posicion.y); // Uso variable del ATRIBUTO
image(imagen,posicion.x,posicion.y,150,150); // OJO PONER LA POSICION 

};



};
