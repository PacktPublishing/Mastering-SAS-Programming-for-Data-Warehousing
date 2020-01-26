PROC DATASETS nolist;
	modify Chap_1_1_Infile;
		index create STATE_SEX = (_STATE SEX1);
run;