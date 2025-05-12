//color pallete
color moon = #dddddd;
color flagpole = #848381;
color CHINA = #de2810;
color chinesecolor = #ffde00;
color wheels = #352a21;
color antena = #feecd9;
float rotatingthing;
float rotatingthing1;
float x1 = random(-200, 350);//for planets/craters
float y1 =  random(220, 280);//for planets/craters
float craterrandom = random(10, 100);
int amountofstars;
int amountofcraters;
int amountofships;
color toppartofgradient = #000000;
color bottompartofgradient =#000000;



void setup() {
  size(800, 800);
  gradient();
  amountofstars1();
  alienspaceship();
  moon();
 //alienspaceship();
}


void moon() {
  pushMatrix();
  translate(400, 400);
  planets();
  noStroke();
  craters();
  roveronmoon();

  popMatrix();
}

void planets() {

  fill(moon);
  circle(x1, y1, 400); // big planet
  flag();
}

void craters() {
  pushMatrix();
  amountofcraters=0;
  scale(1);
  while (amountofcraters<4) {
    fill(165, 165, 165, random(50, 235));
    circle(x1+random(-60, 0), y1 + random(-100, 100), 90); //small crater1
    circle(x1 + random(0, 130), y1 + random(-100, 90), 90);//small crater2
    amountofcraters =amountofcraters + 1;
  }
  popMatrix();
}

void stars(float rando, float rando1, int amountofstars) {
  pushMatrix();
  translate(rando, rando1);
  scale(random(0.01, 0.1));
  fill(255);
  noStroke();
  pointsofthestar();
  popMatrix();
}


void pointsofthestar() {
  rotatingthing = 0;
  while (rotatingthing<4) {
    rotate(PI/2);
    triangle(0, 0, 50, -200, 100, 0);
    rotatingthing = rotatingthing +1;
  }
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

void flag() {
  pushMatrix();
  translate(x1, y1);
  fill(flagpole);
  rect(-100, -210, 3, 50);
  fill(CHINA);
  rect(-150, -210, 50, 25);
  popMatrix();
}



void roveronmoon() {
  pushMatrix();
  translate(x1, y1);
  rotate(PI/12);
  rect(0, -215, 60, 25);
  fill(wheels);
  circle(0, -190, 20);
  circle(55, -184, 20);
  littlearmthing();
  popMatrix();
}

void littlearmthing() {
  stroke(antena);
  strokeWeight(4);
  line(0, -215, -25, -235);
  line(-25, -235, -45, -225);//longpartofarm
  line(-45, -225, -55, -230);//leftpartofclaw
  line(-45, -225, -35, -215);
  line(-55, -230, -53, -215);
  line(-35, -215, -45, -210);
  noStroke();
}

void alienspaceship() {
  amountofships = 0;
  while (amountofships<30) {
    float rando = random(0, 800);
    float rando1 = random(0, 800);
    ships(rando, rando1, amountofships);
    amountofships = amountofships + 2;
  }
}

void ships(float rando, float rando1, int amountofships) {
  pushMatrix();
  translate(rando, rando1);
  scale(random(0.3,1.5));
  stroke(random(25,255));
  fill(random(25, 255));
  circle(0, 0, 35);
  fill(random(0, 255));
  rect(-33, 0, 67, 20, 10);
  line(-10,20,-20,40);
  line(10,20,20,40);
  popMatrix();
}



void gradient() {
  int y = 0;
  float transparency = 0;

  while (y < height) {
    transparency = map(y, 0, 1200, 0, 1);
    color p = lerpColor(toppartofgradient, bottompartofgradient, transparency);
    stroke(p);
    line(0, y, width, y);

    y = y + 1;
  }
}
