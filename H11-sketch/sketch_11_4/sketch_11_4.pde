int[] mijnstapelgetallen = new int[10];

void setup(){
  for(int i = 0; i < mijnstapelgetallen.length; i++){
    mijnstapelgetallen[i] = 0+i*12;
  }
  
  for(int i = 0; i < mijnstapelgetallen.length; i++){
    println(mijnstapelgetallen[i]);
  }
}
