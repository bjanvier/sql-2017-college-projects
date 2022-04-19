CREATE OR REPLACE TRIGGER updatePlants 
AFTER 
	UPDATE ON plants FOR EACH ROW insert into plants_inventory 
values(NULL, new.plant, new.cost, new.quantity);
//