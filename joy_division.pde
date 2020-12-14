void setup(){
  fullScreen();
  frameRate(15);
  stroke(255);
}


void draw(){
  background(0);
  int cantL = height/20;
  
  for (int i = 1; i < cantL; i++) {
  dibujolinea(i*20);
  }
}

void dibujolinea(float posY) {
  int cant = 100;
  float sepX = width/float(cant);
  float Yant = posY;
  float ampY = 2;
  
  float t1 = width/3;
  float t2 = (width/3) * 2;
  
  for (int i = 0; i < cant; i++) {
    
    float x1 = i*sepX;
    float x2 = (i+1) * sepX;
    float y1 = Yant;
    
    if((x1 > t1) && (x2 <t2)) {
     ampY = 20;
    } else {
    ampY = 2;
    }
    
    float y2 = posY + random(-ampY,ampY);
    
    line(x1, y1, x2, y2);
    Yant = y2;
  }
}
