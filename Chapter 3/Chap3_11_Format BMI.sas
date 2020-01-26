proc format;
	value BMI_f
		LOW - <18.5 = "Underweight"
		18.5 - <25 = "Normal"
		25 - <30 = "Overweight"
		30 - HIGH = "Obese"
		. = "Unknown"
	;
run;

data X.Chap3_1_Formats;
	set X.Chap3_1_Formats;
	format 	_BMI5 BMI_f.
	;
run;
