size(800,800);
background(255);

int x = 0;
int y = 0;

while (x < 800){
line(x,0,x,800);
x = x+20;
}

while( y < 800){
 line (0,y,800,y);
 y = y+20;
}
