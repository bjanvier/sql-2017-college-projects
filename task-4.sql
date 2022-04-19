select 
	Full_name, 
	min(International_Trophies) 
from 
	PLAYER 
where 
	Nationality = 'French' 
	or Nationality = 'Portuguese' 
	or Full_name = 'Shabani Nonda' 
group by 
	Full_name; 
    
    
select 
	Games,
    count(*),
	sum(Age) 
from 
	PLAYER 
group by 
	Games
having 
	count(*) > 1; 

select 
	International_Trophies, 
	max(Games) 
from 
	PLAYER 
group by 
	International_Trophies; 

select 
	Club_trophies, 
	AVG(Games) 
from 
	PLAYER 
where 
	Club_trophies >= 25 
group by 
	Club_trophies;