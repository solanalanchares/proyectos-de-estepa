float o = 0;
float x = 0;
float y;
float h = 0;

void setup() {
  size(600,400);
  background(0);

}

void draw() {
  o = o + 0.1;
  h = h + 0.1;
  x = x + 1;
  for(float i = random(width); i< 400-50; i = i + 100) {
  strokeWeight(random(2) + noise(h) * 40);
  stroke(random(100), random(255) + noise(0.97) * 20, random(255) + noise(0.98) * 20,random(50));
  point(x, i + noise(o) * random(100));
  }}
  
  void keyPressed(){
  saveFrame("output/circu_####.png"); }
