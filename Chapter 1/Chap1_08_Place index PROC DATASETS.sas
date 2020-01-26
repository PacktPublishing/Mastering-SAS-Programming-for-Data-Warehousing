PROC DATASETS nolist;
	modify Chap_1_1_Infile;
		index create _STATE;
run;