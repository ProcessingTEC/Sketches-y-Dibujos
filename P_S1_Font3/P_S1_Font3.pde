//Tomas de Camino Beck //<>//
//Tomas de Camino Beck
PFont font;
int posX=0, posY=100;
char letter = 'E';

void setup() {
  size(600, 600);
  font = createFont("Times", 32, true);
  textFont(font, 32);
  background(255);
  smooth();
}

void draw() {
  fill(0, 5);
  textFont(font, mouseY*2);
  translate(width/2, height/2);
  rotate(map(mouseX, 0, width, 0, TWO_PI));
  text(letter, 0, 0);
  rotate(HALF_PI);
  text(letter, 0, 0);
  rotate(HALF_PI);
  text(letter, 0, 0);
  rotate(HALF_PI);
  text(letter, 0, 0);
}