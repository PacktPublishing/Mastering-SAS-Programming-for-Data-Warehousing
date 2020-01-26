data X.Chap3_1_Formats;
	set X.Chap3_1_Formats;
	rownumber = _N_;
run;
PROC SORT data=X.chap3_1_formats;
	BY descending SEX1;
PROC SQL;
	select rownumber, _BMI5, SEX1
	from X.Chap3_1_Formats (Obs = 10)
	order by SEX1;
quit;