void setup(){
  size(600,600);
  smooth(8);
  background(0);
}

void draw(){
  int s = frameCount % 200;
  strokeWeight(s);
  stroke(255,10);
  point(mouseX,mouseY);
}