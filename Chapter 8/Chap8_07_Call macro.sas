%INCLUDE "/folders/myfolders/Macros/make_flag.sas";
run;
%make_flag(native_var=CHCSCNCR, flag_var=skinCA_flag, data_in=brfss_d, data_out=brfss_e);