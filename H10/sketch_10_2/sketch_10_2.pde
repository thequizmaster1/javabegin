import controlP5.*;

ControlP5  cp;
Button knop1;
Textfield tekstveld1;

void setup() {
  size(800, 800);
  background(255, 255, 255);

  cp =  new ControlP5(this);
  
   ControlFont font = new ControlFont(createFont("font",50));

  knop1 = cp.addButton("knop1")
    .setPosition(100, 100)
    .setSize(600, 250)
    .setFont(font)
    .setCaptionLabel("Klik hier");

  tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(100, 380)
    .setSize(600, 150)
    .setFont(font)
    .setText("")
    
    .setCaptionLabel("Type je naam!")
    .setColorLabel(color(255, 0, 0));
}

void draw() {
}

void knop1() {
  println("Hoi mijn naam is " + tekstveld1.getText());
}
