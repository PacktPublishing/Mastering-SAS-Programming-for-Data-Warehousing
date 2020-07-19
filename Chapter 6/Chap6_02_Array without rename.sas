data example;
	set brfss_a;
	array comorbid_native_list ASTHMA3 CVDINFR4 CVDCRHD4 CVDSTRK3 CHCSCNCR CHCOCNCR 
							CHCCOPD1 HAVARTH3 ADDEPEV2 CHCKDNY1 DIABETE3;
	array comorbid_flag_list ASTHMA3_f CVDINFR4_f CVDCRHD4_f CVDSTRK3_f CHCSCNCR_f CHCOCNCR_f 
							CHCCOPD1_f HAVARTH3_f ADDEPEV2_f CHCKDNY1_f DIABETE3_f;
	do i=1 to dim(comorbid_native_list);
		if comorbid_native_list{i} = 1 then comorbid_flag_list{i} = 1;
			else comorbid_flag_list{i} = 0;
	end;
run;