
int[] board = new int[9];
void setup() {
  size(300, 300);
}
void draw() {
  background(255);

  for (int X = 0; X < width; X = X+100) {
    line(X, 0, X, height);
  }
  for (int Y = 0; Y < height; Y = Y+100) {
    line(0, Y, width, Y);
  }


  int x = mouseX/100;
  int y = (mouseY/100)*3;
  int location = x + y;
  board(location);
  if (mousePressed) {
    println(x + y);
  }
  
  //if x + y = 1, dan correspond to index[0] . would that work? if(x + y == 1){board[0] =1;}, etc
}



// if(x + y = 0 (vakje 0) {check[0] = bijv 1}
//     bij ieder vakje
//for loop die de board checked. als er een 0 is dan gebeurt er niks, als er een 1 staat dan vul je x in,enz
/*
for (int i = 0; i < 8; i+=3) {
  if (check[i] == check[i+1] && check[i+1] == check[i+2]) {
    
  }
}

for (int i = 0; i < 8; i++) {
  if (check[i] == check[i+3] && check[i+3] == check[i+6]) {
  }
}




boolean symbolCheck = false;

for (int i= 0; i< 9 /*of check.length/; i++) {
  if (check[0] = 1) {
    symbolCheck = true;
    ellipse(50,50 75, 75); // wil in het eerste vakje
  }
}

*/
