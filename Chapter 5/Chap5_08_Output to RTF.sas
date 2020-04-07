ods rtf file="/folders/myfolders/X/age_histogram.rtf";
proc univariate data=X.chap5_1;
	var _AGE80;
	histogram _AGE80;
run;
