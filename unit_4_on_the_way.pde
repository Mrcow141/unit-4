//color pallete
color moon = #dddddd;
color flagpole = #848381;
color CHINA = #de2810;
float rotatingthing;
float x1 = random(-200, 350);//for planets/craters
float y1 =  random(220, 280);//for planets/craters
int amountofstars;

color toppartofgradient = #000000;
color bottompartofgradient =#000000; 



void setup() {
  size(800, 800);
  gradient();
  amountofstars1();
  moon();
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
  fill(165, 165, 165, 235);
  circle(x1-100, y1 - 110, 90); //small crater1
  circle(x1 + random(50, 130), y1 + random(0, 90), 90);//small crater2
}

void stars(float rando, float rando1, int amountofstars) {
  pushMatrix();
  translate(rando, rando1);
  scale(random(0.01,0.1));
  fill(255);
  noStroke();
  pointsofthestar();
  popMatrix();
}


void pointsofthestar() {
  rotatingthing = 0;
  while (rotatingthing<6) {
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
  fill(flagpole);
  rect(x1-100, y1-210, 3, 50);
  fill(CHINA);
  rect(x1-150, y1 -210, 50, 25);
}
 
 void roveronmoon(){
   rotate(PI/15); 
   rect(x1+15,y1-210,60,25);
  
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
