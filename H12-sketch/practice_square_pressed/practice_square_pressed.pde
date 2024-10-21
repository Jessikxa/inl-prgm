void setup(){
  size(200,200);
}

void draw() {
  background(255,255,255);
  if (mousePressed){
    rect(mouseX, mouseY,50, 80);
  }
  
}
