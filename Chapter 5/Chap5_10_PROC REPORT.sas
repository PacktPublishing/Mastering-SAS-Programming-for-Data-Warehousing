data X.proc_rpt_data;
	set X.chap5_1 (OBS=10);
	if SEX1 = 1 or SEX1 = 2;
	label _AGE80 = "Age (years)";
	label SEX1 = "Sex";
	label _STATE = "State";
RUN;
PROC FORMAT;
	value sex_f
	1 = "Male"
	2 = "Female"
	;
	value state_f
	12 = "Florida"
	25 = "Massachusetts"
	27 = "Minnesota"
	;
RUN;
TITLE BRFSS Dataset;
PROC REPORT DATA=X.proc_rpt_data;
COLUMNS _STATE SEX1 _AGE80;
DEFINE _STATE / DISPLAY format = state_f. 'State' CENTER;
DEFINE SEX1 / DISPLAY format = sex_f. 'Sex' CENTER;
DEFINE _AGE80 / DISPLAY 'Age' CENTER;
RUN;
