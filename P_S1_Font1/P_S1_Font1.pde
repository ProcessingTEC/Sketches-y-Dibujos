//Tomas de Camino Beck //<>//

PFont font;
int posX=0, posY=100;

void setup() {
  size(600, 600);
  font = createFont("Times", 32, true);
  textFont(font, 32);
  background(255);
}

void draw() {
  frameRate(20);
  fill(0,150);
  int s= 1+int(random(324));
  textFont(font, s);
  if (keyPressed) {
    text(char(key), posX, posY);
    posX+=s/4;
    if(posX>width) {
      posX=0;
      posY=(posY+60)%height;
    }
    
  }
}