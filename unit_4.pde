
//color pallete
color moon = #F6F1D5;

float x1 = random(-200,350);
float y1 =  random(220,280);


void setup() {
size(800,800);  
background(0,0,0);

picture();
}

void picture() {

backg();
}

void backg() {
  pushMatrix();
  translate(400,400);
  planets();
  circle(x1-60, y1 - 110, 90); //small craters
  popMatrix();
}


void planets() {
  fill(moon);
 circle(x1, y1 ,400); // big planet
 
}

//void stars(){
// circle 
//}
