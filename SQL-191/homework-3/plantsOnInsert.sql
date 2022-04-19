CREATE or replace TRIGGER `insertPlants` 
AFTER 
	INSERT ON `plants` FOR EACH ROW insert into plants 
values (NULL, new.id, new.quantity, new.cost)
    //