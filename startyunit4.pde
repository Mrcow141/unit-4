//Jamie Kwai
// 2-4
//unit 4 project

color treebrown= #8a2f27;
float randomizedcolor = 0;
color Grad1 = #87cffd;
color Grad2 = #529c07;
color grass = #53860a;


int y = 0;
int x = 0;
int r = 600;

void setup() {
  size(1100, 900);
  background(255);
  picture(200, 500);
}

void picture (int x, int y) {//main function
  pushMatrix();
  backg();
  translate(x, y);
  trunk(-200, 0);
  leafs(-200,0);
  popMatrix();
}

void trunk(int x, int y) {//subfunction
  stroke(treebrown);
  strokeWeight(3);
  fill(treebrown);
  
  while (x < 100) {
    rect(x + random(0, 100), y+ random(0, 200), 3, 100, 10);
    x = x +20;
  }
}


void leafs (float x, float y) {
  while(x<100){
   noStroke();
   fill(99,174,14,170);
 ellipse(x + random(0,100), y +random(0,200),50,30);
  x = x +20; 
}
}
void backg() {
  while (y<1100) {
    randomizedcolor = map(y, 0, 1100, 0, 1);
    color d =lerpColor(Grad1, Grad2, randomizedcolor);
    stroke(d);
    line(0, y, 1200, y);
    y =y +1;
  }
  fill(grass);

  strokeWeight(2);
  rect(0, 400, 400, 900);
  stroke(0, 0, 0);
  line(0, 400, 1100, 400);
}
