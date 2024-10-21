//DRAWWWWWWW
void setup(){
  size(640,360);
  background(50);
}
void draw(){
  
  if(mousePressed){
    stroke(255);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
