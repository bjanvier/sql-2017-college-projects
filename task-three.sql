-- Three queries shall use outer joins
select 
	Full_name, 
	Age,
    id_retiree,
    Status
from 
	PLAYER a_player
	left join RETIREES a_retiree on a_player.id_player = a_retiree.id_retiree 
order by 
	Full_name;
