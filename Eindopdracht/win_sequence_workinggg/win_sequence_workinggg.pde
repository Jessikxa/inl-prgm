
int[] board = {
3, 0, 0, 
3, 3, 0, 
3, 0,0};
void setup() {
  win();
}
void win() {
  // maybe another timefor (int i=0; i<board.length; i++) {

  // could maybe do a switch case so only one possible win
  for (int i = 0; i<3; i++) {
    if(board[i*3] != 0 && board[(i*3)] == board[(i*3+1)] && board[(i*3+1)] == board[(i*3+2)]){
      println("win. no explosion");
      return;
    }else if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
      println("WIN! explosion still happens anyway");
      return;
    } else if(i == 2 && board[i] == 0){
      println("no win, explosion pending. You'll never know when...");
      return;
    }
    /*
     if (board[i] != 0 && board[0+i] == board[3+i] && board[3+i] == board[6+i]) {
      println("WIN");
      return;
    } else if (board[i] ==0) {
      println("no win, empty space");
    }
    */
  }
}
