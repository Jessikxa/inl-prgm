//8.9 - 8.5

size(300,300);
background(255,255,255);

int sizeC = 300;

for(int i = 0; i < 50; i++){
  ellipse(150,150,sizeC,sizeC);
  sizeC = sizeC - 6;
  println(sizeC);
}
