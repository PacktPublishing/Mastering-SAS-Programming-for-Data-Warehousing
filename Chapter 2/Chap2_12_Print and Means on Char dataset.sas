proc print data=Chap2_2_Difficult (obs=5);
run;
proc means data=Chap2_2_Difficult;
var CODE3;
run;