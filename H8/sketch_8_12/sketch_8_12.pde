size (700, 700);
background(255, 255, 255);

int x = 0;
int y= 0;

for (int j = 0; j <8; j++) {
  for (int i = 0; i < 8; i++) {
    if ((i+j )% 2 == 0) {
      fill(255, 255, 255);
    } else {
      fill(0, 0, 0);
    }
    rect( x+25, y+25, 50, 50);
    x += 50;
  }
  y +=50;
  x=0;
}
