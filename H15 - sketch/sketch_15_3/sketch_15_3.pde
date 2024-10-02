
/*
  -mag niet in het rood staan- niet onder de 0
 -bankrekeneing; rekeningnummer, saldo, eigenaar
 -
 void geld opnemen;
 -void geld storten;
 // not real code ... CONTROL Z WILL GO BACK SO IF YOU MAKE A MISTAKE USE ITTTTT AAAAA... thanks
 
 
 - void (geld opgenemen)(withdraw cash ){
 if geld op rekening{
 dan opnemen
 }
 dan storten op rekening nummer--- maar eigenlijk saldo
 if geen geld (i <= 0){
 mag niet opnemen
 }
 
 if (geld om te storten){
 }
 }
 
 will ik een extra variabele in geldopnemen en storten?
 je kan een boolean aanmaken voor geldopnemen die kijkt of je genoeg geld hebt
 - boolean genoeggeld? = false;
 if(saldo > 1){
 genoeggeld = true;
 saldo --
 }else if(saldo <=0){
 genoeggeld = false;
 println("niet genoeg saldo op rekening");
 }
 
 CNTRL + T == VOOR MEER OVERZICHTELIJKE CODE:D
 
 */
 
 //15.3

class BankAccount {
  int rekeningnummer;
  float saldo;
  String eigenaar;

  BankAccount(int rekeningnummer, float saldo, String eigenaar) {
    this.rekeningnummer = rekeningnummer;
    this.saldo = saldo;
    this.eigenaar = eigenaar;
  }
  void geldopnemen(float hoeveel) {
    if (hoeveel <= saldo) {
      saldo = saldo - hoeveel;
    } else {
      println("Niet genoeg saldo op rekening");
    }
  }

  // if(hoeveelheid > 0) ?? moet de if of kan dat ook zonder, want kan geen bedrag <0 storten

  void geldstorten(float hoeveelheid ) {
    if (hoeveelheid > 0 ) {
      saldo = saldo + hoeveelheid;
    }
  }


  void details() {
    println("Rekeningnummer: " + rekeningnummer);
    println("Saldo: $" + saldo);
    println("Eigenaar " + eigenaar);
  }
}

void setup() {
  BankAccount muneyy = new BankAccount(43721, 15, "veronica");

  muneyy.geldopnemen(1);
  muneyy.geldstorten(15);
  muneyy.details();
}

void draw() {
}
