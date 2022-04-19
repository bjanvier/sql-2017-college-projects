CREATE OR replace FUNCTION celciusToFahren(cToFinDegree int,str char(1))
	RETURNS int DETERMINISTIC
	BEGIN
		declare var1 int;
        if (upper(str) = 'C')
      	 then
         	set var1 = (cToFinDegree * 9/5) + 32;
        else
        	return false;
        end if;
		return var1;
	end;
 !!
 
 
--  CREATE or replace FUNCTION FahrenToCelcius(FahToCel int,s char(1))
-- 	RETURNS int DETERMINISTIC
-- 	BEGIN
-- 		declare var1 int;
--         if upper(s) = 'F'
--         	then
--        			set var1 = (FahToCel - 32) * 5/9;
--         else
--         	return false;
--         end if;
-- 		return var1;
-- 	end;




-- 	-- INSERT INTO lights(room_id) VALUES(RAND()*(20-3)+3);



-- UPDATE lights
-- SET light_id = (RAND()*(20-3)+3), room_id = (RAND()*(20-3)+3), watts = (RAND()*(20-3)+3)
-- WHERE 1; 

-- SELECT room_id FROM `lights`;



CREATE or replace FUNCTION temperatureConverter( t FLOAT,s char(1) ) 
	RETURNS FLOAT DETERMINISTIC BEGIN declare fahrAndCelc float; 
	if upper(s)= ’C’ 
    	THEN 
			set fahrAndCelc  =(1.8 * t)+ 32; 
    else 
		set fahrAndCelc  =(t - 32)/ 1.8; 
        
   end if 
        return fahrAndCelc ; 
    END; 
//



CREATE or replace FUNCTION temperatureConverter( t FLOAT,s char(1) ) 
	RETURNS FLOAT DETERMINISTIC BEGIN declare fahrAndCelc float; 
	if upper(s)= ’C’ 
    	THEN 
			set fahrAndCelc  =(1.8 * t)+ 32; 
    else 
		set fahrAndCelc  =(t - 32)/ 1.8; 
        
   end if; 
        return fahrAndCelc ; 
    END 
//
select temperatureConverter(23.0, 0)

