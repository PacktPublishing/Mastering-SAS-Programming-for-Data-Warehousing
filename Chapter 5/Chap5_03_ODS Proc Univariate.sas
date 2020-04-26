ODS TRACE ON / label;
PROC UNIVARIATE data=X.chap5_1;
	var _AGE80;
run;
ODS TRACE OFF;