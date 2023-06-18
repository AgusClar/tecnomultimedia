float circleSize;
int circleColor;
PImage imagen1;
float originalCircleSize;
int originalCircleColor; 
void setup() {
  size(800, 400);
   imagen1 = loadImage("e376c8adc7aaf4ff4cc968561d592103.jpg");
    originalCircleSize =90;
  circleSize = originalCircleSize;
  originalCircleColor = color(255, 255,255);  //es blanco para que cuando quiera pase con el mouse por arriba el color sea más tirando a blanco
  circleColor = originalCircleColor;
}

void draw() {
    background(0);
   image(imagen1, 0, 0, width/2, height);
   //arriba
   // Ciclos for anidados para dibujar los círculos
  for (int i = 0; i < 2; i++) { // i aumenta hasta llegar a 2 y vuelve a 0 cuando lo supera
    for (int j = 0; j < 8; j++) {
      float x = map(i, 0, 7, width/2+200, 10);
      float y = map(j, 0, 18, 50, height - 100); // que tan juntos o separados van a estar y la ubicacion
       
            // Calcular tamaño y color de los círculos según la posición del mouse
       float d = dist(mouseX+100, mouseY+100, x, y);
      circleSize = map(d, 0, width/2, 80, originalCircleSize);
      circleColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, width/2, 0, 1));
      // Dibujar círculo
      fill(circleColor);
      ellipse(x, y, circleSize, circleSize);
}
  }
 //derecha
  for (int h = 0; h < 8; h++) {
    for (int g = 0; g < 2; g++) {
      float x = map(h, 0, 6, 600, 700);
      float y = map(g, 0, 6, 150, 670);
       
            // Calcular tamaño y color de los círculos según la posición del mouse (d)
       float d = dist(mouseX+100, mouseY+100, x, y);
      circleSize = map(d, 0, width/2, 80, originalCircleSize);
      circleColor = lerpColor(color(0, 200, 0), color(200, 0, 0), map(d, 0, width/2, 0, 1));
      // Dibujar círculo
      fill(circleColor);
      ellipse(x, y, circleSize, circleSize);
}
  }
   //izquierda
for (int h = 0; h < 8; h++) {
    for (int g = 0; g < 2; g++) {
      float x = map(h, 0, 6, 400, 500);
      float y = map(g, 0, 6, 150, 670);
       
            // Calcular tamaño y color de los círculos según la posición del mouse
       float d = dist(mouseX+100, mouseY+100, x, y);
      circleSize = map(d, 0, width/2, 80, originalCircleSize);
      circleColor = lerpColor(color(200, 10, 0), color(10, 200, 0), map(d, 0,400, 0, 1));
      // Dibujar círculo
      fill(circleColor);
      ellipse(x, y, circleSize, circleSize);
      //x e y vienen con los valores de i y j, y circlesize con los de map
}
  }
  //abajo
   for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 8; j++) {
      float x = map(i, 0, 7, width/2 + 200, 10);
      float y = map(j, 0, 19, 375, -2);
       
            // Calcular tamaño y color de los círculos según la posición del mouse
       float d = dist(mouseX, mouseY, x, y);
      circleSize = map(d, 0, width/2, 80, originalCircleSize);
      circleColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, 400, 0, 1));
      // Dibujar círculo
      fill(circleColor);
      ellipse(x, y, circleSize, circleSize);
}
  }
  
}
