data X.vet_analytic (drop = VETERAN3 SLEPTIM1);
	set brfss_d;
run;
PROC CONTENTS data=X.vet_analytic VARNUM;
run;
