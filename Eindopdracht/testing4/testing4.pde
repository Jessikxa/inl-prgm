/*\
String str = "Hello World"; 
char[] charArray = str.toCharArray();

for(int i = 0; i<charArray.length; i++){
  println(charArray[i]);
}

nums[0][0] = 0;
nums[0][1] = 1;
nums[0][2] = 2;
nums[1][0] = 3;
nums[1][1] = 4;
nums[1][2] = 5;
nums[2][0] = 6;
nums[2][1] = 7;
nums[2][2] = 8;
*/



char[][] board = new char[3][3];
char board[][] = '-';



for (int i=0; i<board.length; i++) {
  println();
  for (int j=0; j<board[i].length; j++) {
    print(board[i][j] + " | ");
  }
}


//clas for players? so i could two new players.. we wqant the x = 1 so if anywhere in the 
// array a value has changed from 0 to 1, when a player pressed said square, we want the empty space of arraysquare to reflect that
// same thing for o = 2
 // declare x = 1 and o = 2
 //int x = 1;
 //int o = 2;
 
 //input grid + x or o
 
