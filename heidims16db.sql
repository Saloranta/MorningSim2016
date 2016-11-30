USE ms16db;

DROP TABLE IF EXISTS PLAYER;
DROP TABLE IF EXISTS INVENTORY;
DROP TABLE IF EXISTS ITEMTYPE;
DROP TABLE IF EXISTS ITEM;
DROP TABLE IF EXISTS LOCATION;
DROP TABLE IF EXISTS PASSAGE;

CREATE TABLE PLAYER (
	ID INTEGER NOT NULL,
	Money DECIMAL(6,2),
	#time
	T DECIMAL(3,2)
);

CREATE TABLE INVENTORY (
	ID INTEGER NOT NULL,
	ItemID INTEGER
);

CREATE TABLE ITEMTYPE (
	ID INTEGER NOT NULL,
	Description VARCHAR(1000)
);

CREATE TABLE ITEM (
	ID INTEGER NOT NULL,
	ItemTypeID INTEGER,
	LocationID INTEGER
);

CREATE TABLE LOCATION (
	ID INTEGER NOT NULL,
	Visited BIT,
   Description VARCHAR(1000),
   #Time affect
	TAffect DECIMAL(3,2)
);

CREATE TABLE PASSAGE (
	ID INTEGER NOT NULL,
	LocationID INTEGER,
	Description VARCHAR(1000),
	Direction INTEGER
);

INSERT INTO PLAYER VALUES (1, 0, 0);

INSERT INTO LOCATION VALUES (1, 1, "You are now home, there is a door in the corner, and bed in the opposite corner.", 0);
INSERT INTO PASSAGE VALUES (1, 1, "Door", 2);
INSERT INTO PASSAGE VALUES (2, 1, "Bed", 3);

INSERT INTO LOCATION VALUES (2, 0, "You are now outside.", 0);
INSERT INTO PASSAGE VALUES (3, 2, "Station", 4);
INSERT INTO LOCATION VALUES (3, 0, "Voitit pelin.", 0);
