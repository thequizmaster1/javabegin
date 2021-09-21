
void setup() {
  size(800, 800);
  background(255, 255, 255);
}

void draw() {
  int x = 40;
  int y = 0;

  for (int j = 0; j<  15; j++) {
    for (int i = 0; i < 9; i++) {
      fill(255, 0, 0);
      rect(x, y, 80, 40);


      x += 82;
    }
    if (j% 2 == 0) {
      x    =10;
    } else {
      x =40;
    }
    y += 42;
  }
}
