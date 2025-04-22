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
  trunk1(-200, 0);
  leafs1(-200, 0);
  popMatrix();
}

void trunk1(int x, int y) {//subfunction
 
  while (x < 150){
  stroke(treebrown);
  strokeWeight(3);
  fill(treebrown);
  rect(x + random(0,100), y+ random(0,200), 3, 200, 10);
  fill(58, 130, 6, 150);
  x = x +30;
  }
}


void leafs1 (int x,int y) {
  while(x<150){
    noStroke();
   fill(97,149,10,180);
   ellipse(x + random(0,100),y +random(0,150),80,50);
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
  circle(50,900,600);
  circle(545,900,400);
  circle (920,900,370);
}
