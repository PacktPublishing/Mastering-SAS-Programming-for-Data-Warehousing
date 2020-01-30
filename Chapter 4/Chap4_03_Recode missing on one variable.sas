data Chap4_1_RecodeMissing;
	set X.Chap4_1;
	if MARIJAN1 = . then MARIJAN1 = 99;
run;