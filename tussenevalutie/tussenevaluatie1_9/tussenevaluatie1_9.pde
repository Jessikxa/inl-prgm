float cijfer= 7;
float totcijf= 20;
float gevolgcijf= 17;
float procent = Math.round((gevolgcijf / totcijf)*100);

if(cijfer >= 5.5 && procent >= 80){
  println("geslaagd");
}
else{
  println("gezakt");
}
