//Tomas de Camino Beck
import processing.video.*;

Capture cam;
int psize;

void setup() {
  size(1080, 760);
  cam = new Capture(this);
  cam.start();  
  psize = 20;
}

void draw() {
  background(0);
  if (cam.available() == true) {
    cam.read();
   // filter(BLUR);
  }
  for (int i=0; i<cam.width; i+=psize) {
    for (int j=0; j<cam.height; j+=psize) {
      color c = cam.get(i, j);
      noStroke();
      fill(c);
      ellipse(cam.width-i, j, brightness(c)/psize, brightness(c)/psize);
    }
  }

}