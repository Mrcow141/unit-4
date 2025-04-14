

void setup () {
  size(600, 600);
}

void draw() {
  drawhouse(100, 100);
}


void drawhouse(int x, int y) {
  pushMatrix();
  translate(x, y);
  walls();
  roof();
  window(0, 0);
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
  circle(100, 100, 100);
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
