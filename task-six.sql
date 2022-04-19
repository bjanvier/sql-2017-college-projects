SELECT 
	* 
FROM 
	PLAYER 
WHERE 
	id_player IN (
		SELECT 
			id_player 
		FROM 
			RETIREES 
		WHERE 
			Games > 300
	);

-- Returning one query (PLAYER) from the athletes existing in both tables (RETIREES && PLAYER) who had more than 12 trophies in his club
-- before he retired
-- 
SELECT 
	Full_name, 
	age, 
	count(age) 
FROM 
	PLAYER 
WHERE 
	Goals IN (
		SELECT 
			max(Goals) 
		FROM 
			RETIREES 
		WHERE 
			age >= 40 and age < 45
	) 
GROUP BY 
	Full_name 
ORDER BY 
	count(age) DESC