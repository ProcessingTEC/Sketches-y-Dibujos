//Tomas de Camino Beck
void setup(){
  size(600,600);
}

void draw(){
  fill(255,5);
  int npoints = (int)map(mouseX,0,width, 3,7);
  polygon(width/2,height/2,mouseY,npoints);
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}