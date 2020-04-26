ODS OUTPUT Moments = X.Age_Moments;
PROC UNIVARIATE data=X.chap5_1;
	var _AGE80;
run;
PROC CONTENTS data=X.Age_Moments VARNUM;
run;
