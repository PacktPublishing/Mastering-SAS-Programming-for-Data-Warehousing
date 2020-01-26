PROC SORT data=Chap_1_1_Infile;
	by _STATE;
run;

PROC MEANS data=Chap_1_1_Infile;
	by SEX1;
run;