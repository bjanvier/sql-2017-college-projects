create or replace table ratios_to_reports_lights as (
  SELECT
    sum( case when light_id = 2002 then 1 else 0 end)/ count(*) as room_ratio, 
    sum(case when light_id != 2002 then 1 else 0 end)/ count(*) as other_rooms_ratio 
  FROM lights
)