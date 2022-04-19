-- SELECT 
-- 	* 
-- FROM 
-- 	PLAYER 
-- WHERE 
-- 	Full_name = 'Cristiano Ronaldo' 
-- 	AND Age <= 33 
-- 	OR Full_name = 'Lionel Messi' 
-- 	AND Goals >= '560';

-- SELECT 
-- 	* 
-- FROM 
-- 	PLAYER 
-- WHERE 
-- 	Age BETWEEN 30 
-- 	AND 40;



-- SELECT 
-- 	COUNT(Goals), 
-- 	 Full_name
-- FROM 
-- 	PLAYER 
-- GROUP BY 
-- 	Full_name 
-- HAVING 
-- 	COUNT(*) <= 600 
-- ORDER BY 
-- 	COUNT(Full_name) ASC;



-- select 
-- 	id_player,
--     Full_name,
--     Age,
--     Nationality,
--     Games,
--     International_Trophies,
--     Club_trophies
-- from 
-- 	PLAYER;

-- Ordered by player full name with the query containing `r` in their nationalities
-- in my table it will display Cristino Ronaldo, Kylian Mbappé, and Zinedine Zidane (Alphabetically)
select 
	Full_name, 
	Age 
from 
	PLAYER 
where 
	Nationality IN ('French', 'Portuguese') 
	and Nationality like '%r%'
order by 
	Full_name;
    
	-- functions:
select 
	upper(Nationality) 
from 
	PLAYER 

select 
	lower(Full_name) 
from 
	PLAYER 

-- last character of  each player nationality
select 
	Full_name, 
	 substring(Nationality, -1)
from 
	PLAYER;

-- max and min of three different fields
select 
	max(Goals), 
	min(Goals), 
	max(Nationality), 
	min(Nationality),
    max(Games), 
	min(Games)
    
From 
	PLAYER;