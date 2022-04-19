select 
	Games,
	count(*) 
from 
	PLAYER 
group by 
	Games
having 
	count(*) >= 2
ORDER BY 
	count(*) DESC