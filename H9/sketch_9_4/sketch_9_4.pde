void setup(){
  size(500,500);
  background(255,255,255);
  vierkant(10,490); 
}

void draw(){
 
}

void vierkant(int a,int b){
  strokeWeight(5);
  line(a,a,b,a);
  line(b,a,b,b);
  line(b,b,a,b);
  line(a,b,a,a);
}
