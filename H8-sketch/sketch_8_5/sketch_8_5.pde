size(150,150);
background(255,255,255);

int sizeC = 60;

for(int i = 0; i < 5; i++){
  ellipse(75, 75, sizeC,sizeC);
  sizeC = sizeC - 10;
  println(sizeC);
}
