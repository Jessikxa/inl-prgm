
void setup(){
  size(300,300);
  drawcircles(75,100,150,150,75,90);
}

void draw(){
  
}

void drawcircles(int x1, int y1, int x2, int y2, int x3, int y3){
  line(x1,y2,x3,y3);
  line(x2,y2,x3,y3);
  line(x1,y2,x2,y2);
  
}
