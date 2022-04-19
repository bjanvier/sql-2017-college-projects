SELECT 
Full_name, 
	Age,
    Nationality,
    International_Trophies,
    Games,
    Goals,
    Status,
    id_retiree
FROM 
	PLAYER a_player
	left join RETIREES a_retiree on a_player.id_player = a_retiree.id_retiree  
WHERE 
	International_Trophies < 2 and age >= 19
order by 
	Full_name;


SELECT 
	*,
	Concat(
		"Average goal/game for ", Full_name, 
		" (", Age, ") is ", 
        Goals / Games, "."
	) 
FROM 
	PLAYER a_player
	left join RETIREES a_retiree on a_player.id_player = a_retiree.id_retiree  
WHERE 
	Club_trophies > 12 and Club_trophies <= 30
GROUP BY 
	Full_name 
ORDER BY
      Games/Goals ASC
	   -- Sorting the names of each player depending on how good scorer he was/has been
	   -- in this case the one who has a good goal ratio will come first