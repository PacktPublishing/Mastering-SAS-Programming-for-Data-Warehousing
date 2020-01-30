LIBNAME X "/folders/myfolders/X";
data Chap4_1;
	set X.Chap4_1;
proc contents data=X.Chap4_1 VARNUM;
run;