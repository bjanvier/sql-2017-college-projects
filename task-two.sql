--Three queries shall use an inner join, with a mix of USING and ON clauses
select 
    Full_name,
    Age,
    id_retiree,
    Nationality
from 
	PLAYER 
	inner join RETIREES on PLAYER.id_player = RETIREES.id_retiree;


