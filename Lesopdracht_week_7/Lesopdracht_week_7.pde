/*
array als een regel geprint en
 controleer of ik erin staat
 */

String[] Tekst = {"H", "o", "i", " ", "i", "k", " ", "b", "e", "n", " ", "P", "i", "e", "t", "."};

void setup() {
  for (int i = 0; i< Tekst.length; i++) {
    print(Tekst[i]);
  }
    //i onthouden en dan de volgende 
  for (int i = 0; i< Tekst.length; i++) {
    if (Tekst[i] == "i"&& Tekst[i+1] =="k") {
        println(" ja");
      }
  }
  
}
