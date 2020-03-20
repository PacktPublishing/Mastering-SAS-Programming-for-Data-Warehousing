data Chap2_2_Difficult;
%let _EFIERR_ = 0;
infile '/folders/myfolders/X/Chap2_2_Difficult.csv' delimiter = ',' firstobs=2
	MISSOVER DSD lrecl=32767;
	informat 	ID 2.;
	informat	CODE1 7.;
	informat	CODE2 $6.;
	informat	CODE3 2.;
	format		ID 2.;
	format		CODE1 7.;
	format		CODE2 $6.;
	format		CODE3 2.;
input
	ID 
	CODE1 
	CODE2 $
	CODE3 
;
if _ERROR_ then call symputx('_EFIERR_',1);  
run;
proc contents data=chap2_2_difficult;
run;