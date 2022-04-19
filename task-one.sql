-- One query will use a natural join
-- select and retrieve all the full name data from PLAYER's table to join them to RETIREES
-- as it's a common column in both tables
--OUTPUT:Zinedine Zidane, Shabani Nonda, Koby Bryant, and Michael Jordan
SELECT 
	Full_name 
FROM 
	PLAYER NATURAL 
	JOIN RETIREES;





