// @author: Tomas de Camino Beck
// Dinamic array use

ArrayList<PVector> balls = new ArrayList<PVector>();

void setup() {
  size(600, 600);
  stroke(0, 100);
  noFill();
  background(#C9C7B5);
}

void draw() {
  frameRate(12);
  noStroke();
  fill(#91AD9B,100);
  quad(0,0,width,height-100,width,height,0,10);
  fill(#D6B65F,50);
  quad(-10,height+10,width,-100,width,0,0,height);  
  if (mousePressed) {
    float r = random(10, 300);
    noStroke();
    fill(random(255), random(255), 100, 100);
    ellipse(mouseX, mouseY, r+10, r+10);
    fill(random(255), random(255), 100, 100);
    ellipse(mouseX, mouseY, r, r);
    stroke(0);
    line(mouseX+random(-50,50),mouseY+random(-50,50),mouseX+random(-1000,1000),mouseY+random(-1000,1000));
  }

}