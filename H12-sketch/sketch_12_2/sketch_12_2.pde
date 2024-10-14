int geclicked = 0;
int tellen = 0;
void setup() {
  size(500,500);
}

void draw() {
 tellen = millis();
 println(tellen);
 
 if (tellen >= 10000) {
    println(geclicked);
    stop();
  }
}

void keyReleased() {
  if (keyCode == 32) {
    geclicked++;
    
  }
  
}
// ook een keyreleased???
