DATA Massachusetts;
	set Chap_1_1_Infile;
	WHERE _STATE = 25;
run;

PROC FREQ data=Chap_1_1_Infile;
	Where _STATE = 25;
	Tables(SEX1);
run;

DATA Massachusetts;
	set Chap_1_1_Infile;
	IF _STATE = 25;
run;


