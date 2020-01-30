data Chap4_1_RecodeMissing;
	set X.Chap4_1;
	array marvars_list(3) MARIJAN1 USEMRJN2 RSNMRJN1;
	do i = 1 to 3;
		if marvars_list[i] = . then marvars_list[i] = 99;
	end;
	drop i;
run;