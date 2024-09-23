String wurds;

void setup(){
 wurds = mytext ("gello ", "is ", "it ", "workin?");
 println(wurds);
}

void draw(){
  
}

String mytext(String strong1, String strong2, String strong3, String strong4){
  String ant;
  ant = strong1+strong2+strong3+strong4;
  return ant;
}
