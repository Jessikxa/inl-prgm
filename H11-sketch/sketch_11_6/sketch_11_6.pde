//11.6

int[] numbers = {1, 5, 1, 8, 6, 6, 2, 7, 1,3};
int zoek = 1;
int voorkomt = 0;
boolean gevonden = false;
//misschien een boolean

void setup(){
  for(int i = 0; i < numbers.length; i++){
    if(numbers[i] == zoek){
      gevonden = true;
      voorkomt++;
    }
  }
  if(gevonden){
    println(voorkomt);
  }
  
}
