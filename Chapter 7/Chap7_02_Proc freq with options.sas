PROC FREQ data=X.chap7_1;
tables _STATE*VETERAN3 /nocol norow nopercent;
RUN;
PROC FREQ data=X.chap7_1;
tables _STATE*VETERAN3 /list missing;
RUN;