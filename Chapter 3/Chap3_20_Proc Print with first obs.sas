PROC SORT data=X.chap3_1_formats;
	BY SEX1;
PROC PRINT data=X.chap3_1_formats (firstobs = 20000 obs = 20010);
	BY SEX1;
	VAR _BMI5 SEX1;
run;