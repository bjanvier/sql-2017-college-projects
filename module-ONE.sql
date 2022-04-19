CREATE TABLE SPORT1
(
  id_sport VARCHAR(30) NOT NULL,
  Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_sport)
);

CREATE TABLE PLAYER1
(
  id_player VARCHAR(10) NOT NULL,
  Full_name VARCHAR(30) NOT NULL,
  Age VARCHAR(15) NOT NULL,
  Nationality VARCHAR(30) NOT NULL,
  Games VARCHAR(10) NOT NULL,
  Goals VARCHAR(15) NOT NULL,
  International_Trophies VARCHAR(15),
  Club_trophies VARCHAR(15),
  PRIMARY KEY (id_player)
);

CREATE TABLE PLAYER_SPORT1
(
  ID INT NOT NULL,
  id_player VARCHAR(10) NOT NULL,
  id_sport VARCHAR(30) NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (id_player) REFERENCES PLAYER(id_player),
  FOREIGN KEY (id_sport) REFERENCES SPORT(id_sport)
);


INSERT INTO `SPORT`(`id_sport`, `Name`) 
VALUES 
	(1, "SOCCER")

INSERT INTO `SPORT`(`id_sport`, `Name`) 
VALUES 
	(2, "BASKETBALL")

INSERT INTO `SPORT`(`id_sport`, `Name`) 
VALUES 
	(3, "TENNIS")

UPDATE 
	`SPORT` 
SET 
	`id_sport` = 2 
WHERE 
	`id_sport` = 3

UPDATE 
	`SPORT` 
SET 
	`id_sport` = 1 
WHERE 
	`id_sport` = 2

UPDATE 
	`SPORT` 
SET 
	`id_sport` = 0 
WHERE 
	`id_sport` = 1

DELETE FROM 
	`SPORT` 
WHERE 
	id_sport = 2

DELETE FROM 
	`PLAYER` 
WHERE 
	id_player = 4

DELETE FROM 
	`PLAYER` 
WHERE 
	`Full_name` = "Pepe Kepler Laveran de Lima"