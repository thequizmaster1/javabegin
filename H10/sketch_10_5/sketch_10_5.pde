import controlP5.*;
ControlP5  cp;
String cijfer1;
String cijfer2;
int totaal;
Button knop1;
Button knop2;
Button knop3;
Button knop4;  
Textfield tekstveld1;
Textfield tekstveld2;

void setup(){
  size(800,800);  
  cp =  new ControlP5(this);
 
  ControlFont font = new ControlFont(createFont("font",30));
  
     tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(10, 10)
    .setSize(300, 30)
    .setFont(font)
    .setText("")
    .setCaptionLabel("")
    .setColorLabel(color(255, 0, 0));
    
     tekstveld2 = cp
    .addTextfield("TextInput2")
    .setPosition(320, 10)
    .setSize(300, 30)
    .setFont(font)
    .setText("")
    .setCaptionLabel("")
    .setColorLabel(color(255, 0, 0));
  
    knop1 = cp.addButton("knop1")
    .setPosition(630, 10)
    .setSize(30, 30)
    .setFont(font)
    .setCaptionLabel("*");
    
     knop2 = cp.addButton("knop2")
    .setPosition(670, 10)
    .setSize(30, 30)
    .setFont(font)
    .setCaptionLabel("/");
    
     knop3 = cp.addButton("knop3")
    .setPosition(710, 10)
    .setSize(30, 30)
    .setFont(font)
    .setCaptionLabel("+");
    
     knop4  = cp.addButton("knop4")
    .setPosition(750, 10)
    .setSize(30, 30)
    .setFont(font)
    .setCaptionLabel("-");

}

void draw(){
  background(255);
  fill(0);
  textSize(100);
  text(""+ totaal,10,120);
}    

void knop1(){
cijfer1 = tekstveld1.getText();
cijfer2 = tekstveld2.getText();
int cijfer11 =Integer. parseInt (cijfer1);
int cijfer22 =Integer. parseInt (cijfer2);
totaal = cijfer11 * cijfer22;  
}

void knop2(){
  cijfer1 = tekstveld1.getText();
cijfer2 = tekstveld2.getText();
int cijfer11 =Integer. parseInt (cijfer1);
int cijfer22 =Integer. parseInt (cijfer2);
totaal = cijfer11 / cijfer22;  
}

void knop3(){
  cijfer1 = tekstveld1.getText();
cijfer2 = tekstveld2.getText();
int cijfer11 =Integer. parseInt (cijfer1);
int cijfer22 =Integer. parseInt (cijfer2);
totaal = cijfer11 + cijfer22;  
}

void knop4(){
  cijfer1 = tekstveld1.getText();
cijfer2 = tekstveld2.getText();
int cijfer11 =Integer. parseInt (cijfer1);
int cijfer22 =Integer. parseInt (cijfer2);
totaal = cijfer11 - cijfer22;  
}
