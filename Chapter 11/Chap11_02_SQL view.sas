%LET xfer_month = 1;
%LET xfer_year = 2018;
PROC SQL;
CREATE VIEW AS WORK.recent_billing
	SELECT *
	FROM other.billing
	WHERE billing_month = &xfer_month and
	billing_year = &xfer_year;
QUIT;
PROC SQL;
CREATE TABLE AS WORK.billing_2018_01;
	SELECT *
	FROM WORK.recent_billing;
QUIT;
