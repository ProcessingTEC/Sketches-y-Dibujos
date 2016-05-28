//Tomas de Camino Beck
void setup(){
 size(600,600);
 smooth();
 background(255);
}

void draw(){
  fill(255,10);
  stroke(0,50);
  rect(mouseX,mouseY,pmouseX,pmouseY);
  
}