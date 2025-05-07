//color pallete
color moon = #d0c3b1;
color flagpole = #848381;
color CHINA = #de2810;
float rotatingthing;
float x1 = random(-200, 350);//for planets/craters
float y1 =  random(220, 280);//for planets/craters
int amountofstars;




void setup() {
  size(800, 800);
  background(0, 0, 0);
  amountofstars1();
  backg();
}


void backg() {
  pushMatrix();
  translate(400, 400);
  planets();
  noStroke();
  fill(109, 94, 83, 185);
  circle(x1-100, y1 - 110, 90); //small crater1
  circle(x1 + random(0, 150), y1 + random(0, 120), 90);//small crater2


  popMatrix();
}

void planets() {
  fill(moon);
  circle(x1, y1, 400); // big planet
  flag();
}

void stars(float rando, float rando1, int amountofstars) {
  pushMatrix();
  translate(rando, rando1);
  scale(0.06);
  fill(255);
  noStroke();
  pointsofthestar();
  popMatrix();
}


void pointsofthestar() {
  rotatingthing = 0;
  while (rotatingthing<20) {
    rotate(PI/10);
    triangle(0, 0, 50, -200, 100, 0);
    rotatingthing = rotatingthing +1;
  }
}


void shineofstar() {
}

void amountofstars1() {
  amountofstars = 5;
  while (amountofstars<400) {
    float rando = random(0, 800);
    float rando1 = random(0, 800);
    stars(rando, rando1, amountofstars);
    amountofstars = amountofstars + 10;
  }
}

void flag(){
  fill(flagpole);
  rect(x1-100,y1-210,3,50);
  fill(CHINA);
  rect(x1-150,y1 -210,50,25);

  
  
}
