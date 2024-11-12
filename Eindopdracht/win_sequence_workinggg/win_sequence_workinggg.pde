int squaresFilled = 0;
int turn = 0;

//0 = niks
//1 = player1
//2 = player2
//int player
boolean player1 = true ;
int activeSquare = 0;

void switchPlayers() {

  if (player1) {
    println( " ="+ activeSquare);
    player1 = !player1;
  } else {
    println(" ="+ activeSquare);
    player1 = true;
  }
}

int[] board = new int[9];

void testWin(){
  board[0]=2;
  board[4]=2;
  board[8]=2;
  win();
  resetBoard();
  
  board[2]=2;
  board[4]=2;
  board[6]=2;
  win();
  resetBoard();
  
  board[0]=2;
  board[1]=2;
  board[2]=2;
  win();
  resetBoard();
  
  
  board[3]=2;
  board[4]=2;
  board[5]=2;
  win();
  resetBoard();
  
  
  board[6]=2;
  board[7]=2;
  board[8]=2;
  win();
  resetBoard();
  
  
  board[0]=2;
  board[3]=2;
  board[6]=2;
  win();
  resetBoard();
  
  board[1]=2;
  board[4]=2;
  board[7]=2;
  win();
  resetBoard();
  
  board[2]=2;
  board[5]=2;
  board[8]=2;
  win();
  resetBoard();
  
}

void resetBoard(){
  for (int i=0; i<8;i++){
    board[i]=0;
  }
}


void setup() {
  size(300, 300);
  //switchPlayers();
  //win();
  
  testWin();
}
void draw() {
  //PlayerTurns();
  drawGrid();
}

void win(){
  for (int i = 0; i<3; i++) {
    if (board[i]!= 0 && board[(0+(2*i))] == board[(1+(2*i))] && board[(1+(2*i))] == board[(2+(2*i))]) {
      println("win. no explosion");
      gameOverScreen(); // should make a win board because otherwise both tie and win screens are the same ...
      return;
      //vertical win
    } else if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
      println("WIN! explosion still happens anyway");
      gameOverScreen();
      return;
      
    } 
    
  }
  //top-LEFT to bottom-RIGHT diagonal win
  if (board[0] != 0 && board[0] == board[4] && board[4] == board[8]) {
      println("DIAGONAL WINNN WTH");
      gameOverScreen();
      return;
      //top-RIGHT to bottom-LEFT diagonal win
    } else if (board[2] != 0 && board[2] == board[4] && board[4] == board[6]) {
      println("OTHER DIAGONAL WINNN WTH");
      gameOverScreen();
      return;
    }
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


/*
void draw(){
 //PlayerTurns();
 if (squaresFilled >= 9){  ///
 gameOverScreen();
 }
 }
 */

int playerBoardNumber = 0;
void mousePressed() {
  squaresFilled++;
  if (player1) {
    rect(mouseX, (mouseY), 50, 50);
  } else {
    ellipse(mouseX, mouseY, 50, 50);
  }
  if (player1) {
    playerBoardNumber = 1;
  } else {
    playerBoardNumber =2;
  }

  

  if (squaresFilled == 9) {
    println("ITS A TIE SORRY");
    gameOverScreen();
  }
  win();
}


void mouseReleased() {
  
  if (mouseX >0 && mouseX <100 && mouseY >0 && mouseY<100) {
    board[0] = playerBoardNumber;
    println(board[0]);
  }
  if (mouseX >100 && mouseX <200 && mouseY >0 && mouseY<100) {
    board[1] = playerBoardNumber;
    println(board[1]);
  }if (mouseX >200 && mouseX <300 && mouseY >0 && mouseY<100) {
    board[2] = playerBoardNumber;
    println(board[2]);
  }if (mouseX >0 && mouseX <100 && mouseY >100 && mouseY<200) {
    board[3] = playerBoardNumber;
    println(board[3]);
  }if (mouseX >100 && mouseX <200 && mouseY >100 && mouseY<200) {
    board[4] = playerBoardNumber;
    println(board[4]);
  }if (mouseX >200 && mouseX <300 && mouseY >100 && mouseY<200) {
    board[5] = playerBoardNumber;
    println(board[5]);
  }if (mouseX >0 && mouseX <100 && mouseY >200 && mouseY<300) {
    board[6] = playerBoardNumber;
    println(board[6]);
  }if (mouseX >100 && mouseX <200 && mouseY >200 && mouseY<300) {
    board[7] = playerBoardNumber;
    println(board[7]);
  }if (mouseX >200 && mouseX <300 && mouseY >200 && mouseY<300) {
    board[8] = playerBoardNumber;
    println(board[8]);
  }
  player1 = !player1;
  
  println(board);
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

void drawGrid() {
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
