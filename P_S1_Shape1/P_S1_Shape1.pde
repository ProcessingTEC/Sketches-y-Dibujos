//Tomas de Camino Beck

void setup() {
  size(600, 600);
  smooth();
  background(0);
}

void draw() {
  stroke(0, 100);
  fill(255, 50);
  translate(mouseX, mouseY);
  beginShape(TRIANGLE_STRIP);
  vertex(0, 0);
  vertex(10, 40);
  vertex(20, 0);
  vertex(30, 40);
  vertex(40, 0);
  vertex(50, 40);
  vertex(60, 0);
  vertex(70, 40);
  vertex(80, 0);
  vertex(90, 40);
  endShape();
}