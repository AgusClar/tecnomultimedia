
PImage miImagen1, miImagen2, miImagen3;
int cuentaFotogramasInicio = 0;
int cuentaFotogramasPantalla1 = 0;
int cuentaFotogramasPantalla2 = 0;
String estado = "inicio";
int tiempoDeEspera = 10000; // Cambiar de imagen después de segundos
int tiempoUltimoCambio = 0;

void setup() {
  size(640, 480);
  frameRate(30);
  miImagen1 = loadImage("images/imagen1.jpg");
  miImagen2 = loadImage("images/imagen2.jpg");
  miImagen3 = loadImage("images/imagen3.jpg");
}

void draw() {
  // Verificar si ha pasado suficiente tiempo para cambiar la imagen
  if (millis() - tiempoUltimoCambio > tiempoDeEspera) {
    // Actualizar el tiempo del último cambio de imagen
    tiempoUltimoCambio = millis();
    // Cambiar la imagen
    if (estado.equals("inicio")) {
      estado = "pantalla 1";
    } else if (estado.equals("pantalla 1")) {
      estado = "pantalla 2";
    } else if (estado.equals("pantalla 2")) {
      estado = "inicio";
    }
  }

  background(255);
  fill(0);  
  PFont mi_fuente;
  mi_fuente = loadFont("BodoniMT-BoldItalic-18.vlw");

  textFont(mi_fuente, 18);
  textAlign(CENTER);
  textSize(18);
  
  if (estado.equals("inicio")) {
    // Pantalla de inicio con imagen de fondo
    image(miImagen1, 0, 0, width, height);
    // texto con movimiento de izquierda a derecha
    float x = map(sin(frameCount * 0.018), -1, 1, 0, width);
  
    text("¿Estás listo para una nueva aventura por el espacio?", x, height/2);
    // escalado animado
    float scaleAmount = 1.0;
    float scaleDir = 0.01;
    scale(scaleAmount);
    scale(1/scaleAmount);
    // actualizar el factor de escala
    scaleAmount += scaleDir;
    if (scaleAmount > 1.5 || scaleAmount < 1.0) {
      scaleDir *= -1;
    }
  } else if (estado.equals("pantalla 1")) { 
    // Pantalla 1 con imagen de fondo y animación Fade
    image(miImagen2, 0, 0, width, height);
  
    
    fill(255, map(cuentaFotogramasPantalla1, 0, 140, 0, 255));
if (cuentaFotogramasPantalla1 >= 140) {
  estado = "pantalla 2";
  cuentaFotogramasPantalla1 = 0;
}
    
    
    
    textAlign(CENTER);
    textSize(20);
    text("Enciende la radio y te acompañará una buena transmisión espacial!", width/2, height/2 + 20);
    // Contar los fotogramas
    cuentaFotogramasPantalla1++;
if (cuentaFotogramasPantalla1 >= 7500) {
    estado = "inicio";
    cuentaFotogramasPantalla1 = 0;
}

  } else if (estado.equals("pantalla 2")) {
    // Pantalla 2 con imagen de fondo
    image(miImagen3, 0, 0, width, height);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    float x = map(sin(frameCount * 0.01), -1, 1, 0, width);
    float y = map(sin(frameCount * 0.01), -1, 1, 0, height);
    pushMatrix(); // Guardar
    scale(map(sin(frameCount * 0.06), -1, 1, 1, 1.5)); // Escalar el texto
    text("Buen viaje!", x, y, width, height);
    popMatrix(); // Restaurar la matriz de transformación anterior
    // Dibujar el botón triangular
    fill(200);
    stroke(255);
    triangle(30, height - 30, 50, height - 50, 50, height - 20);
    // Contar los fotogramas
    cuentaFotogramasPantalla2++;
    if (cuentaFotogramasPantalla2 >= 15000) {
    estado = "inicio";
    cuentaFotogramasPantalla2 = 0;
}

}
}

void mouseClicked () {
  if (estado.equals("pantalla 2")) {
    estado = "inicio";
  } else if (estado.equals("inicio")) {
    cuentaFotogramasInicio = 0;
  } else if (estado.equals("pantalla 1")) {
    cuentaFotogramasPantalla1 = 0;
  } else if (estado.equals("pantalla 2")) {
    cuentaFotogramasPantalla2 = 0;
  }
}
