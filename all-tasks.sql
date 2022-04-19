
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
	PLAYER; 

select 
	lower(Full_name) 
from 
	PLAYER ;

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









	-- last submission:

-- task 1:
SELECT 
	Full_name AS Name, 
	International_Trophies AS nationalTeamTrophies 
FROM 
	PLAYER;

-- task 5: this is not doing what I want it to do. I want to display
-- onlyy the players who have played at least 400 games in `PLAYER` table
-- I was thinking the problem was because I set everything to `varchar1,
-- so I decided to convert some rows to integers (see the last codes), but I'm still having the same trouble

SELECT 
	COUNT(Games), 
	Full_name 
FROM 
	PLAYER 
GROUP BY 
	Full_name 
HAVING 
	COUNT(Games) >= 400 
ORDER BY 
	COUNT(Games) DESC;

-- I updated four rows from varchars to integers
ALTER TABLE 
	`PLAYER` CHANGE `Age` `Age` INT(15) NOT NULL, 
	CHANGE `Games` `Games` INT(255) NOT NULL, 
	CHANGE `Goals` `Goals` INT(255) NOT NULL, 
	CHANGE `International_Trophies` `International_Trophies` INT(255) NOT NULL, 
	CHANGE `Club_trophies` `Club_trophies` INT(255) NOT NULL;

-- this works, but I am kind of still confused how HAVING COUNT(..) works!
-- In my point view, it's supposed to check/evaluate the condition
SELECT 
	Full_name
FROM 
	PLAYER 
WHERE 
	Goals >= 200 
GROUP BY 
	Full_name
HAVING 
	COUNT(id_player) >= 1  -- changing the operator (>=) here may give unexpected results
ORDER BY 
	Full_name;
-- ORDER-BY:
select 
	Full_name, 
	Age 
from 
	PLAYER 
where 
	Nationality IN ('French', 'Portuguese') 
	and Nationality like '%r%'
order by 
	Full_name, Age;
	