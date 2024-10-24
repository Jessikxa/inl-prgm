// int empty = 0;
// int square = 1;
// int circle = 2;
/*
boolean checkIfempty = false;

void checkifempty){
if(grid/squareVakje == 0){
  checkIftrue = true;
}
}
if(true){
  place player symbol
}

*/

//symb
/*
x = line(10,10,50,50);
    line(10,50,50,10);
0 = ellipse(mouseX,mouseY,75,75);
*/

//restart?

//vakjes
//class Vakjes(){
//Vakjes(volgorde is van links naar rechts)
//x en y coordinaten
//coord  x          y  
/*
1 =    0>x<100 && 0>y<100
2 =  100>x<200 && 0>y<100
3 =  200>x<300 && 0>y<100

4 =    0>x<100 && 100>y<200
5 =  100>x<200 && 100>y<200
6 =  200>x<300 && 100>y<200

7 =    0>x<100 && 200>y<300
8 =  100>x<200 && 200>y<300
9 =  200>x<300 && 200>y<300

}*/
//check array connecten to grid/squares
int check[] = new int[9];
void checkWin() { 
  if (check[0] == check[1] && check[1] == check[2]) {
  } else if (check[3] == check[4] && check[4] == check[5]) {
  } else if (check[6] == check[7] && check[7] == check[8]) {
  } else if (check[0] == check[3] && check[3] == check[6]) {
  } else if (check[1] == check[4] && check[4] == check[7]) {
  } else if (check[2] == check[5] && check[5] == check[8]) {
  } else if (check[0] == check[4] && check[4] == check[8]) {
  } else if (check[2] == check[4] && check[4] == check[6]) {
    println("WIN");
  }else{//no win en verder spel
  }
}
//win

void setup(){
  size(300,300);
  
}
void draw(){
  frameRate(7);
  background(0);
  if(mousePressed){
    if(mouseX >0 && mouseX <100 && mouseY >0 && mouseY<100){
      check[0] = 1;
      println("woo");
    }else{println("boo");}
    
    fill(255);
    ellipse(mouseX,mouseY,75,75);
  }
}
