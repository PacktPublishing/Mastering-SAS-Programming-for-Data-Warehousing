PROC SORT data=X.chap3_1_formats;
	BY descending SEX1;
PROC PRINT data=X.chap3_1_formats (obs = 10);
	BY SEX1;
	VAR _BMI5 SEX1;
run;