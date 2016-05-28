//Tomas de Camino Beck

float noiseScale = 0.2;

void setup(){
 size(600,600); 
}

void draw() {
  background(0);
  int s=int(map(mouseY,0,height,2,100));
  float d=map(mouseX,0,width,0,400);
  for (int x=0; x < width; x+=s) {
      float noiseVal = 0.5-noise(x*noiseScale);
      stroke(255,70); //<>//
      line(x, 0,width-x+noiseVal*d,height);
      line(0,x,height,width-x+noiseVal*d);
  }
}