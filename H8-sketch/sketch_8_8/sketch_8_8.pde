//8.8 ermee beziggg
int antwoord = 0;
int a = 0;
int b = 1;

for(int i = 0; i < 10; i++){
  antwoord = a + b;
  println(antwoord);
  a = b;
  b = antwoord;
}
