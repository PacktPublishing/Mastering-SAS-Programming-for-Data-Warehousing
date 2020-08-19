data brfss_d;
	set brfss_c;
	vetgrp = VETERAN3;
	if VETERAN3 in (7, 9, .)
		then vetgrp = 9;
	vetflag = 0;
	if VETERAN3 = 1
		then vetflag = 1;
run;
PROC FREQ data = brfss_d;
tables vetgrp * VETERAN3 /list missing;
tables vetflag * VETERAN3 /list missing;
run;