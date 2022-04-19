-- create a function that returns 1 if a given date is a
--  weekday, and 0 if it is a weekend (SQL Reference date and time functions)
use messages_db;
DELIMITER;
    CREATE or replace FUNCTION weekDays(d date)
		RETURNS INT DETERMINISTIC
		BEGIN

		if weekday(d) <= 7 and weekday(d) >= 5 THEN
			return 0;
		ELSE
			return 1;
	end if;
END
;
    
select weekDays('2019-03-03'); -- sunrday ;


