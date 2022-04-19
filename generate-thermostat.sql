create or replace procedure jzagabe1.generateThermostats(numThermoStats int)
BEGIN

  DECLARE l int;
  DECLARE scale char;

if numThermoStats < 3 or numThermoStats > 10 then
	select 'ERROR: choose between 3 and 10';
else
	for i in 1 .. numThermoStats Do
	   SELECT FLOOR(1 + (RAND() * 2)) into l;
    		if l = 1 then set scale = 'F';
    		else set scale = 'C';
    		end if;
    	insert into thermostats ( select max(therm_id)+1, ROUND((10 - 3 * RAND()), 2) watts , scale from thermostats);
	end for;
end if;
END;
//
-- SELECT ROUND((10 - 3 * RAND()), 2) watts from thermostats