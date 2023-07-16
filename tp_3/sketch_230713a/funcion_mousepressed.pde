void mousePressed() {
  if ( estado == 0 ) {
    if ( colisionConBotonRectangular(300, 500, 120, 80) ) {
      println("flujo de estado 0 -> 1");
      estado = 1;
    }
    
    //1
  } else if ( estado == 1 ) {
    if ( colisionConBotonRectangular(200, 500, 120, 80) ) {
      println("flujo de estado 1 -> 2"); 
      estado = 2;
    }
    //if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
    //  println("CLICK en boton de la izquierda (flujo de 1 -> 2"); //boton izquierdo
    //  estado = 2;
    //}
   
  } else if ( estado==2) {
     if (colisionConBotonRectangular(400, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 2 a 3");
      estado = 3;
    }
    
  } else if ( estado == 3){
    if ( colisionConBotonRectangular(200, 500, 120, 80) ) {
      println("flujo de estado 3 -> 4");
      estado = 4;
    }
    //if ( colisionConBotonRectangular(width/4, height/3, 120, 80) ) {
    //  println("CLICK en boton de la izquierda (flujo de 3 -> 4");
    //  estado = 4;
    //}
    
    
  } else if (estado == 4) {
    if (colisionConBotonRectangular(100, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 4 a 13");
      estado = 13;
    }
      if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de 4 -> 6");
      estado = 6;
    }
    
    
  } else if ( estado == 5){
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de estado 5 -> 7");
      estado = 7;
    }
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println ("flujo de 5 -> 6");
      estado = 6;
    }
    
  } else if (estado == 6) {
    if (colisionConBotonRectangular(300, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 6 a 7");
      estado = 7;
      
    }
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de 6 -> 12");
      estado = 12; 
   
    }
    
  } else if (estado == 7) {
    if (colisionConBotonRectangular(100, 500, 120, 80)) {
      println("flujo de 7 a 12");
      estado = 12;
    }
    
  
  } else if ( estado == 8){
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de estado 8 -> 10");
      estado = 10;
     }
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de 8 -> 9");
      estado = 9; 
   
    }
    
    
  } else if (estado == 9) {
    if (colisionConBotonRectangular(500, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 9 a 7");
      estado = 7;
    }
    
   
  } else if (estado == 10) {
    if (colisionConBotonRectangular(100, 500, 120, 80)) {
      //boton de la derecha
      println("flujo de 10 a 11");
      estado = 11;
    }
    
    
  } else if ( estado == 11){
    if ( colisionConBotonRectangular(500, 500, 120, 80) ) {
      println("flujo de estado 11 -> 12");
      estado = 12;
    
    }
    
  } else if ( estado == 12){
    
      if (dist (mouseX, mouseY, 300, 500) < 50){ // dist para saber la distancia del centro hasta donde tengo el mouse - click en el circulo
      estado = 0;
      
    }
   
  } else if ( estado == 13){
    if ( colisionConBotonRectangular(100, 500, 120, 80) ) {
      println("flujo de estado 13 -> 8");
      estado = 8;
    
    }
    
   
  
  
  
  } 
  
}
