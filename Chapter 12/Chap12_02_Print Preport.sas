PROC SORT DATA = X.Chap12_1;
	BY DESCENDING Staffed_Beds;
RUN;
DATA _NULL_;
	SET X.Chap12_1;
	IF _N_ = 1 THEN
	CALL SYMPUT("biggest", State_Desc);
	ELSE STOP;
RUN;
PROC PRINT DATA = X.Chap12_1 NOOBS;
	WHERE State_Desc = "&biggest";
	TITLE "State &biggest has the most hospital beds.";
RUN;