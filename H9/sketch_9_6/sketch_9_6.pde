void setup() {
  size (500, 500);
  background(255, 255, 255);

}

void draw(){
  
int cirkel =   150;

for (int i = 0; i < 5; i++) {
  ellipse(450 - cirkel/2, 250 , 100+cirkel, 100+cirkel);
  cirkel-=50;
}

}
