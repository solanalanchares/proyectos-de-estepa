float r = radians(3);

void setup() {
  size(800,600);
  rectMode(CENTER);
  
}

void draw() {
  
  float x = 0;
  float y = 0;
  float s = 200;
  float b = 0;
  translate(width/2, height/2);
  background(200);
  
  for(int i = 0; i < 7; i++) {
  pushMatrix();
   r = r +0.002;
  
  rotate(r);
  noFill();
  s = s-30;
  b = b + 3;
  rect(x, y, s + noise(0.3)*40, s  + noise(0.3)*40, b);
  popMatrix();
    
  }
}
