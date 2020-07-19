data conditional;
	set brfss_c;
	array comorbid_native_list CM1-CM11;
	array comorbid_grp_list GR1-GR11;
	
	do i=1 to dim(comorbid_native_list);
		if i <11 then do;
			comorbid_grp_list{i} = comorbid_native_list{i};
		if comorbid_native_list{i} gt 2 then comorbid_grp_list{i} = 9;
		end;
		else do;
		comorbid_grp_list{i} = comorbid_native_list{i};
		if comorbid_native_list{i} gt 4 then comorbid_grp_list{i} = 9; 
		end;
	end;
run;
PROC FREQ data=conditional;
	tables CM4*GR4/list missing;
	tables CM11*GR11/list missing;
run;