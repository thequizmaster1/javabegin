import controlP5.*;
ControlP5  cp;
Button knop1;
Button knop2;
int student = 0;
int ouder = 0;
int totaal = 0;

void setup() {
  size(800, 800);

  cp =  new ControlP5(this);

  ControlFont font = new ControlFont(createFont("font", 40));

  knop1 = cp.addButton("knop1")
    .setPosition(50, 50)
    .setSize(300, 300)
    .setFont(font)
    .setCaptionLabel("Student");

  knop2 = cp.addButton("knop2")
    .setPosition(450, 59)
    .setSize(300, 300)
    .setFont(font)
    .setCaptionLabel("Ouder");
}

void draw() {
  background(255);
  totaal = student + ouder;
  textSize(50);
  fill(0);
  text(student+ " Studenten", 50, 450);
  text(ouder + " Ouders", 50, 500);
  text(totaal + " totaal", 50, 550);
}

void knop1() {
  student ++;
}

void knop2() {
  ouder ++;
}
