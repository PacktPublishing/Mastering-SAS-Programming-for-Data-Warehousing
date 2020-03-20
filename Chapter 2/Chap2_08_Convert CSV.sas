data Convert_CSV;
%let _EFIERR_ = 0;
infile '/folders/myfolders/X/Chap2_1_CSV.csv' delimiter = ',' firstobs=2
	MISSOVER DSD lrecl=32767;
	informat 	_STATE 2.;
	informat	MARIJAN1 2.;
	informat	USEMRJN2 2.;
	informat	RSNMRJN1 2.;
	format		_STATE 2.;
	format		MARIJAN1 2.;
	format		USEMRJN2 2.;
	format		RSNMRJN1 2.;
input
	_STATE
	MARIJAN1 
	USEMRJN2
	RSNMRJN1
;
if _ERROR_ then call symputx('_EFIERR_',1);  
run;