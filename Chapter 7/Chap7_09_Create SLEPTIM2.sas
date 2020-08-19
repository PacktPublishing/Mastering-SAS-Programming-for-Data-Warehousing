data brfss_c;
	set brfss_b;
	SLEPTIM2 = SLEPTIM1;
	if SLEPTIM2 gt 24
		then SLEPTIM2 = .;
run;
PROC FREQ data = brfss_c;
tables SLEPTIM1 * SLEPTIM2 /list missing;
run;
PROC UNIVARIATE data = brfss_c plot;
var SLEPTIM2;
run;