proc datasets lib=WORK memtype=data;
	modify Format_Money;
		attrib _all_ label=' ';
		attrib _all_ format=;
contents data=WORK.Format_Money;
run;
quit;