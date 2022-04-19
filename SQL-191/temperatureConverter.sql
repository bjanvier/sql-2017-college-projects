-- create one or two functions to convert between fahrenheit and celsius
CREATE or replace FUNCTION temperatureConverter(cel float, fah float)
	RETURNS int DETERMINISTIC
		BEGIN
        	if (cel) then
                set fah = ((cel/9)+32); 
         		return fah;
        	end if;
        
        	if (fah) then
              set cel = (fah-32) * 9;
               return cel;
        	end if;
		END;
 !!
 select temperatureConverter(0,32)
 