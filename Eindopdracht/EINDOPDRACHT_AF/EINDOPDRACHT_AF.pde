int squaresFilled = 0;
//0 = niks
//1 = player1
//2 = player2
boolean player1 = true ;
boolean gameOver = false;


void switchPlayers() {

  if (player1) {
    player1 = false;
  } else {
    player1 = true;
  }
  win();
}

int[] board = new int[9];
/*
void testWin() {
 
 
 board[0]=2;
 board[1]=0;
 board[2]=0;
 board[3]=0;
 board[4]=2;
 board[5]=0;
 board[6]=0;
 board[7]=0;
 board[8]=2;
 win();
 resetBoard();
 }
 */
void resetBoard() {
  for (int i=0; i<9; i++) {
    board[i]=0;
  }
}


void setup() {
  size(300, 300);
  switchPlayers();
  win();

  //testWin();
}
void draw() {
  //PlayerTurns();
  drawGrid();
}

void win() {
  for (int i = 0; i<3; i++) {
    // should make a win board because otherwise both tie and win screens are the same 

    //vertical win
    if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
      println("WIN! explosion still happens anyway" );
      gameOverScreen();
      return;
    }
  }
  //horizontal win
  if (board[0]!= 0 && board[0] == board[1] && board[1] == board[2]) {
    println("win. no explosion");
    gameOverScreen();
    return;

    //2nd row
  } else if (board[3]!= 0 && board[3] == board[4] && board[4] == board[5]) {
    println("win. no explosion");
    gameOverScreen();
    return;

    //3rd row
  } else if (board[6]!= 0 && board[6] == board[7] && board[7] == board[8]) {
    println("win. no explosion");
    gameOverScreen();
    return;

    //top-LEFT to bottom-RIGHT diagonal win
  } else if (board[0] != 0 && board[0] == board[4] && board[4] == board[8]) {
    println("DIAGONAL WINNN WTH");
    gameOverScreen();
    return;

    //top-RIGHT to bottom-LEFT diagonal win
  } else if (board[2] != 0 && board[2] == board[4] && board[4] == board[6]) {
    println("OTHER DIAGONAL WINNN WTH");
    gameOverScreen();
    return;
  }
}



void mousePressed() {
  if (gameOver) {
    if (mousePressed) {
      resetBoard();
      gameOver = false;
      //gameoverscreen weg.   how?
    }
    squaresFilled++;
    if (squaresFilled == 9) {
      println("ITS A TIE SORRY");
      gameOverScreen();
    }
  }
}

void mouseReleased() {
  int playerBoardNumber = 0;
  if (player1) {
    playerBoardNumber=2;
  } else {
    playerBoardNumber=1;
  }

  if (mouseX >0 && mouseX <100 && mouseY >0 && mouseY<100) {
    board[0] = playerBoardNumber;
    if (player1) {
      ellipse(50, 50, 50, 50);
    } else {
      rect(25, 25, 50, 50);
    }
    println(board[0]);
  }
  if (mouseX >100 && mouseX <200 && mouseY >0 && mouseY<100) {
    board[1] = playerBoardNumber;
    if (player1) {
      ellipse(150, 50, 50, 50);
    } else {
      rect(125, 25, 50, 50);
    }
    println(board[1]);
  }
  if (mouseX >200 && mouseX <300 && mouseY >0 && mouseY<100) {
    board[2] = playerBoardNumber;
    if (player1) {
      ellipse(250, 50, 50, 50);
    } else {
      rect(225, 25, 50, 50);
    }
    println(board[2]);
  }
  if (mouseX >0 && mouseX <100 && mouseY >100 && mouseY<200) {
    board[3] = playerBoardNumber;
    if (player1) {
      ellipse(50, 150, 50, 50);
    } else {
      rect(25, 125, 50, 50);
    }
    println(board[3]);
  }
  if (mouseX >100 && mouseX <200 && mouseY >100 && mouseY<200) {
    board[4] = playerBoardNumber;
    if (player1) {
      ellipse(150, 150, 50, 50);
    } else {
      rect(125, 125, 50, 50);
    }
    println(board[4]);
  }
  if (mouseX >200 && mouseX <300 && mouseY >100 && mouseY<200) {
    board[5] = playerBoardNumber;
    if (player1) {
      ellipse(250, 150, 50, 50);
    } else {
      rect(225, 125, 50, 50);
    }
    println(board[5]);
  }
  if (mouseX >0 && mouseX <100 && mouseY >200 && mouseY<300) {
    board[6] = playerBoardNumber;
    if (player1) {
      ellipse(50, 250, 50, 50);
    } else {
      rect(25, 225, 50, 50);
    }
    println(board[6]);
  }
  if (mouseX >100 && mouseX <200 && mouseY >200 && mouseY<300) {
    board[7] = playerBoardNumber;
    if (player1) {
      ellipse(150, 250, 50, 50);
    } else {
      rect(125, 225, 50, 50);
    }
    println(board[7]);
  }
  if (mouseX >200 && mouseX <300 && mouseY >200 && mouseY<300) {
    board[8] = playerBoardNumber;
    if (player1) {
      ellipse(250, 250, 50, 50);
    } else {
      rect(225, 225, 50, 50);
    }
    println(board[8]);
  }
  player1 = !player1;
  win();
  println(board);
}



void gameOverScreen() {
  gameOver = true;
  int w = width;
  int h = height;
  background(115);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Game Over!", w/2, h/2);
  
   resetBoard();
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
