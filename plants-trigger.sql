-- Create one trigger to update the plants.quantity column after an order is made; 
-- if there is not enough to satisfy the order, raise an error (which rolls the transaction back)

-- update plants set quantity = 401 where orders.num_ordered = 1;
create or replace trigger ordersMade
	after update on jzagabe1.orders for each row 
		BEGIN
			if COUNT(new.num_ordered) = 1
				then
  					insert into plants(id) values(new.id);
				ELSE
   					SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough to satisfy the order';
			end if;
		end;
//


Hi, sir!

For the following quote, I DON'T KNOW if with a SIGNAL SQLSTATE is enough tp roll the transactions back.

'if there is not enough to satisfy the order, raise an error (which rolls the transaction back)'. 

I also had a  question about window function with partition by in mariaDB. I was trying to see past the source from here in database from command in mariaDB, BUT continually unsuccessful results.http://sqlfiddle.com/#!15/6439d7/84

