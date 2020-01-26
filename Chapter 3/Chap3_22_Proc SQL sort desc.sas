PROC SORT data=X.chap3_1_formats;
	BY descending SEX1;
PROC SQL;
	select _BMI5, SEX1
	from X.Chap3_1_Formats (Obs = 10)
	order by SEX1;
quit;