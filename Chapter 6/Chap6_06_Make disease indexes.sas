data disease_index;
	set brfss_c;
	CVD_index = FL2 + FL3;
	CA_index = FL5 + FL6;
run;
PROC FREQ data=disease_index;
	tables CVD_index;
	tables CA_index;
run;
