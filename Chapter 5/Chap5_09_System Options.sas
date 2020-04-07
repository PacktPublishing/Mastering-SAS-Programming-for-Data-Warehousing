options nodate linesize=72;
run;
ods pdf file="/folders/myfolders/X/age_histogram.pdf";
proc univariate data=X.chap5_1;
	var _AGE80;
	histogram _AGE80;
run;
options date linesize=78;
run;