PROC SQL;
	select rownumber, _BMI5, SEX1
	from X.Chap3_1_Formats
	where rownumber ge 20000 and rownumber le 20010;
quit;