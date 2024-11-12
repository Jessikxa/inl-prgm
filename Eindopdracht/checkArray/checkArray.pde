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
boolean player = true;

//win
void Grid(){
  for (int X = 0; X< width; X = X+100) {
    stroke(0);
    line(X, 0, X, height);
  }
  for (int Y = 0; Y< height; Y = Y+100) {
    stroke(0);
    line(0, Y, width, Y);
  }   
}

void setup() {
  size(300, 300);
}

void draw() {
  background(105);
  strokeWeight(2);

  //grid
  for (int X = 0; X< width; X = X+100) {
    stroke(0);
    line(X, 0, X, height);
  }
  for (int Y = 0; Y< height; Y = Y+100) {
    stroke(0);
    line(0, Y, width, Y);
  }   
  

  for (int i = 0; i < check.length; i++) {

    text(check[i], 10, 20*i+20);
    if (check[i]==1) {
      noFill();
      stroke(255);
      //3 if statements voor y. if(0>y<1) if(3>y<4) if(6>y<7). idk of het zo uitgeschreven moet, want hij reset steeds als het module 0/3/6 is, dus dan maakt het niet uit
      // get the first line going and practice with win and players -- alternating players and
      ellipse(50 +(100 *(i % 3)), (50 +(i % 3)), 75, 75);
    }
  }
  /*
void mouseClicked() {
  squaresFilled++;
  if (squaresFilled == 9) {
    println("ITS A TIE SORRY");
    gameOverScreen();
  }
  win();
}    not needed. from winsequenceworking sketch
*/
  //mousePressed - draw circle


int playerBoardNumber = 0;
if (player){
  playerBoardNumber = 1;
} else {
    playerBoardNumber =2; }
} 

  if (mouseX >0 && mouseX <100 && mouseY >0 && mouseY<100) {
    if (mousePressed) {
      check[0] = playerBoardNumber;

      println(check[0]);
    }
  }
  if (mouseX >100 && mouseX <200 && mouseY >0 && mouseY<100) {
    if (mousePressed) {
      check[1] = 1;

      println(check[1]);
    }
  }
  if (mouseX >200 && mouseX <300 && mouseY >0 && mouseY<100) {
    if (mousePressed) {
      check[2] = 1;

      println(check[2]);
    }
  }
}



    
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
  } else {//no win en verder spel
  }
}
