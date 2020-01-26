data Chap_1_1_Infile;
%let _EFIERR_ = 0; 
infile '/folders/myfolders/Chap 1_1_Infile.csv' delimiter = ',' firstobs=2
	MISSOVER DSD lrecl=32767;
	informat 	_STATE 2.;
	informat 	SEX1 2.;
	informat	_AGE80 2.;
	informat	_BMI5 2.2;
	format 	_STATE 2.;
	format 	SEX1 2.;
	format	_AGE80 2.;
	format	_BMI5 4.1;
input
	_STATE
	SEX1
	_AGE80 
	_BMI5
;
if _ERROR_ then call symputx('_EFIERR_',1);  
run;


