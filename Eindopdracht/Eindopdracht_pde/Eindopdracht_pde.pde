int x, y, cy, cx, xx, xy, e;
boolean play, reset;
boolean[] poso, posx;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  e=0;
  play=true;

  posx = new boolean[9];
  poso = new boolean[9];

  cx=600;
  cy=600;
  xx=600;
  xy=600;
}

void draw() {
  x=mouseX;
  y=mouseY;

  fill(255, 255, 255);
  noStroke();
  rect(0, 0, 500, 100);
  stroke(20);

  noFill();
  if (play) {
    line(120, 10, 170, 60);
    line(120, 60, 170, 10);
  } else {
    ellipse(150, 35, 50, 50);
  }

  
  line(xx, xy, 50+xx, 50+xy);
  line(xx, 50+xy, 50+xx, 0+xy);
  
  ellipse(cy, cx, 50, 50 );

  fill(0, 0, 0);
  text("Nu bezig:", 20, 40);

  line(100, 300, 400, 300);
  line(100, 200, 400, 200);
  line(200, 100, 200, 400);
  line(300, 100, 300, 400);

  
  text(x+" , "+y, 400, 40);

  
  if ((posx[0]&&posx[1]&&posx[2])||(posx[3]&&posx[4]&&posx[5])||(posx[6]&&posx[7]&&posx[8])||(posx[0]&&posx[3]&&posx[6])||(posx[1]&&posx[4]&&posx[7])||(posx[2]&&posx[5]&&posx[8])||(posx[0]&&posx[4]&&posx[8])||(posx[2]&&posx[4]&&posx[6])) {
    for (int i=0; i<9; i++) {
      posx[i]=true;
    }
    fill(255, 255, 255);

    rect(150, 150, 200, 100);

    line(175, 175, 220, 220);
    line(175, 220, 220, 175);
    fill(0, 0, 0);
    text("Gewonnen", 245, 203);
    text("R om opnieuw te beginnen", 200, 240);
    reset=true;
  } else if ((poso[0]&&poso[1]&&poso[2])||(poso[3]&&poso[4]&&poso[5])||(poso[6]&&poso[7]&&poso[8])||(poso[0]&&poso[3]&&poso[6])||(poso[1]&&poso[4]&&poso[7])||(poso[2]&&poso[5]&&poso[8])||(poso[0]&&poso[4]&&poso[8])||(poso[2]&&poso[4]&&poso[6])) {
    for (int i=0; i<9; i++) {
      poso[i]=true;
    }
    fill(255, 255, 255);

    rect(150, 150, 200, 100);

    ellipse(200, 200, 50, 50);
    fill(0, 0, 0);
    text("Gewonnen", 204, 203);
    text("R om opnieuw te beginnen", 200, 240);
    reset=true;
  } else if (e==9) {
    fill(255, 255, 255);
    rect(150, 150, 200, 100);
    fill(0, 0, 0);
    text("draw", 220, 203);
    text("press [R] to reset", 200, 240);
    reset=true;
  }
}

void keyPressed() {
  if (key=='r'&&reset) {
    e=0;

    cx=600;
    cy=600;
    xx=600;
    xy=600;

    background(255, 255, 255);
    for (int i=0; i<9; i++) {
      poso[i]=false;
      posx[i]=false;
    }
    reset= false;
  }
}

void mousePressed() {
  if (x>=100 && x<200) {
    if (y>=100 && y<200) {
      if (play&&!posx[0]&&!poso[0]) {
        xx=125;
        xy=125;
        play=false;
        posx[0]=true;
        e++;
      } else if (!posx[0]&&!poso[0]) {
        cy=150;
        cx=150;
        play=true;
        poso[0]=true;
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&!posx[1]&&!poso[1]) {
        xx=125;
        xy=225;
        play=false;
        posx[1]=true;
        e++;
      } else if (!posx[1]&&!poso[1]) {
        cy=150;
        cx=250;
        play=true;
        poso[1]=true;
        e++;
      }
    } else if (y<=400) {
      if (play&&!posx[2]&&!poso[2]) {
        xx=125;
        xy=325;
        play=false;
        posx[2]=true;
        e++;
      } else if (!posx[2]&&!poso[2]) {
        cy=150;
        cx=350;
        play=true;
        poso[2]=true;
        e++;
      }
    }
  } else if (x>=200 && x<300) {
    if (y>=100 && y<200) {
      if (play&&!posx[3]&&!poso[3]) {
        xx=225;
        xy=125;
        play=false;
        posx[3]=true;
        e++;
      } else if (!posx[3]&&!poso[3]) {
        cy=250;
        cx=150;
        play=true;
        poso[3]=true;
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&!posx[4]&&!poso[4]) {
        xx=225;
        xy=225;
        play=false;
        posx[4]=true;
        e++;
      } else if (!posx[4]&&!poso[4]) {
        cy=250;
        cx=250;
        play=true;
        poso[4]=true;
        e++;
      }
    } else if (y<=400) {
      if (play&&!posx[5]&&!poso[5]) {
        xx=225;
        xy=325;
        play=false;
        posx[5]=true;
        e++;
      } else if (!posx[5]&&!poso[5]) {
        cy=250;
        cx=350;
        play=true;
        poso[5]=true;
        e++;
      }
    }
  } else if (x<=400) {
    if (y>=100 && y<200) {
      if (play&&!posx[6]&&!poso[6]) {
        xx=325;
        xy=125;
        play=false;
        posx[6]=true;
        e++;
      } else if (!posx[6]&&!poso[6]) {
        cy=350;
        cx=150;
        play=true;
        poso[6]=true;
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&!posx[7]&&!poso[7]) {
        xx=325;
        xy=225;
        play=false;
        posx[7]=true;
        e++;
      } else if (!posx[7]&&!poso[7]) {
        cy=350;
        cx=250;
        play=true;
        poso[7]=true;
        e++;
      }
    } else if (y<=400) {
      if (play&&!posx[8]&&!poso[8]) {
        xx=325;
        xy=325;
        play=false;
        posx[8]=true;
        e++;
      } else if (!posx[8]&&!poso[8]) {
        cy=350;
        cx=350;
        play=true;
        poso[8]=true;
        e++;
      }
    }
  }
}
