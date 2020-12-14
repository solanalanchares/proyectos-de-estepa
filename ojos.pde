void setup() {
  fullScreen();
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
    background(50,130, 80);
    
    int col = 3;
    float sepX = 100;
    int row = 4;
    float sepY = 100;
    float radOjo = 30;
    
    for(int r = 0; r < row ; r++) {
      
    
      for(int c = 0; c < col ; c++) {
        
        //posicion ojo
        float posOjoX = (c * sepX) + (width - (col - 1) * sepX) / 2; 
        float posOjoY = (r * sepY) + (height - (row - 1) * sepY) / 2;
        
        //posicion pupila        
        float pupOjoX = posOjoX + (mouseX - posOjoX) /25;
        float pupOjoY = posOjoY + (mouseY - posOjoY) /25;
        
        
       
       // dibujo blanco ojo 
        fill(255);
        float aper = 45;
        float angS = radians (90 - aper);
        float angE = radians (90 + aper);
        float angS1 = radians (270 - aper);
        float angE1 = radians (270 + aper);
        arc(posOjoX, posOjoY - radOjo / 0.706, radOjo*2, radOjo*2, angS, angE, OPEN);
        arc(posOjoX, posOjoY + radOjo / 0.706, radOjo*2, radOjo*2, angS1, angE1, OPEN);
        
        // dibujo iris
        fill(55, c * 40, r * 60);
        ellipse(pupOjoX,pupOjoY,radOjo/2,radOjo/2);
        
        // dibujo pupila
        fill(0);
        ellipse(pupOjoX,pupOjoY,radOjo/4,radOjo/4);
        
       }
    }
}
