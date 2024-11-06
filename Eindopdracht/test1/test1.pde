
int squaresFilled = 0;
int turn = 0;

void setup() {
  size(300, 300);
}
void draw() {
  PlayerTurns();
  if (squaresFilled >= 9){
    gameOverScreen();
  }
}

void mouseClicked(){
  squaresFilled++;
}

void gameOverScreen() {
  int w = width;
  int h = height;
  background(115);
  fill(255);
  textSize(20);
  textAlign(CENTER,CENTER);
  text("Game Over!",w/2,h/2);
}

void PlayerTurns(){
  background(0);
  for
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
