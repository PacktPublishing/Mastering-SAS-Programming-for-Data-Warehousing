DATA Format_Comma;
	INFILE CARDS;
	INPUT BIGNUMBER;
	CARDS;
123123
456456
;
run;

data Format_Comma;
	set Format_Comma;
	format BIGNUMBER COMMA7.0;
run;