create or replace procedure jzagabe1.generateLights (numLights INT)
BEGIN

if numLights < 3 or numLights > 30 then
  select 'ERROR: choose between 3 and 30';
ELSE
  for i in 1 .. numLights DO
    insert into jzagabe1.lights ( 
           select max(light_id) + 1 light_id, 
                  floor(1 + (rand() * 202)) room_id, 
                  round ((rand() * (30-3)+3), 2) watts, 
                  CURRENT_DATE - interval floor( rand() * (365 * 4)) day date_replaced,
                  rand() depreciation from lights
              );
  end for;
end if;

END;
//