CREATE OR REPLACE TRIGGER deletePlants 
AFTER 
	DELETE ON plants FOR EACH ROW insert into plants_inventory 
values(NULL, new.plant, new.cost, new.quantity);
//