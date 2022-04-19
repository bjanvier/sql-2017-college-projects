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


-- Charles


-- The best part of this class was interactive training the instructor has been applying for his classes! 
-- code reviews to say the least! This really makes and helps students to become competent. The instructor 
-- spent time explaining to whoever wanted to. Moreover, he will even accept to make appointments so if some 
-- students have more questions about the class materials they can ask them. He was honestly so friendly, 
-- natural and helpful. The best part, he can't give a student partial points for undone homework.
-- Either the student understands and completes completely the tasks, or he/she will get a big zero. I think 
-- he deserves some raise! The class was a bit challenging, but we made it because he forced us to work as harder
--  as we could. His weakness may be when he took longer to grade the last assignment at the end of the semester, 
-- but he always apologizes.