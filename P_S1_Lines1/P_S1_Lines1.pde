//Tomas de Camino Beck

void setup() {
  size(600, 600);
  smooth(8);
}


void draw() {
  //define background color
  background(255);
  stroke(0, 100);

  //line weight and color
  strokeWeight(10);

  //Input from the mouse
  //map to real values
  float l=map(mouseX, 0, width, 1, 200); //numre of lines
  float s =map(mouseY, 0, height, 10, 300);//length of lines

  float a=0; //angle between lines
  translate(width/2, height/2);//move coordinate system
  for (int i=0; i<l; i++) {
    pushMatrix();
    rotate(a); //rotate line by a degress
    line(0, 0, s, 0);
    popMatrix();
    a+=TWO_PI/l;//caculate angle for new line
  }
}