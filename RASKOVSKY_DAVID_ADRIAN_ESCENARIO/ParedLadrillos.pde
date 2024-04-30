class ParedLadrillos{
   int numFilas;
  int numLadrillosPorFila;
  int anchoLadrillo;
  int altoLadrillo;
  
  ParedLadrillos(int numFilas, int numLadrillosPorFila, int anchoLadrillo, int altoLadrillo)
  {
    this.numFilas = numFilas;
    this.numLadrillosPorFila = numLadrillosPorFila;
    this.anchoLadrillo = anchoLadrillo;
    this.altoLadrillo = altoLadrillo;
  }
  void construirPared() {
    int ia=0;
    int ja=0;
    fill(255, 0, 0); // Color de los ladrillos (rojo)
     for (int i = 0; i < numFilas; i++) {
      for (int j = 0; j < numLadrillosPorFila; j++) {
        rect(j * anchoLadrillo, height - (i + 1) * altoLadrillo, anchoLadrillo, altoLadrillo);
        
      //if(j== width){
      //rect(j * anchoLadrillo+100, height - (i + 1) * altoLadrillo, anchoLadrillo, altoLadrillo);
      ////i=0;
      ////j=0;
      //};
    }
    }
  }
 
}
