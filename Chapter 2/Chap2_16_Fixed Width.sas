data Chap2_4_Fixed;
infile '/folders/myfolders/X/Chap2_4_Fixed.txt';
length 		CODE2 $7;
informat 	CODE2 $7.;
input		CODE2 1-7	@10;
run;