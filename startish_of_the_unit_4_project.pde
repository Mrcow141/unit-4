//Jamie Kwai
// 2-4
//unit 4 project

color treebrown= #343430;
float randomizedcolor = 0;
color Grad1 = #596ec7;
color Grad2 = #e4dafd;
int y=0;

void setup() {
  size(1100, 900);
  background(255);
  picture(200, 500);
}

void picture (int x, int y) {
  pushMatrix();
  wintersky();
  translate(x, y);
  trees(0, 0);
  popMatrix();
}

void trees(int x, int y) {
  stroke(treebrown);
  strokeWeight(3);
  fill(treebrown);
  
  line(x,y,3,100);
  line(x,y,80,-80);
}

void wintersky(){
 while(y<1100){
  randomizedcolor = map(y,0,1100,0,1);
  color d =lerpColor(Grad1,Grad2,randomizedcolor);
  stroke(d);
  line(0,y,1200,y);
  y =y +1;
 }
}
