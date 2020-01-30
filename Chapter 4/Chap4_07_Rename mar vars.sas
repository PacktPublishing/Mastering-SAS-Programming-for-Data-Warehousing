data Chap4_1_Renamed;
	set X.Chap4_1 (RENAME=(
		MARIJAN1 = mar1
		USEMRJN2 = mar2
		RSNMRJN1 = mar3));
run;
proc contents data = Chap4_1_Renamed VARNUM;
run;