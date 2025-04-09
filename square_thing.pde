size(800,800);
background(255);
int x = 0;
int y = 800;
while(x <= 400){
 fill(random(0,255));
 square(x,x,y);
 x = x+10; 
 y =y -40;
}
