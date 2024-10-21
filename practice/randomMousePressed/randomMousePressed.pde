

  String[] txt = {"hello", "my", "friend"};
  int indx = int(random(txt.length));
 // size(50,50);
  //for (i=0; i<txt.length; i++) {
void setup(){
  size(300,300);
}

void draw(){
  frameRate(7);
  if(mousePressed == true){
        println(txt[indx]);
      }
}


    
