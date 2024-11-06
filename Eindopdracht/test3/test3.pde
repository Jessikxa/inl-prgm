boolean player1 = true ;
int activeSquare = 0;

void Players() {

  if (player1) {
    char PlayerX = 'x';
    activeSquare = 1;
    println(PlayerX + " ="+ activeSquare);
    player1 = !player1;
  } else {
    char PlayerO = 'o';
    activeSquare = 2;
    println(PlayerO + " ="+ activeSquare);
    player1 = true;
  }
}


void setup() {
  size(300, 300);
  Players();
  background(150);
}

void draw() {
}


void mousePressed() {
  if (player1) {
    rect(mouseX, 0, 50, 50);
  } else {
    ellipse(150, mouseY, 50, 50);
  }
}

void mouseReleased() {
  player1 = !player1;
}
