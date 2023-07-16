void dibujaPantalla( PImage fot, String texto   ) {
  push();
  imageMode(CORNER);
  image(fot, 0, 0, 600, 600);
  fill(0, 80);
  rectMode(CORNER);
  rect(0, 0, width, 150);
  fill(255);
  textSize(25);
  textLeading(40);
  textAlign(CENTER, CENTER);
  text( texto, 0, 0, width, 150);
  pop();
}
