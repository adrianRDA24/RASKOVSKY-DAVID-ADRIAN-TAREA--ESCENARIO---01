class NavePez{
//****ATRIBUTOS *********//
public PVector Posicion;
public PImage imagen;
//*** constructor *****//
public NavePez(){
  loadImage("navepez.png");


};

public void dibujarNavePez(){
image(imagen,Posicion.x,Posicion.y);

};



};
