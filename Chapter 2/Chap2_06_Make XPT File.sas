libname sasfile "/folders/myfolders/X"; 
libname xptfile xport "/folders/myfolders/X/Chap2_1_XPT.xpt";
data sasfile.temp;
	set X.chap2_1_sas;
run;
proc copy in=sasfile out=xptfile memtype=data;
select temp;
run;