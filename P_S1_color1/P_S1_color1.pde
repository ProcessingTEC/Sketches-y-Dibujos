//Tomas de Camino Beck
//Change HSB colors

void setup() {
  size(600, 600);
  colorMode(HSB, 600, 100, 100);
  rectMode(CENTER);
}

void draw() {
  noStroke();
  background(mouseY/2, 100, 100);
  fill(height/2-mouseY, 100, 100);
  rect(width/2, height/2, mouseX, mouseX);
}