data work.facilities;
	set other.facilities;
RUN;
PROC SQL;
	CREATE TABLE work.facilities as
		SELECT * FROM other.facilities;
QUIT;
