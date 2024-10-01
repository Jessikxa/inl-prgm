class Person{
  String name = "";
  String leeftijd = "";
  String geslacht = "";
  
  Person(String name, String leeftijd, String geslacht){
    this.name = name;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }
  void display(){
    println("Naam: " + name);
    println("Leeftijd: " + leeftijd);
    println("Geslacht: " + geslacht);
  }
}

  Person peeps1 = new Person("","","");
  void setup(){
  peeps1.name = "martha";
  peeps1.leeftijd = "75";
  peeps1.geslacht = "vrouw";
  peeps1.display();
  
  }
  
  void draw(){}
