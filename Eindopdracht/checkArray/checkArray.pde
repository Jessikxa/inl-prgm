//empty = 0
//square = 1
//circle = 2
/*
boolean checkIftrue = false;

void checkiftrue(){
if(grid/square == 1 || grid/square == 2){
  checkIftrue = true;
}
}
*/

//vakjes

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
  }
}
