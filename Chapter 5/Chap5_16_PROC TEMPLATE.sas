PROC TEMPLATE;
 	define statgraph mygraphs.scatter;
 	begingraph;
 		layout overlay;
 		scatterplot x=_AGE80 y=_BMI2 / GROUP = SEX1;
 		endlayout;
 	endgraph;
 	end;
run; 
PROC SGRENDER data=X.proc_sgscatter_data
			template="mygraphs.scatter";
run;