LIBNAME X "/folders/myfolders/X";
RUN;
PROC FREQ data=X.chap7_1;
tables _STATE*VETERAN3;
RUN;
