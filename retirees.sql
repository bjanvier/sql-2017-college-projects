-- This's the new table I created
-- I was wondering maybe I could have inserted new rows in `SPORT` table, 
-- but I'm not really sure what those new rows will be about
CREATE TABLE RETIREES
(
  id_retiree VARCHAR(10) NOT NULL,
  id_player VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_retiree)
);