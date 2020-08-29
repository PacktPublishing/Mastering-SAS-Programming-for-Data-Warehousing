data X.proc_sgscatter_data;
	set X.proc_tab_data;
		_BMI2 = round(_BMI5/100, 2);
	label _BMI2 ="2-digit Body Mass Index";
	format SEX1 sex_f.;
run;
PROC SGSCATTER data=X.proc_sgscatter_data;
plot _AGE80*_BMI2 / group=SEX1;
run;