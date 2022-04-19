create or replace table statistics as (
    select COUNT(*),
            min(light_id),
            max(light_id),
            avg(light_id) 
    from lights
)
