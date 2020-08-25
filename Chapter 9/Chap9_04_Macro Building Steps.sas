LIBNAME X "/folders/myfolders/X";
data brfss_a;
	set X.Chap9_2;
RUN;
PROC CONTENTS data=brfss_a VARNUM;
RUN;
data brfss_b;
	set brfss_a;
	asthma_flag = 0;
	if ASTHMA3 = 1
		then asthma_flag = 1;
PROC FREQ data=brfss_b;
	tables asthma_flag * ASTHMA3 /list missing;
RUN;
%MACRO make_flag1;
data brfss_b;
	set brfss_a;
	asthma_flag = 0;
	if ASTHMA3 = 1
		then asthma_flag = 1;
PROC FREQ data=brfss_b;
	tables asthma_flag * ASTHMA3/list missing;
RUN;
%MEND make_flag1;
%make_flag1;
%MACRO make_flag2(native_var=);
data brfss_b;
	set brfss_a;
	asthma_flag = 0;
	if &native_var = 1
		then asthma_flag = 1;
PROC FREQ data=brfss_b;
	tables asthma_flag * &native_var /list missing;
run;
%MEND make_flag2;
%make_flag3(native_var=ASTHMA3);
%MACRO make_flag3(native_var=, flag_var=);
data brfss_b;
	set brfss_a;
	&flag_var = 0;
	if &native_var = 1
		then &flag_var = 1;
PROC FREQ data=brfss_b;
	tables &flag_var * &native_var /list missing;
RUN;
%MEND make_flag3;
%make_flag4(native_var=ASTHMA3, flag_var=asthma_flag);
%MACRO make_flag4(native_var=, flag_var=, data_in=);
data brfss_b;
	set &data_in;
	&flag_var = 0;
	if &native_var = 1
		then &flag_var = 1;
PROC FREQ data=brfss_b;
	tables &flag_var * &native_var /list missing;
RUN;
%MEND make_flag4;
%make_flag4(native_var=ASTHMA3, flag_var=asthma_flag, data_in=brfss_a);
%MACRO make_flag5(native_var=, flag_var=, data_in=, data_out=);
data &data_out;
	set &data_in;
	&flag_var = 0;
	if &native_var = 1
		then &flag_var = 1;
PROC FREQ data=&data_out;
	tables &flag_var * &native_var /list missing;
RUN;
%MEND make_flag5;
%make_flag5(native_var=ASTHMA3, flag_var=asthma_flag, data_in=brfss_a, data_out=brfss_b);
%make_flag5(native_var=CVDINFR4, flag_var=HA_flag, data_in=brfss_b, data_out=brfss_c);
%make_flag5(native_var=CVDCRHD4, flag_var=HDis_flag, data_in=brfss_c, data_out=brfss_d)

