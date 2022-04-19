
-- 1 . create histograms of how often lights are on, which rooms use the most electricity; you want to use a statement like "create table light_on_histograms as (...)" where your select query goes inside the parentheses.
-- 2 . create a table of statistics; again, another "create table statistics as (...)". But this time, you want to collect information about the size of the table and the data distribution. Use the following aggregate functions (as demonstrated in class on April 25th): AVG(), MAX(), MIN(), COUNT(), SUM(). If you want to be extra fancy, you can use STDDEV_POP()/AVG() :)
-- 3 . generate a ratio to report of lights for a given room, compare to other lights in that room; if you are getting stuck on this, review the notes from April 25th.



create or replace table light_on_histograms as
   select hour(datetime) hour, count(*)
	   from light_history where on_flag = 1
       group by hour(datetime);

-- Feedback for Homework 5
-- Dropbox Feedback
-- Janvier,

-- #1

-- Your final submission for #1 has a much better query for gathering a histogram on lights that are on; it looks very familiar, so I suspect you got it from one of the notes from class. :) However, you forgot to do a histogram on the electricity used by each room. That is also a part of #1.

-- #2

-- Your query for the second task is adequate.

-- #3

-- I don't think you quite understood the concept of what we were doing with ratio to report; I would suggest you review the video from April 25th, and also the query in the notes:

