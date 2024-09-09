float cijfer = 5.7;
boolean diploma = false;
boolean vrijstelling = false;

if(cijfer >= 5.5){
  diploma = true;
  vrijstelling = true;
}
/*
if(cijfer >= 5.5){
  vrijstelling = true;
}

*/
if(diploma == true || vrijstelling == true){
  println("Gefeliciteerd");
}
/*
if(vrijstelling){
  println("Gefeliciteerd! je hebt vrijstelling");
}
*/
