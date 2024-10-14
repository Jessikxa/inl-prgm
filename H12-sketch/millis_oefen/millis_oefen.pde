// millis oefen
int startTime;

void setup(){
  startTime = millis();
}

void draw(){
  int currentTime = millis();
  if(currentTime > startTime + 5000){
    background(255, 46,128);
  }
}
