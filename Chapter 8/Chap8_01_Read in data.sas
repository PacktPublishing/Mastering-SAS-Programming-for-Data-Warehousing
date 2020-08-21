LIBNAME X "/folders/myfolders/X";
data brfss_a;
	set X.Chap8_1;
run;
PROC FREQ data=brfss_a;
tables _STATE / missing;
run;