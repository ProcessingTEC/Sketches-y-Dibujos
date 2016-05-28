ArrayList<PVector> pincel = new ArrayList<PVector>();

void setup() {
  size(600, 600);
  mouseX=width/2;
  mouseY=height/2;
  for (int i=0;i<7;i++) {
    pincel.add(new PVector(mouseX, mouseY, 0));
  }
  background(255);
}

void draw() {
  frameRate(12);
  fill(random(255), random(255), random(255), 100);
  strokeWeight(1);
 //Usage of Shape
  beginShape();
  vertex(pincel.get(0).x, pincel.get(0).y);
  bezierVertex(pincel.get(1).x, pincel.get(1).y, 
  pincel.get(2).x, pincel.get(2).y, 
  pincel.get(3).x, pincel.get(3).y);
  bezierVertex(pincel.get(4).x, pincel.get(4).y, 
  pincel.get(5).x, pincel.get(5).y, 
  pincel.get(6).x, pincel.get(6).y);
  endShape();
  
  pincel.remove(0);
  pincel.add(new PVector(mouseX, mouseY, 0));
}