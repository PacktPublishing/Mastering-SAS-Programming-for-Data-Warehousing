data disease_index;
	set brfss_c;
	CVD_index = sum(FL2, FL3);
	CA_index = sum(FL5, FL6);
RUN;
PROC FREQ data=disease_index;
	tables CVD_index;
	tables CA_index;
RUN;
