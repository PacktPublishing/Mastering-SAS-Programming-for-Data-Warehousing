data Chap2_3_Error;
%let _EFIERR_ = 0;
infile '/folders/myfolders/X/Chap2_3_Error.txt' delimiter = ',' firstobs=2
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
proc print data=Chap2_3_Error (obs=5);
run;