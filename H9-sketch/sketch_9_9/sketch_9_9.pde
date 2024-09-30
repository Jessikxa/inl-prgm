//9.9
int x = 50;
void setup(){
  size(300,300);
  treemeth(75,40,150,75);
  bos (55,75);
}

void draw(){}

void treemeth(int num1, int num2, int num3, int num4){
  fill(56, 17, 9);
  rect(num1,num4, num2, num3 );
  fill(64, 120, 38);
  ellipse(num1 + (num2/2),num4,num2,num2);
}

//9.10

void bos(int num1, int num2){
  for(int i = 0; i<5 ; i++){
    
    treemeth((num1+x),50,150,num2);
    x += 30;
  }
}
