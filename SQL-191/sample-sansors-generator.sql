-- write a procedure that generates 48 random samples for all your sensors, 
-- once per hour for 2 full days
create or replace procedure jzagabe1.generateSensors()
BEGIN

Declare full2Days INT;
set full2Days = 48;

if full2Days < 0 or full2Days > 48 then
  select 'ERROR: choose between 0 and 48';
ELSE
  for i in 1 .. full2Days DO
    insert into jzagabe1.thermostat_history ( 
           select CURRENT_TIMESTAMP + INTERVAL i hour, therm_id, 
           floor(rand() * (48-1)+1) therm_temperature, 
           floor(rand() * (48-1)+1) outside_temperature, 
           (rand() * (7-1)+1) watts_used
             from thermostats
              );
    insert into jzagabe1.light_history ( 
           select CURRENT_TIMESTAMP + INTERVAL i hour, light_id, 
             round(rand()) on_flag from lights
              );
  end for;
end if;

END;
//
-- http://onyx2.parkland.edu/csc/phpmyadmin/index.php?
