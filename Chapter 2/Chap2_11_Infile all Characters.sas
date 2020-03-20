data Chap2_2_Difficult;
%let _EFIERR_ = 0;
infile '/folders/myfolders/X/Chap2_2_Difficult.csv' delimiter = ',' firstobs=2
	MISSOVER DSD lrecl=32767;
	informat 	ID $10.;
	informat	CODE1 $10.;
	informat	CODE2 $10.;
	informat	CODE3 $10.;
	format		ID $10.;
	format		CODE1 $10.;
	format		CODE2 $10.;
	format		CODE3 $10.;
input
	ID $
	CODE1 $
	CODE2 $
	CODE3 $
;
if _ERROR_ then call symputx('_EFIERR_',1);  
run;