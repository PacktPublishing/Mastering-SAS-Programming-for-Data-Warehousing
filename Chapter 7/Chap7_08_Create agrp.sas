data brfss_a;
	set X.Chap7_1;
run;
data brfss_b;
	set brfss_a;
	agrp = 9;
	if _AGE80 le 34
		then agrp = 1;
	if _AGE80 ge 35 and _AGE80 le 64
		then agrp = 2;
	if _AGE80 ge 65
		then agrp = 3;
PROC FREQ data = brfss_b;
	tables _AGE80 * agrp / list missing;
run;