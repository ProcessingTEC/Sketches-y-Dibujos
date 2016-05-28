//Tomas de Camino Beck //<>//

PFont font;
int posX=0, posY=100;
char letter = 'o';

void setup() {
  size(600, 600);
  font = createFont("Times", 32, true);
  textFont(font, 32);
  background(255);
  smooth();
}

void draw() {
  frameRate(20);
  fill(0, 10);
  textFont(font, mouseY*2);
  text(letter, 0, height);
}