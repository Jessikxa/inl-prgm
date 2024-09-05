/*float mev = 60;
float min = 60;
float uur = 60;
float dag = 24;
float jaar = 365;
totaal = 0;
*/

float sec = 134985;
float min = sec/60;
float uur = min/60;
float dag = uur/24;
float jaar = dag/365;
float totaal = 0;


totaal = min;
println(min);

totaal = uur;
println(uur);

totaal = dag;
println(dag);

totaal = jaar;
println(jaar);
