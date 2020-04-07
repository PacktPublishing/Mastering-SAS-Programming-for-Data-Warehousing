ods output Moments = X.Age_Moments;
proc univariate data=X.chap5_1;
	var _AGE80;
run;
proc contents data=X.Age_Moments VARNUM;
run;
