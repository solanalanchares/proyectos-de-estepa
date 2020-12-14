
float ang = 0;

void setup(){
  size(1200,600);
  background(40, random(50));
  
  
}

void draw() {
  if (mouseX > 300 && mouseX < 900) {
  float x = random(width);
  float y = random(height);
  float tam = random(50) * random(1);
  
  x -= x%50;
  
  noStroke();
  color paleta [] = {#5C20E0, #F8FC08, #FC1C08};
  fill(paleta[int(random(paleta.length))], random(255));
  ellipse(x, y, tam, tam);
  }  
} 
 
  void keyPressed() {
    saveFrame("bolitas-######.png");
  }
