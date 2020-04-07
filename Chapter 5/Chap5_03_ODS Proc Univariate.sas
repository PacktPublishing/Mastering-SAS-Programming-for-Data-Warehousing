ods trace on / label;
proc univariate data=X.chap5_1;
	var _AGE80;
run;
ods trace off;