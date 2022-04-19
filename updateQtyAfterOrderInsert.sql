-- Create one trigger to update the plants.quantity column after an order is made; 
-- if there is not enough to satisfy the order, raise an error (which rolls the transaction back)

CREATE TRIGGER updateQtyAfterOrderInsert
    AFTER INSERT ON orders FOR EACH ROW 
     BEGIN declare plantQty int; 
        select quanity into plantQty from plants where id = new.plant_id; 
        -- IF the existing quantity is higher than the new existing one 
        -- Then, extract new record from the current quantity 
        if (plantQty > new.num_ordered) 
            THEN update plants set quantity = (quantity - new.num_ordered) where new.plant_id;
        else 
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is not enough to satisfy the order,'; 
        end if; 
END




CREATE TRIGGER deletePlants 
AFTER DELETE ON plants  FOR EACH ROW
 BEGIN
    declare plantQty int;
        select quanity into plantQty from plants where id = new.plant_id; 
 INSERT into plant_inventory(audit_date, plant_id, cost, quantity) VALUES(CURRENT_TIMESTAMP,OLD.plant_id, OLD.cost, OLD.quantity);



CREATE
    TRIGGER deletePlants BEFORE delete 
    ON plants
    FOR EACH ROW BEGIN
        select quanity into plantQty from plants where id = old.plant_id; 

        update plant_inventory 
        set quantity = (quantity + OLD.quantity)
        where plant_id = OLD.plant_id;

    END 




CREATE TRIGGER deletePlants BEFORE delete 
    ON plants
    	FOR EACH ROW 
    		BEGIN
        	update plant_inventory 
	        set quantity = (quantity + OLD.quantity)
    	    where plant_id = OLD.plant_id;
    END 