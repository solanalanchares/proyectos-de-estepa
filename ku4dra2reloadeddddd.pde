
  float cajaX = 10;
  float cajaY = 10;
  float velX = 3;
  float cuad = 7;
  float mas = 1;
  float rota = 0.1;
   
void setup() {
  fullScreen();
  frameRate(7);
  noCursor(); 
}

void draw() {  
  background(0); 
  rota = rota+0.4;
  for (cajaX = 0; cajaX <= width-5; cajaX = cajaX + 20) {
    for (cajaY = 0; cajaY <= height-7; cajaY = cajaY + 20) {
      noStroke();
      fill(random(30), random(90), random(240));
      pushMatrix();
      translate(cajaX,cajaY);
      rotate(rota);

      rect(0, 0, cuad, cuad);
      popMatrix();
      
    }
  }
  
  if(mousePressed) {
     cuad = cuad + mas; 
    } else {
      cuad = lerp(cuad, 0, 0.1);
  }
  
}
