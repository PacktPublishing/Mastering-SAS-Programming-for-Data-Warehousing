data X.Chap3_1_Labels;
	set X.Chap3_1;
	label _STATE = "State FIPS Code"
	label SEX1 = "Sex at Birth"
	label _AGE80 = "Imputed age value collapsed above 80"
	label _BMI5 = "Body Mass Index (BMI)"
	;
run;
proc contents data=X.Chap3_1_Labels;
run;
	