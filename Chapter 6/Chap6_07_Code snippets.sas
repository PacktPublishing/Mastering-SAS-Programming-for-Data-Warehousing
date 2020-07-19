data Y;
	set X;
	array comorbid_native_list ASTHMA3 CVDINFR4 CVDCRHD4 CVDSTRK3 CHCSCNCR CHCOCNCR 
							CHCCOPD1 HAVARTH3 ADDEPEV2 CHCKDNY1 DIABETE3;
	array comorbid_flag_list ASTHMA3_f CVDINFR4_f CVDCRHD4_f CVDSTRK3_f CHCSCNCR_f CHCOCNCR_f 
							CHCCOPD1_f HAVARTH3_f ADDEPEV2_f CHCKDNY1_f DIABETE3_f;
data Y;
	set X;
	array comorbid_native_list CM1-CM11;
	array comorbid_flag_list FL1-FL11;
