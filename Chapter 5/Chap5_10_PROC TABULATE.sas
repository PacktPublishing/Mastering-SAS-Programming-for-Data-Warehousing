data X.proc_tab_data;
	set X.chap5_1;
	if SEX1 = 1 or SEX1 = 2;
	label _AGE80 = "Age (years)";
	label SEX1 = "Sex";
	label _STATE = "State";
run;
proc format;
	value sex_f
	1 = "Male"
	2 = "Female"
	;
	value state_f
	12 = "Florida"
	25 = "Massachusetts"
	27 = "Minnesota"
	;
run;
proc tabulate data=X.proc_tab_data;
	var _AGE80;
	table 	ALL, 
		_AGE80;
run;
proc tabulate data=X.proc_tab_data;
	var		_AGE80;
	table 	ALL,
			_AGE80 *(ALL)*(n colpctn*f=4.1 mean std);
run;
proc tabulate data=X.proc_tab_data;
	format 	SEX1 sex_f.;
	class	SEX1;
	var		_AGE80;
	table 	ALL,
			_AGE80 *(ALL SEX1)*(n colpctn*f=4.1 mean std);
run;
proc tabulate data=X.proc_tab_data;
	format 	SEX1 sex_f.
			_STATE state_f.;
	class	SEX1
			_STATE;
	var		_AGE80;
	table 	ALL _STATE,
			_AGE80 *(ALL SEX1)*(n colpctn*f=4.1 mean std);
run;


