ODS PDF file="/folders/myfolders/X/age_histogram.pdf";
PROC UNIVARIATE data=X.chap5_1;
	var _AGE80;
	histogram _AGE80;
run;
