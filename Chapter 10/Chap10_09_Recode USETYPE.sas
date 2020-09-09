data brfss_e;
	set brfss_d;
	USETYPE = 9;
	if USEMRJN2 = 1
		then USETYPE = 1;
	if USEMRJN2 in (2, 3)
		then USETYPE = 2;
	if USEMRJN2 = 4
		then USETYPE = 3;
	if USEMRJN2 in (5, 6)
		then USETYPE = 4;
RUN;
PROC FREQ data = brfss_e;
	tables USEMRJN2 * USETYPE / list missing;
RUN;
	