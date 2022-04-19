create 
or replace FUNCTION celciusToFahrenheit (
	celcius INT, fahrenheit INT, celTofah int
) returns int return celTofah = 2;

DECLARE 
   c number(2); 
BEGIN 
   c := totalCustomers(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
END;







-- At least it's printing something, right

create 
or replace FUNCTION celciusToFahrenheit (
	celcius INT, fahrenheit INT, celTofah char
) returns int return celTofah = "";


SELECT jzagabe1.celciusToFahrenheit(therm_id, watts, scale) FROM iot.thermostats

-- Gooood deed, ohh boy

create 
or replace FUNCTION celciusToFahrenheit (
	celcius INT, fahrenheit INT, celTofah char
) returns int return fahrenheit = 33; 
SELECT 
	jzagabe1.celciusToFahrenheit(therm_id, watts, scale) 
FROM 
	iot.thermostats; 

SELECT 
	COUNT(*), 
	jzagabe1.celciusToFahrenheit(therm_id, watts, scale) 
FROM 
	iot.`thermostats`




    create 
or replace FUNCTION celciusToFahrenheit (
	celcius INT, fahrenheit INT, celTofah char
) returns int return fahrenheit = 33; 
SELECT 
	jzagabe1.celciusToFahrenheit(therm_id, watts, scale) 
FROM 
	iot.thermostats; 

SELECT 
	COUNT(*), 
	jzagabe1.celciusToFahrenheit(therm_id, watts, scale) 
FROM 
	iot.`thermostats`;
    
    
delimiter [[
	CREATE or replace FUNCTION `farToCel`(`f` FLOAT)
		RETURNS FLOAT DETERMINISTIC
	begin
		declare var1 float;
		set var1=(f-32);
		return var1/1.8;
	end
[[

 





 CREATE or replace FUNCTION celciusToFahren(cToFinDegree int)
	RETURNS int DETERMINISTIC
	BEGIN
		declare var1 int;
		-- set var1=(cToFinDegree-32);
       set var1 := (cToFinDegree * 9/5) + 32;
		return var1;
	end;


 -- delimiter !!
CREATE or replace FUNCTION celciusToFahren(cToFinDegree int,str char(1))
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
 
 
 CREATE or replace FUNCTION FahrenToCelcius(FahToCel int,s char(1))
	RETURNS int DETERMINISTIC
	BEGIN
		declare var1 int;
        if upper(s) = 'F'
        	then
       			set var1 = (FahToCel - 32) * 5/9;
        else
        	return false;
        end if;
		return var1;
	end;







create or replace FUNCTION cTof(thermId int, watts int, scale char(1)) returns int return thermId;


SELECT therm_id,watts, jzagabe1.cTof(therm_id, watts, scale) FROM iot.`thermostats`;

    
	delimiter //

CREATE or replace FUNCTION `cTof`(`f` FLOAT)
RETURNS FLOAT DETERMINISTIC
BEGIN
declare var1 float;
set var1=(f-32);
return var1/1.8;
end





create or replace FUNCTION cTof(thermId int, watts int, scale char(1)) returns int return thermId+1;


SELECT *, therm_id,watts, scale, COUNT(*), jzagabe1.cTof(therm_id, watts, scale) FROM iot.`thermostats`;

    
	delimiter //

CREATE or replace FUNCTION `cTof`(`f` FLOAT)
RETURNS FLOAT DETERMINISTIC
BEGIN
declare var1 float;
set var1=(f-32);
return var1/1.8;
end





create or replace FUNCTION randomNumbers(roomId int) returns int return thermId+1;


SELECT room_id, jzagabe1.cTof(room_id) FROM iot.`lights`;

    
	delimiter //

CREATE or replace FUNCTION `randomNumbers`(`f` FLOAT)
RETURNS FLOAT DETERMINISTIC
BEGIN
declare var1 float;
set var1=(f-32);
return var1/1.8;
end



-- 


-- create or replace FUNCTION randomNumbers(roomId int) returns int return roomId+1;


-- SELECT room_id, jzagabe1.randomNumbers(room_id) FROM `lights`;

    -- random data between the min(3) and max(20);
CREATE or replace PROCEDURE randomNumbers()
BEGIN
  SELECT 'Random data between 3 and 20: ', count(*) from lights;
END
//




   
CREATE or replace PROCEDURE randomNumbers()
BEGIN
  SELECT light_id+ 'Random data between 3 and 20: ' + RAND()*(max(20)-min(3))+3 from iot.lights;
END
//


