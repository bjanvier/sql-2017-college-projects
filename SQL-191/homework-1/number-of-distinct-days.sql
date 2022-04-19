-- What are the maximum and minimum values for the datetime 
-- column in the lights_history table, and what is the distinct 
-- number of days? (again, there are many ways to arrive at that answer)

-- 10012002 days duplicated and distinct days in iot.light_history
SELECT 
	COUNT(
		DISTINCT( extract(day from datetime) )  
	) "Number of distinct Days"
FROM iot.light_history
--  or

SELECT COUNT( 
    DISTINCT extract(day from datetime) 
    ) AS "Number of distinct Days" 
FROM iot.light_history ;


SELECT 
	MAX(datetime) as "Maximum values of datetime", 
	MIN(datetime) as "Minimum values of datetime" 
FROM 
	light_history;