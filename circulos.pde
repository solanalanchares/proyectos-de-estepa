float posX = 30;
float posY = 150;
float circleT = 60;
float velX= 3;



void setup() {
size(900,600);
  
}
void draw() {
  background(0);
  noStroke();
  posX = posX + velX;
  float cres = map(mouseY,0,width,circleT,400);
  ellipse(posX, posY, cres, cres);
  ellipse(posX, posY*2, cres, cres);
  ellipse(posX, posY*3, cres, cres);
  float rgb = map(mouseX,0,height,0,255);
  fill(rgb, random(120,160), random(120,160),50);
  
 if(posX > width || posX <= 0) {
  velX = velX*-1;
}
}

void keyPressed(){
   saveFrame("export.png"); 
}
