proc freq data=X.chap3_1;
	Tables SEX1 * _BMI5;
	format 	SEX1 sex_f.
			_BMI5 BMI_f.
	;
	label 	SEX1 = "Sex at Birth"
			_BMI5 = "Body Mass Index (BMI)"
	;
run;