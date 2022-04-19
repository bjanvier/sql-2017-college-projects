create or replace procedure jzagabe1.getenrateSensorsWhenLightsOn()
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