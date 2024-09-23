void setup(){
  size(200,200);
  mymethman(10,20,100,20);

  
}

void draw(){
  
}

void mymethman(int num1, int num2, int num3, int num4){
  line(num1,num2,num3,num4);
  line(num1,num3,num1,num2);
  line(num3,num3,num3,num4);
  line(num1,num3,num3,num3);
}
