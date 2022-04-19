-- select and retrieve all the data from PLAYER's table to add them to RETIREES via `id_player`
-- as it's a common column in both tables
--OUTPUT:Zinedine Zidane, Shabani Nonda, Koby Brant, and Michael Jordan with their infos
select 
	* 
from 
	PLAYER 
	inner join RETIREES using (id_player)


--The use of 'on' to select and display the players having the id_player in PLAYER's table that are identical to id_retiree in `RETIREES` table
-- In this case, it'll output: Cristiano Ronaldo, Lionel Messi, Kylian Mbappé, and Zinedine Zidane
select 
	* 
from 
	PLAYER 
	inner join RETIREES on PLAYER.id_player = RETIREES.id_retiree


--this to return only the below columns from PLAYER's table
select 
	Full_name,
    Age,
    Games,
    Goals,
    Club_trophies
from 
	PLAYER 
	inner join RETIREES on PLAYER.id_player = RETIREES.id_retiree