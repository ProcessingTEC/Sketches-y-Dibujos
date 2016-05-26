//Tomas de Camino Beck
//Uso de curvas bezier
void setup(){
  size(600,600);
  background(255);
}

void draw(){
 noFill();
 stroke(0,10);
 bezier(mouseX,mouseY, random(500),random(500),random(550),random(500),random(500),random(500));

}