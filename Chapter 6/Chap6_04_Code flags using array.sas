data brfss_c;
	set brfss_b;
	array comorbid_native_list CM1-CM11;
	array comorbid_flag_list FL1-FL11;
	
	do i=1 to dim(comorbid_native_list);
		if comorbid_native_list{i} = 1 then comorbid_flag_list{i} = 1;
			else comorbid_flag_list{i} = 0;
		end;
run;
PROC FREQ data=brfss_c;
	tables CM4*FL4 /list missing;
run;