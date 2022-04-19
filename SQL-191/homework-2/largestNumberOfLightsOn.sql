-- write a procedure that finds the longest period of time that lights are on 
-- for a given light sensor; the procedure will return the start time and the 
-- duration of that max time using OUT variables

create or replace procedure largestNumberOfLightsOn() 
BEGIN 
	SELECT *,
		COUNT(*) AS consecutiveHours, 
		MAX( extract( hour from datetime)) AS maxHours 
	FROM (
		  SELECT *, 
			ROW_NUMBER() OVER (ORDER BY datetime ) 
		  FROM light_history 
		  WHERE on_flag = 1
		) lh 
	GROUP BY light_id 
	ORDER BY 1 ASC, 2 ASC; 
END
//

-- call largestNumberOfLightsOn();