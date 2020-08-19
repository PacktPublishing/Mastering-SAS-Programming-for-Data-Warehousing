data X.vet_analytic;
	set brfss_d;
run;
PROC CONTENTS data=X.vet_analytic VARNUM;
run;