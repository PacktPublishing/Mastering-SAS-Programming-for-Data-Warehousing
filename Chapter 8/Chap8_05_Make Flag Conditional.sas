%MACRO make_flag_conditional(native_var=, flag_var=, data_in=, data_out=);
OPTIONS NONOTES NOSTIMER NOSOURCE NOSYNTAXCHECK;
%IF &native_var = DIABETE3 %THEN %DO;
data &data_out;
	set &data_in;
	&flag_var = 0;
	if &native_var = 1 | &native_var = 2
		then &flag_var = 1;
PROC FREQ data=&data_out;
	tables &flag_var * &native_var /list missing;
run;
%END;
%ELSE %DO;
data &data_out;
	set &data_in;
	&flag_var = 0;
	if &native_var = 1
		then &flag_var = 1;
PROC FREQ data=&data_out;
	tables &flag_var * &native_var /list missing;
run;
%END;
%MEND make_flag_conditional;
%make_flag_conditional(native_var=CVDSTRK3, flag_var=stroke_flag, data_in=brfss_d, data_out=brfss_e);
%make_flag_conditional(native_var=DIABETE3, flag_var=diab_flag, data_in=brfss_e, data_out=brfss_f);
