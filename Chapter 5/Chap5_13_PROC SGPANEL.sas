PROC SGPANEL DATA = X.proc_tab_data;
	PANELBY SEX1;
	HISTOGRAM _AGE80;
	Title "Age Distribution by Sex";
RUN;