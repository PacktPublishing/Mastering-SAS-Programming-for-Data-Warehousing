data Chap4_1_RecodeMissing2;
	set Chap4_1_Renamed;
	array marvars_list(3) mar1-mar3;
	do i = 1 to 3;
		if marvars_list[i] = . then marvars_list[i] = 99;
	end;
	drop i;
run;
