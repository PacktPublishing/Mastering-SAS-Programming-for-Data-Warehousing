data valid_example;
	set brfss_d;
	slp_valid = 1;
	if SLEPTIM2 > 12 | SLEPTIM2 = . | SLEPTIM2 < 4
		then slp_valid = 0;
run;
PROC FREQ data = valid_example;
	tables SLEPTIM2 * slp_valid /list missing;
run;