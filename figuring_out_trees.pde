int x = 0;

void setup() {
  size(1100, 900);
  background(255);
  tree();
}

void tree() {
  trunk(10, 500);
}
void trunk(int x, int y) {
  pushMatrix();
  translate(100,100);
 rect(x,y,4,100,10);
 strokeWeight(4);
 line(x+4,y+4,x + random(5,60), y+ random(5,60));
 line(x,y, x + random(-5-60), y + random(-5,-60));
 ellipse(x+random(0,70),y + random(0,70),40,20);
popMatrix();  
}
