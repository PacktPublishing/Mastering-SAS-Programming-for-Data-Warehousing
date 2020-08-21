data X.JAN2018 X.FEB2018 X.MAR2018 X.APR2018 X.MAY2018 
	X.JUN2018 X.JUL2018 X.AUG2018 X.SEP2018 X.OCT2018 
	X.NOV2018 X.DEC2018;
	set X.Chap8_2;
	if FMONTH = 1 then output X.JAN2018;
	if FMONTH = 2 then output X.FEB2018;
	if FMONTH = 3 then output X.MAR2018;
	if FMONTH = 4 then output X.APR2018;
	if FMONTH = 5 then output X.MAY2018;
	if FMONTH = 6 then output X.JUN2018;
	if FMONTH = 7 then output X.JUL2018;	
	if FMONTH = 8 then output X.AUG2018;
	if FMONTH = 9 then output X.SEP2018;
	if FMONTH = 10 then output X.OCT2018;
	if FMONTH = 11 then output X.NOV2018;
	if FMONTH = 12 then output X.DEC2018;
run;