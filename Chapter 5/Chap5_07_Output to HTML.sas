ods html file="/folders/myfolders/X/age_histogram.htm";
proc univariate data=X.chap5_1;
	var _AGE80;
	histogram _AGE80;
run;