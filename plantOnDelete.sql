CREATE or REPLACE TRIGGER plantOnDelete 
	BEFORE DELETE ON plants
    	FOR EACH ROW 
        	INSERT INTO plant_inventory(audit_date, plant_id, action, quantity, cost) 
			VALUES (CURRENT_TIMESTAMP, OLD.id, "I", OLD.quantity, OLD.cost)