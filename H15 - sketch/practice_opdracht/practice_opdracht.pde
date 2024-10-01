class wheel{
  int r = 100;
  int g = 100;
  int b = 100;
  float x = 100;
  float y = 100;
  wheel(int r, int g, int b){
    this.r = r;
    this.g = g;
    this.b = b;
  }

  
  void roll(){
   x += 2;
  }

  
  void drawMe(){
    fill(r,g,b);
    ellipse(x,y,100,100);
  }
}
 
class laptop{
   boolean aan = false;
   String kleur = "grijs";
   void aanUit(){
    aan = !aan;
   }
   void coderen(){
     if(aan){
       print("laptop is aan het programmeren");
     }else{
       print("zet je laptop aan");
     }
   }
}
 
 wheel wiel1 = new wheel(0,0,0);
 wheel wiel2 = new wheel(255,255,255);
 laptop mylaptop = new laptop(); 
 
 void setup(){
   size(500,500);
   wiel1.r = 255;
   wiel2.b = 243;
   wiel2.y += 100;
   mylaptop.aanUit();
   mylaptop.coderen();
 }
 
 void draw(){
   
   wiel1.roll();
   wiel1.drawMe();
   wiel2.roll();
   wiel2.drawMe();
 }
