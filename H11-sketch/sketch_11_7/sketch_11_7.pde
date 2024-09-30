//11.7 for now
int[] numbers = {1,5,1,8,6,6,2,7,1,3};

int hoevaak;


void setup(){
  println(telhoevaakgetalvoorkomt(1));
  println(telhoevaakgetalvoorkomt(5));
}

int telhoevaakgetalvoorkomt(int getal){
  int voorkomt = 0;
  for(int i = 0; i < numbers.length; i++){
    if(numbers[i] == getal){
      voorkomt++;
      
    }
  }
  return voorkomt;

}
