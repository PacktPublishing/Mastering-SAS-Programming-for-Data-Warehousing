PROC SORT data=X.chap3_1_formats;
	BY SEX1;
PROC SQL;
	select rownumber, _BMI5, SEX1
	from X.Chap3_1_Formats (firstobs = 20000 Obs = 20010);
quit;