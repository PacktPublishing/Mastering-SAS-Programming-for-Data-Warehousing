PROC SORT data=X.chap7_1;
	by FMONTH;
PROC FREQ data=X.chap7_1;
tables _STATE*VETERAN3;
	by FMONTH;
RUN;