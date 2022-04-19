create or replace table light_on_histograms as
   select hour(datetime) hour, count(*)
	   from light_history where on_flag = 1
       group by hour(datetime);

