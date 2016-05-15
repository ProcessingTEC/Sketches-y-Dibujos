//Tomas de Camino Beck
void setup(){
  size(600,600);
  smooth(8);
  background(0);
}

void draw(){
  int s = frameCount % 200;
  strokeWeight(s);
  stroke(random(255),random(255),random(255),10);
  point(mouseX,mouseY);
}
