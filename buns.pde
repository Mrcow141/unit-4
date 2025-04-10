color white =255;
color black = 0;
color beige = 237;


void setup() {
  size(800, 800);
  background(white);

}

void draw() {
  face(200, 100);
  
}

void face(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  circle(180, 180, 300);
  
  popMatrix();
}

void head(int x, int y){
  fill(beige);
   circle(180, 180, 300); 
}
