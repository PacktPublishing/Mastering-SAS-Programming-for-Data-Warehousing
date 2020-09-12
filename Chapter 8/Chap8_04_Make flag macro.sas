data brfss_b;
	set brfss_a;
	asthma_flag = 0;
	if ASTHMA3 = 1
		then asthma_flag = 1;
PROC FREQ data=brfss_b;
	tables asthma_flag * ASTHMA3 /list missing;
run;
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
%make_flag(native_var=ASTHMA3, flag_var=asthma_flag, data_in=brfss_a, data_out=brfss_b);
%make_flag(native_var=CVDINFR4, flag_var=HA_flag, data_in=brfss_b, data_out=brfss_c);
%make_flag(native_var=CVDCRHD4, flag_var=HDis_flag, data_in=brfss_c, data_out=brfss_d)