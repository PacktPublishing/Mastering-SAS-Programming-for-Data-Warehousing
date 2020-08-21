%MACRO make_flag(native_var=, flag_var=, data_in=, data_out=);
data &data_out;
	set &data_in;
	&flag_var = 0;
	if &native_var = 1
		then &flag_var = 1;
PROC FREQ data=&data_out;
	tables &flag_var * &native_var /list missing;
run;
%MEND make_flag;