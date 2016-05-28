void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  //noFill();
  fill(255, 200);
  strokeWeight(5);
  stroke(0, 150);
  drawCircles(random(width), random(height), 5,(int)random(15,45));
}

void drawCircles(float x, float y, int n,int b) {
  for (int i=n;i>0;i--) {
    ellipse(x, y-(i%2*n/2), b*i, b*i);
  }
}