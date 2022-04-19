

create or replace procedure jzagabe1.generateThermostats()
	BEGIN
		if rand() > 0.5 then
			select max(therm_id) + 1 therm_id,  
       		round (15 + (rand() * 85), 2) watts, 
       		scale from thermostats where scale ='C';
        else
			select max(therm_id) + 1 therm_id,  
       		round (3 + (rand() * (10-3+1)), 2) watts, 
       		scale from thermostats where scale ='F';
		end if;
	END;
//


create or replace procedure jzagabe1.generateThermostats()
	BEGIN
		if rand() > 0.5 then
   	   		insert into jzagabe1.thermostats ( 
						select max(therm_id) + 1 therm_id,  
       		round (3 + (rand() * (10-3+1)), 2) watts, 
       		scale from thermostats where scale ='C'
					);  
            
      else
   	   		insert into jzagabe1.thermostats( 
		select max(therm_id) + 1 therm_id,  
       		round (3 + (rand() * (10-3+1)), 2) watts, 
       		scale from thermostats where scale ='F'
				);            
		end if;

	END;
//