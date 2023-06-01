/*  Creating your own library */
libname libref '/home/ektasg0';

FILENAME REFFILE '/home/ektasg0/Demo Dataset.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=libref.demo_dataset;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=libref.demo_dataset; RUN;

/* creating the data set in work lib which is temporary lib */ 
/* It will disappear if we log off from SAS and come back. */

Data test1 ;
input order_id cust_name$ total_val;
datalines;
123 ALLEN 5000
456 SMITH 4000
789 JOHN 3000
;

/*Prints a listing of the values*/
PROC PRINT DATA = test1;
title ORDER DATASET OF XYZ STORE;
run;

/* creating the data set in your own permanent lib */
Data LIBREF.test123 ;
input order_id cust_name$ total_val;
datalines;
123 ALLEN 5000
456 SMITH 4000
789 JOHN 3000
;

PROC PRINT DATA = test123;
title ORDER DATASET OF XYZ STORE;
run;

/*Describes the structure of the data set rather than the data values*/
PROC CONTENTS DATA=libref.test123; RUN;


/*COMBINING DATASETS  */
/*SET statement to concatenate two datasets having same variables*/
Data concatenateset;
set libref.righttab libref.lefttab;
run;

/*SET statement to concatenate datasets in which one is having more variable than other*/
Data orddetails;
input order_id cust_name$ total_val;
datalines;
123 ALLEN 5000
456 SMITH 4000
789 JOHN 3000
;
RUN; 

Data custdetails;
Input order_id cust_name$;
DATALINES; 
234 Andy 
345 Rusell  
567 John    
; 
RUN;

Data combineset;
SET orddetails custdetails;
run;

/* PROC APPEND PROCEDURE */
PROC APPEND BASE=orddetails DATA=custdetails FORCE;
run;

proc print data=orddetails;
run;

/*INTERLEAVING  by sorting of data first*/
proc sort data = libref.fashion;
by custID;
run;

proc sort data = libref.electric;
by custID;
run;

data interleavedata;
set libref.fashion libref.electric;
by custID;
run;

/*  One-to-One Reading*/
Data Customer;
INPUT orderid sales product$;
Datalines;
1 5000 Camera
2 6000 TV
3 4000 Fridge
4 8000 Laptop
5 7000 Desktop
;
RUN;

Data Sales;
Input orderid customername$ pincode;
Datalines;
1 Mike 560035
2 Rusell 560045
3 Adam 560078
4 Gary 560075
5 Steve 560076
6 Craig 560035
;
RUN; 

Data onetoonereadset;
SET customer;
SET SALES;
RUN;

/*Now lets change the value of orderid variables for one dataset.In this case the value of 
orderid will be overridden with that of the second or last dataset.*/

Data Sales;
Input orderid customername$ pincode;
Datalines;
1 Mike 560035
2 Rusell 560045
3 Adam 560078
6 Gary 560075
7 Steve 560076
8 Craig 560035
;
RUN; 

Data onetoonereadset;
SET customer;
SET SALES;
RUN;

/*  One-to-One Merging*/
Data onetoonemergeset;
merge  sales customer;
run;

/*  One-to-One Merging reverse the dataset */
Data onetoonemergeset;
merge  customer sales;
run;

/* DATA MANIPULATION TECHNIQUES */
/* Group and delete the obs from the data by using 
if then statement and Delete keyword */
Data delete_final;
set libref.Electric;
IF balance < 10000 then delete;
run;
 
proc print data=delete_final;
run;

/* using drop statement inorder to drop the variables from the data set  */
data drop_set;
set libref.Electric;
DROP cardholder gender;
run;

proc print data=drop_set;
run;
 
/* using the keep statement - to keep variables in data set */
data keep_set;
set libref.Electric;
KEEP cardholder gender;
run;

proc print data=keep_set;
run;

/* DO END LOOP e.g:  The following program to determine the multiples of 5 up to 100:*/
Data multiply (drop=i);
multiple = 0;
Do i=1 to 20;
	multiple + 5;
	output;
end;
run;

/* MODIFY THE VARIABLE ATTRIBUTES */
/*  Rename the var by using rename statement */
 data rename_set (rename=(cardholder=card_owner gender=gender_type));
 set libref.electric;
 run;
 proc print data=rename_set;
 run;
 
/* FORMAT the variables - e.g: Change the length by using format*/
 data format_set (rename=(cardholder=card_owner gender=gender_type));
 set libref.electric;
 format sales dollar10.3;
 run;
 
/* FORMAT the variables - e.g: Change to uppercase*/
Data admindept;
Input empid name $ salary DOJ date9.;
DATALINES; 
1 Rick 623.3 02APR2001
3 Mike 611.5 21OCT2000
6 Tusar 578.6 01MAR2009  
; 
RUN; 

data format_set2;
set admindept;
format name $upcase9. ;
run;
 
/* LENGTH statement to define the length of a variable */
data sales_test; 
   length Salesperson $20;
run; 
 