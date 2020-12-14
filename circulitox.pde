float r = radians(45);
void setup() { 
  size(600,600);
  background(0); 
  
}

void draw() {
  translate(width/2,height/2);
  r = r + 20;
  rotate(r);
  noFill();
  stroke(random(255), random(30), random(10), random(100));
  ellipse(0, 0, 100, 600);

  //saveFrame("output/flashi.png");
}
  
