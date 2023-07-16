// Clar Agustina legajo 93551/8 link del video: https://youtu.be/8IFLxZGAUMM
PImage [] fotos;
String [] textos;
int estado;
int imagenes = 13;

void setup (){
  size (600, 600);
  fotos = new PImage [20];
  
   fotos[0]= loadImage ("1.PNG");
   fotos[1]= loadImage ("2.PNG");
   fotos[2]= loadImage ("3.PNG");
   fotos[3]= loadImage ("4.PNG");
   fotos[4]= loadImage ("5.PNG");
   fotos[5]= loadImage ("6.PNG");
   fotos[6]= loadImage ("7a.PNG");
   fotos[7]= loadImage ("7b.PNG");
   fotos[8]= loadImage ("8a.PNG");
   fotos[9]= loadImage ("8.PNG");
   fotos[10]= loadImage ("8b.PNG");
   fotos[11]= loadImage ("10.PNG");
   fotos[12]= loadImage ("creditos11.PNG");
   fotos [13]= loadImage ("6.PNG");
   
    
  textos = new String[20];
  textos[0] = "Bienvenido a las aventuras de Tom Sawyer";
  textos[1] = "La única certeza que hay en la tierra es el olvido, ¿desean abrir el portal?";
  textos[2] = "-oh ¿quién eres? -un angel -¿y cómo te llamas? - Satán";
  
  textos[3] = "-acompáñenme les mostraré mi mundo -vamos chicos?";
  textos[4] = "¿desean algo material?";
  textos[5]= "¿desean fruta?";
  textos[6]= "-gracias delicioso! - ¿Quieren más?";
  textos[7]= "criaturas horribles se quedarán por siempre en este vacío eterno";
  textos[8]= "les informo que se quedarán conmigo en este vacío eterno, ¿qué les parece?";
  textos[9]= "Que terrible! no hay escapatoria";
  textos[10]= "La vida en sí es solo una visión, un sueño. Nada existe salvo el espacio vacío y ustedes...";
  textos[11]= "y ustedes no son más que un sueño.";
  textos[12]=  "Writer: Susan Shadburne, based on the works of Mark Twain. Artista y programadora: Clar, Agustina";
  textos[13] = "Les contaré su futuro";
  
  }
  
  void draw() {
  if ( estado == 0 ) {
    dibujaPantalla ( fotos[0], textos[0] );
     dibujaBotonRectangular( 300,500 , 120, 80, "Continuar");
     
  } else  if ( estado == 1 ) {
    dibujaPantalla( fotos[1], textos[1] );
    dibujaBotonRectangular( 200, 500, 120, 80, "abrámoslo!");
    
    
  } else  if ( estado == 2 ) {
    dibujaPantalla( fotos[2], textos[2] );
    dibujaBotonRectangular( 400, 500, 120, 80, "y dónde estas?");
  }
    else if (estado==3){
      dibujaPantalla (fotos[3], textos[3]);
      dibujaBotonRectangular( 200, 500, 120, 80, "mmm vamos...");
      
    }
    else if (estado==4){
      dibujaPantalla (fotos[4], textos[4]);
      dibujaBotonRectangular(100, 500, 120, 80, "no");
      dibujaBotonRectangular(500, 500, 120, 80, "sí");
      
    }
    else if (estado==5){
      dibujaPantalla (fotos[5], textos[5]);
      dibujaBotonRectangular(100, 500, 120, 80, "sí");
      dibujaBotonRectangular( 500, 500, 120, 80, "no");
    }
    else if (estado==6){
      dibujaPantalla (fotos[6], textos[6]);
      dibujaBotonRectangular( 300, 500, 120, 80, "si!!!");
      
    }
    else if (estado==7){
      dibujaPantalla (fotos[7], textos[7]);
      dibujaBotonRectangular(100, 500, 120, 80, "noooo!");
      
    }
    else if (estado==8){
      dibujaPantalla (fotos[8], textos[8]);
      dibujaBotonRectangular( 100, 500, 120, 80, "demonio!");
      dibujaBotonRectangular( 500, 500, 120, 80, "dejanos ir!");
    }
    else if (estado==9){
      dibujaPantalla (fotos[9], textos[9]);
      dibujaBotonRectangular( 500, 500, 120, 80, "adios amigos :(");
      
    }
    else if (estado==10){
      dibujaPantalla (fotos[10], textos[10]);
      dibujaBotonRectangular( 100, 500, 120, 80, "¿y nosotros?...");
      
    }
    else if (estado==11){
      dibujaPantalla (fotos[11], textos[11]);
      dibujaBotonRectangular( 500, 500, 120, 80, "...");
      
    }
    else if (estado==12){
      dibujaPantalla (fotos[12], textos[12]);
      fill (110, 0, 116);
      ellipse (300, 500, 100, 100);
      fill (0);
      text ("VOLVER", 300, 480);
      text ("AL", 300, 500);
      text ("INICIO", 300, 520);
      
      
    }
    
    else if (estado==13){
      dibujaPantalla (fotos[13], textos[13]);
      dibujaBotonRectangular( 100, 500, 120, 80, "ok, cuentanos");
     
    }
   
  }
