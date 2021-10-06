import controlP5.*;

ControlP5 cp;

Button knop1 ;
Button knop2;

void setup() {
  size(800, 800);
  background(255, 255, 255);
  
  cp =  new ControlP5(this);

  knop1 = cp.addButton("knop1")
    .setPosition(200, 200)
    .setSize(150, 100)
    .setCaptionLabel("Klik hier");
    
    knop2 = cp.addButton("knop2")
    .setPosition(400, 200)
    .setSize(150, 100)
    .setCaptionLabel("Klik hier");
}

void draw() {
}

void knop1(){
  println("Goed gedaan!");
 
}

void knop2(){
  println("Helaas fout!");
}
