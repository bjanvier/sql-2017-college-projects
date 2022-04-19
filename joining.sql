SELECT 
	lakers.lakers_id, Greatests.jersey_number 
FROM 
	Greatests 
	INNER JOIN lakers ON Greatests.full_name = lakers.full_name or Greatests.jersey_number = lakers.jersey_number;


    SELECT 
	Greatests.* 
FROM 
	Greatests 
	INNER JOIN lakers ON Greatests.full_name = lakers.full_name or Greatests.jersey_number = lakers.jersey_number;