-- create or replace procedure jzagabe1.getenrateSensorsWhenLightsOn()
    BEGIN
select rn2, count(*), min(datetime), max(datetime)
from
  (select *, rn - row_number() over (order by rn) rn2
   from
     (SELECT *, row_number() over (order by datetime) rn FROM light_history) sub1
   where on_flag = 1) groupings
group by rn2
order by 2 desc limit 1;
 
 
END
//



SELECT *, floor(rand() * (48+1)-1)
FROM iot.light_history where hour(datetime) <= 48 and hour(datetime) >=0
GROUP BY HOUR(datetime) limit 48




SELECT *, MAX(hour(datetime))*2 AS max_hours FROM `light_history` WHERE 1 limit 48

-- SELECT *,
 --  MIN(hour(datetime)) AS min_hours,
  -- MAX(hour(datetime))*2 AS max_hours
-- FROM iot.light_history