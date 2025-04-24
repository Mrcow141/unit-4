int x = 0;

color trunk = #806133;

void setup() {
  size(1100, 900);
  background(255);
  tree();
}

void tree() {
  tree(10, 500);
}
void tree(int x, int y) {
  pushMatrix();
  translate(100, 100);
  fill(trunk);
  rect(x, y, 4, 100, 10);
  strokeWeight(4);
  stroke(trunk);
  line(x+4, y+4, x + random(25, 60), y+ random(-40, 0));
  line(x, y, x + random(-15,-60), y + random(-50, 0));
  noStroke();
  fill(64,183,4,150);
  while(x<110){
    //rotate(random(PI/2));
  ellipse(x-random(10,50), y-random(-10,30), random(40,60), random(30,40));
 x = x + 15; 
 y = y -3;
}
  popMatrix();
}
