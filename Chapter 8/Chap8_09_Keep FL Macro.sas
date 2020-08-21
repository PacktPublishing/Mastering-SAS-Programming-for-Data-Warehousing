LIBNAME Y "/folders/myfolders/Y";
data Y.JAN2018_FL;
	set X.JAN2018;
	if _STATE = 12;
run;
%MACRO keep_FL;
OPTIONS NONOTES NOSTIMER NOSOURCE NOSYNTAXCHECK;
%LET M=JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;
%DO J=1 %TO 12;
	%LET MONTH=%SUBSTR(%STR(&M),(&J*4-3),3);
	%LET outfile = Y.&MONTH.2018_FL;
	%LET infile = X.&MONTH.2018;
	data &outfile;
		set &infile;
		if _STATE = 12;
	run;
%END;
%MEND keep_FL;
%keep_FL;


	
