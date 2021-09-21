size (1000,1000);
background(255,255,255);

int cirkel = 50;

for(int i = 0; i < 50; i++){
  ellipse(50 + cirkel/2, 50 + cirkel/2, 100+cirkel,100+cirkel);
  cirkel+=18;
}
