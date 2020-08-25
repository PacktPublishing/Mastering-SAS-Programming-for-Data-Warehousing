LIBNAME X "/folders/myfolders/X";
data brfss_a;
	rownum = _n_;
	set X.Chap9_1;
RUN;
PROC CONTENTS data=brfss_a VARNUM;
RUN;
data brfss_b;
	set brfss_a;
	agrp = 9;
	if _AGE80 le 34
		then agrp = 1;
	if _AGE80 ge 35 and _AGE80 le 64
		then agrp = 2;
	if _AGE80 ge 65
		then agrp = 3;	
	vetgrp = VETERAN3;
	if VETERAN3 in (7, 9, .)
		then vetgrp = 9;
	vetflag = 0;
	if VETERAN3 = 1
		then vetflag = 1;
	SLEPTIM2 = SLEPTIM1;
	if SLEPTIM2 gt 24
		then SLEPTIM2 = .;
RUN;