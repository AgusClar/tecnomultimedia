PImage miImagen;

void setup() {
  size(800, 400);

  miImagen = loadImage("Pea-Car-05-1140x760.jpg");
}

void draw() {
  image(miImagen, 0, 0, 400, 400);
       noStroke();
  fill(#23CE41);   
  stroke(0);
  ellipse (600, 200, 240, 269);

  ellipse (510, 300, 60, 70);
    ellipse (600, 340, 70, 80);
        ellipse (700, 310, 66, 80);
         stroke(#FFFFFF);
          fill(#C4C4C4);
ellipse (614, 255, 40, 46);
ellipse (695, 250, 35, 40);
                   
                    stroke(#FFFFFF);
                   
                  ellipse (510, 300, 30, 35);
    ellipse (600, 340, 35, 40);
        ellipse (700, 310, 34, 40);
       rect(590, 120, 109, 90);
      rect(502, 120, 80, 90);
       stroke(#FFFFFF);
        fill(0);
            rect(632, 310, 36, 20);
       fill(#FFFFFF);
       text("PEA", 632, 328);
       textSize(22); 
 }
