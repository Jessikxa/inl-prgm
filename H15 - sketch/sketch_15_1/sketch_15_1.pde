class Bigbox{
  float x = 100;
  float y = 100;
  float breedte = 50;
  float hoogte = 50;
  int r = 8;
  int g = 50;
  int b = 30;
  Bigbox(float x, float y, float breedte, float hoogte){
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
  }
  
  void drawMe(){
    fill(r,g,b);
    rect(x,y,breedte,hoogte);
  }
}

 Bigbox peep = new Bigbox(200,150,100,100);
 
 void setup(){
   size(500,500);
   
   
 }
 
 void draw(){
   background(255,255,255);
   peep.drawMe();
 }
