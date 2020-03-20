libname sasfile "/folders/myfolders/X"; 
libname xptfile xport "/folders/myfolders/X/Chap2_1_XPT.xpt";
proc copy in=xptfile out=sasfile;
select temp;
run;