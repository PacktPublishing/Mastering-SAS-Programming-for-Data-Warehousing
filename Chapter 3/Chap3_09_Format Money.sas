DATA Format_Money;
	INFILE CARDS;
	INPUT COST;
	CARDS;
123.45
678.90
;
run;

data Format_Money;
	set Format_Money;
	format COST DOLLAR7.2;
run;