int x = mouseX;
int y = mouseY;

void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  fill(31, 92, 128);
  rect(x,y,50,50);
  
}

void mouseDragged(){
  if(mousePressed){
    x= mouseX;
    y= mouseY;
  }
}

void mouseReleased(){
  
}
