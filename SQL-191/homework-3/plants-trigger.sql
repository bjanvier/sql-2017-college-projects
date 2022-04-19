-- Create one trigger to update the plants.quantity column after an order is made; 
-- if there is not enough to satisfy the order, raise an error (which rolls the transaction back)

-- update plants set quantity = 401 where orders.num_ordered = 1;
create or replace trigger ordersMade
	after update on jzagabe1.orders for each row 
		BEGIN
			if COUNT(new.num_ordered) >= 1
				then
  					insert into plants(quantity) values(new.quantity);
				ELSE
   					SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough to satisfy the order';
			end if;
		end;
//

INSERT INTO `jzagabe1`.`orders` 
		(`id`, `order_date`, `plant_id`, `num_ordered`)
 VALUES (NULL, NULL, NULL, '2');



 CREATE TRIGGER `UpdateStats` BEFORE UPDATE ON `Greatests` FOR EACH ROW update Greatests set major_trophies = 44 where jersey_number = 23;