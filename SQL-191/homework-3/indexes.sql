-- > a. select on_flag, count(*) from light_history where datetime = '2016-01-01 00:01:00' group by on_flag;

    CREATE or REPLACE UNIQUE INDEX lig_hist_index ON light_history(datetime); 

-- Testing:
    ANALYZE select on_flag, count(*) from light_history where datetime = '2016-01-01 00:01:00' group by on_flag;





-- > b. select count(distinct first_name) from address a inner join people p on p.id = a.person_id where a.state = 'IL';

    CREATE or REPLACE UNIQUE INDEX address_indexes ON address(address, city); 

    CREATE or REPLACE UNIQUE INDEX people_indexes ON people(first_name, last_name, email); 

-- Testing: 
    ANALYZE select 
    	count(distinct first_name) 
    from 
    	address a 
    	inner join people p on p.id = a.person_id 
    where 
    	a.state = 'IL';