DATA Format_Money;
	INFILE CARDS;
	INPUT COST;
	format COST DOLLAR7.2;
	Label COST = "Cost of item";
	CARDS;
123.45
678.90
;
run;
Proc contents data=Format_Money;
run;