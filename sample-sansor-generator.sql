-- write a procedure that
--  generates 48 random samples
--  for all your sensors,
--  once per hour for 2 full days 
 
create or replace procedure jzagabe1.generateSensors(randMaker int, full2Days int, oneHour int )
	BEGIN
   
    	set randMaker = floor(rand() * (48+1)-1);
        set oneHour =  EXTRACT(hour from '01:00:00');
        full2Days = oneHour * 48
            
        for i in 1 .. full2Days
            if rand() <= full2Days and rand() >= 0 then
		 	    DO
         		    insert into jzagabe1.thermostat_history ( 
				        select randMaker therm_id, 
                        CURRENT_DATE - interval floor( rand()+ ((365 ))) day datetime from thermostat_history
	                ); 
  
               		insert into jzagabe1.lights ( 
		    		    select randMaker light_id, 
                           CURRENT_DATE - interval floor( rand()* ((365 * 48)-(1*365)+(1*365))) day date_replaced 
                      from lights
	               ); 
    
               		insert into jzagabe1.light_history ( 
		    		    select randMaker datetime, 
                          randMaker light_id, 
                          randMaker on_flag, 
                          CURRENT_DATE - interval floor( rand()* ((365 * 48)-(1*365)+(1*365))) day date_replaced 
                      from light_history
	               ); 
             end if;
        end for;
END;

\\


 SELECT  *
FROM light_history
GROUP BY HOUR(datetime)



select *, (DATE_ADD(CURRENT_DATE, INTERVAL 1 day))
from
  (SELECT *, row_number() over (order by datetime) rn FROM light_history) lhist
where hour(datetime)=1;






create or replace procedure jzagabe1.generateSensors(randMaker int, full2Days int, oneHour int )
BEGIN

	set oneHour =  EXTRACT(hour from '01:00:00');
	set full2Days = oneHour * 48;

if full2Days < 0 or full2Days > 48 then
  select 'ERROR: choose between 0 and 48';
ELSE
  for i in 1 .. full2Days DO
    insert into jzagabe1.thermostat_history ( 
           select datetime, 
	            datetime, 
	            floor(rand() * (48-1)+1) therm_id, 
	            floor(rand() * (48-1)+1) therm_temperature, 
	            floor(rand() * (48-1)+1) outside_temperature, 
	            watts_used  from thermostat_history
              );
  end for;
end if;

END;
//