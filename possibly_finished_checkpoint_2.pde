

void setup () {
  size(800, 800);
  //int x,y;
  //x = 50;
  //y = 50;
  //while (y <800){
  // drawhouse(x,y,0.0001);
  // x = x +200;
  // if (x>= 800){
  // x = 50;
  // y = y +200;
  // }
  //}
}

void draw() {
  
  //drawhouse(100, 100,1);
  int x,y;
  x = 50;
  y = 50;
  while (y <800){
   drawhouse(x,y,0.4);
   x = x +200;
   if (x>= 800){
   x = 50;
   y = y +200;
   }
  }
}


void drawhouse(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  walls();
  roof();
  window(100, 100);
  window1();
  door(50, 350);
  doorknob(150, 450);
  popMatrix();
}

void walls () {
  rect(0, 0, 400, 500);
}

void roof() {
  triangle(0, 0, 200, -150, 400, 0);
}

void window(int x, int y) {
  pushMatrix();
  translate(x, y);
  circle(0, 0, 100);
  popMatrix();
}

void window1() {
  rect(200, 50, 100, 100);
  line(200, 50, 300, 150);
  line(200, 150, 300, 50);
}

void door(int x, int y) {
  pushMatrix();
  rect(x, y, 100, 150);
  rect(x+100, y, 100, 150);
  popMatrix();
}

void doorknob(int x, int y) {
  pushMatrix();
  circle(x-25, y-25, 25);
  circle(x+25, y-25, 25);
  popMatrix();
}
