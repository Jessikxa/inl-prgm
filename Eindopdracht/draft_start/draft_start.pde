/*
  4 lines in the shape of a hashtag so it forms 9 squares
 create two symbols/players ---> X en Y
 player can click on one of the *empty* squares and it will place their symbol on clicked square
 afterwards the game will swap to the next players turn.   wisselt steeds om van play
 
 //class Players
 //Waar kan ik een array stoppen??
 
 */


/*
Symbols--
   
 could be x and o // idk of can be
 or with ellipse and two lines
 
 Clicking--
 
 if(op square geclicked){
 checken if square is empty-
 if empty{
 place symbol
 }else{
 do fak all
 }
 }
 
 */
// class for winning???
class Grid {

  void drawMe() {
    strokeWeight(8);
    line(0, 200, 600, 200);
    line(0, 400, 600, 400);
    line(200, 0, 200, height);
    line(400, 0, 400, height);
  }
}

void setup() {
  size(300,300);
}
void draw() {
  background(93, 121, 222);
  strokeWeight(8);
    line(0, height/3, width, height/3);
    line(0, 200, width, 200);
    line(width/3, 0, width/3, height);
    line(200, 0, 200, height);
}
/*
void mousepressed() {
  if (grid  = 0 is empty) {
    //place and display player's turn- symbol
  } else if (grid =1 || grid = 2) {
    //dont allow placing... do nothing basically
  }
}
*/
