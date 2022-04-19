-- Create one trigger to update the plants.quantity column after an order is made; 
-- if there is not enough to satisfy the order, raise an error (which rolls the transaction back)

CREATE TRIGGER updateQtyAfterOrderInsert
    AFTER INSERT ON orders FOR EACH ROW 
     BEGIN declare plantQty int; 
        select quanity into plantQty from plants where id = new.plant_id; 
        -- IF the existing quantity is higher than the new existing one 
        -- Then, extract new record from the current quantity 
        if (plantQty > new.num_ordered) 
            THEN update plants set quantity = (quantity - new.num_ordered) where id=new.plant_id;
        else 
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is not enough to satisfy the order,'; 
        end if; 
END