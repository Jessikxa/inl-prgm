int lengte = 165;
int weight = 65;
String text = "Met een gewicht van 65 kg en een lengte van 180cm, is jouw MBI: ";
float cm_m = lengte / 100.0;

print(text);
println(Math.round(weight / (cm_m * cm_m)));



/*
String cm_m ="";
cm_m = cm_m + lengte / 100.0;
String weightstr ="";
weightstr = weightstr + weight;

println(weightstr / (cm_m * cm_m));

/*String lengtestr = "";
String weightstr = "";

lengtestr = str(lengte);
weightstr = str(weight);
*/
