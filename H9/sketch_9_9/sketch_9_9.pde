void setup() {
  size(1000, 800);
  background(255, 255, 255);
  boom(100,550,100,550,150,550,200);
}

void draw() {
}

void boom(int x1,int y1,int breedte1,int breedte2,int x2,int y2,int breedte3){
  
  fill(149,95,30);
  rect(x1,y1,breedte1,breedte2);
  
  fill(0,255,0);
  ellipse(x2,y2,breedte3,breedte3);
  }
