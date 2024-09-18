//8.9 - 8.6

size(300,300);
background(255,255,255);

int sizeC = 0;

for(int i = 0; i < 50; i++){
  ellipse(0-sizeC/2, 0-sizeC/2, sizeC,sizeC);
  sizeC = sizeC - 5;;
  
}
