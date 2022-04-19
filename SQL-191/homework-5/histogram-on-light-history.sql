create or replace table light_on_histograms as
   select hour(datetime) hour, count(*) as elect_used
	   from light_history where on_flag = 1
       group by hour(datetime);
       


SELECT * FROM light_on_histograms WHERE 1 order by elect_used desc

