class Pulpo{
  private PVector posicion;
  private PImage pulpo;
  private PVector velocidad;
// private PVector direccionPP;
// constructor
//public Pulpo(){
//Pulpo = loadImage("pulpo.png");
//}; 
//constructor
public Pulpo(PImage pulpo,PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.pulpo = pulpo;
    //this.direccionPP=direccionPP;
   // this.imagePulpo = loadImage("pulpo.png");
 }
 public void dibujar(){  //display
    //imageMode(CENTER);
    image(pulpo,this.posicion.x,this.posicion.y); //,150,150);
  } 
 public void mover(){
     //posicion.add(velocidad);
     this.posicion.x = this.posicion.x + this.velocidad.x;
    // this.posicion.y = this.posicion.y + this.velocidad.y;
     //this.posicion.x += velocidad * direccion;
    if (posicion.x < 0 || posicion.x > width - pulpo.width) {
      velocidad.x *= -1;
    }
    //else{if (posicion.x < 0 || posicion.x <= width - pulpo.width) //width - pulpo.width);// || posicion.x >= width - pulpo.width) {
    // posicion.x *= -1;
    //}
     println("pos x= "+posicion.x);
    };
//}
    
    //if(this.posicion.y<=height){
    //  this.posicion.y+=this.velocidad.y;
    //}else{
    //  this.posicion.y=0;
    //}
       
};
