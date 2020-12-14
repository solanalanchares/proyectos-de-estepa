float n = 0; 

void setup() {
  size(1200,600);
  background(255);
  frameRate(10);
}

void draw() {
  background(#4A98FC);
  for(int i = 0; i <=width; i = i+1) {
    strokeWeight(3);
    smooth();
    point(i, height/2 + random(cos(n)*200));
    n = n + 0.3;
   
  }
}
