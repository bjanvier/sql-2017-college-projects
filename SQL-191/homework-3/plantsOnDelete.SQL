DROP 
	TRIGGER IF EXISTS plantsOnDelete;
    CREATE DEFINER = jzagabe1 TRIGGER plantsOnDelete 
    BEFORE DELETE ON plants FOR EACH ROW 
DELETE from 
	plants 
where 
	id != NULL;