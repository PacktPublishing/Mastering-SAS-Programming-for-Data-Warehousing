LIBNAME X "/folders/myfolders/X";
data brfss_a;
	set X.Chap6_1;
run;
PROC CONTENTS data=brfss_a VARNUM;
run;
