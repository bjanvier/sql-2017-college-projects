create or replace table light_on_histograms as (
    select count(light_id) from light_history where on_flag =1
)