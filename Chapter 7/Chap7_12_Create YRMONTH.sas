PROC FREQ data = brfss_d;
	tables FMONTH /list missing;
run;
data longitudinal;
	set brfss_d;
	FILEYR = 2018;
	YRMONTH = FILEYR || FMONTH;
run;
PROC FREQ data = longitudinal;
	tables FMONTH * YRMONTH /list missing;
run;