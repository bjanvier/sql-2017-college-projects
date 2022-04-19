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