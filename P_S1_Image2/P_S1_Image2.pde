//Tomas de Camino Beck
PImage img;  // Declare a variable of type PImage
int s = 5;
void setup() {
  size(480, 480);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("tomas.jpg");
  smooth();
}

void draw() {
  background(0);
  for (int x=0; x<width; x+=s) {
    for (int y=0; y<width; y+=s) {
      color c =img.get(x, y) ;
      stroke(c, 200);
      strokeWeight(1);
      float ang= map(brightness(c),0,1,0,PI);
      arrow(x,y,20,ang);
    }
  }
}

void arrow(int x, int y, int l, float ang){
  //para determinar el largo de la punta en 45 grados
  int arrowLength = 2;
  pushMatrix();
  //cambia el eje del dibujo y lo rota
  translate(x, y);
  rotate(radians(ang));
  //dibuja una linea y flecha en el eje X
  line(0,0,l, 0);
  line(l, 0, l - arrowLength, -arrowLength);
  line(l, 0, l - arrowLength, arrowLength);
  popMatrix();
}