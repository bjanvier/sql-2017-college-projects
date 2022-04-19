-- What are the maximum and minimum values for the datetime 
-- column in the lights_history table, and what is the distinct 
-- number of days? (again, there are many ways to arrive at that answer)
SELECT COUNT( DISTINCT date_replaced ) AS "Number of Days" 
FROM lights ;


SELECT 
	MAX(datetime) as "Maximum values of datetime", 
	MIN(datetime) as "Minimum values of datetime" 
FROM 
	light_history;