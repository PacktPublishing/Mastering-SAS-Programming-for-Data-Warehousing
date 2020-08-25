data brfss_b;
	set brfss_a;
	if SLEPTIM1=1 then PUT "SLEPTIM1=1 for rownum: " rownum=;
RUN;