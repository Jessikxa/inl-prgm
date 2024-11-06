int squaresFilled = 0;
int turn = 0;


int[] board = {
  1, 2, 3,
  0, 3, 6,
  3, 1, 9};
void setup() {
  size(300, 300);

  win();
}
void draw() {
  //PlayerTurns();
  
  drawGrid();
}

void win() {
  // maybe another timefor (int i=0; i<board.length; i++) {

  // could maybe do a switch case so only one possible win

  //horizontal win
  for (int i = 0; i<3; i++) {
    if (board[i*3] != 0 && board[(i*3)] == board[(i*3+1)] && board[(i*3+1)] == board[(i*3+2)]) {
      println("win. no explosion");
      gameOverScreen(); // should make a win board because otherwise both tie and win screens are the same ...
      return;
      //vertical win
    } else if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
      println("WIN! explosion still happens anyway");
      gameOverScreen();
      return;
      //top-LEFT to bottom-RIGHT diagonal win
    } else if (board[i] != 0 && board[0] == board[4] && board[4] == board[8]) {
      println("DIAGONAL WINNN WTH");
      gameOverScreen();
      return;
      //top-RIGHT to bottom-LEFT diagonal win
    } else if (board[i] != 0 && board[2] == board[4] && board[4] == board[6]) {
      println("OTHER DIAGONAL WINNN WTH");
      gameOverScreen();
      return;
      /*
    } else if () {  //board[i] != 0 && i>0 && i < board.length/TIE-if the board has been completely filled without a win. so none of the above win sequences. you cant do else, because a no win would then a tie all 0's would be a no win
      // so need to find a way to make an if statement that says if all squaresfilled AND none of above wins AND board[i] != 0 THEN{println("it's a tie sorry");}
      println("ITS A TIE SORRY");
      gameOverScreen();
      return;
    } else if (board[i] == 0) {
      println("no squares filled.. explosion pending. You'll never know when...");
      gameOverScreen();
      return;
    }
    
     if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
     println("WIN");
     return;
     } else if (board[i] ==0) {
     println("no win, empty space");
     }
     */
  }
  /*
  for (int i = 0; i<1;i++) {
   if (board[i] != 0 && board[0] == board[4] && board[4] == board[8]) {
   println("DIAGONAL WINNN WTH");
   return;
   }
   }
   */
}
}
/*
void draw(){
 //PlayerTurns();
 if (squaresFilled >= 9){  ///
 gameOverScreen();
 }
 }
 */

void mouseClicked() {
  squaresFilled++;
  if (squaresFilled == 9) { 
    println("ITS A TIE SORRY");
    gameOverScreen();
  }
  win();
}

void gameOverScreen() {
  int w = width;
  int h = height;
  background(115);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Game Over!", w/2, h/2);
}

void drawGrid(){
    for (int X = 0; X< width; X = X+100) {
    stroke(0);
    line(X, 0, X, height);
  }
  for (int Y = 0; Y< height; Y = Y+100) {
    stroke(0);
    line(0, Y, width, Y);
  }
}
/*void PlayerTurns(){
 background(0);
 
 if (mousePressed){
 if(turn == 1){
 text("X",mouseX,50);
 turn = 2;
 }else {
 text("O",50,mouseY);
 turn = 1;
 }
 }
 }
 */
