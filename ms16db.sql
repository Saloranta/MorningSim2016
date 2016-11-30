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

INSERT INTO PLAYER VALUES (1, 0, 7.00);

INSERT INTO LOCATION VALUES (1, 1, "You are now home, there is a door in the corner, and bed in the opposite corner.", 0.15);
INSERT INTO PASSAGE VALUES (1, 1, "Door", 2);
INSERT INTO PASSAGE VALUES (2, 1, "Bed", 1);

INSERT INTO LOCATION VALUES (2, 0, "You are now outside.", 0.10);
INSERT INTO PASSAGE VALUES (3, 2, "Road to bus stop.", 3);
insert into passage values (4, 2, "Uphill climb to the train station.", 4);

INSERT INTO LOCATION VALUES (3, 0, "Just your average Finnish bus stop. There seems to be a hoboish person 
			     rocking on the stop's bench. The bus appears soon after you arrive at the stop and you're ready to
			     enter through the door.", 0.02);
INSERT INTO PASSAGE VALUES (5, 3, "Bus door.", 6);
insert into passage values (6, 3, "Begging hobo.", 6);

insert into location values (4, 0, "Train station. Full of commuters. You wonder if trustworthy VR will be on time today. You see
			     escalator descending to the train stop in front of you. The train is already there!");
insert into passage values (7, 4, "Escalator to train.", 5);

INSERT INTO LOCATION VALUES (6, 0, "Bus arrives to your stop. You see the driver and the ticket selling machine. 
			     You also notice the hobo at the corner of your eye." 0.20);
INSERT INTO PASSAGE VALUES (7, 5, "Ticket selling machine", 7);
INSERT INTO PASSAGE VALUES (8, 5, "Begging hobo", 7);
Insert into passage values (9, 5, "Driver", 7);

insert into location values (7, 0, "Railway station. You're in a crowded hall. Wondering whether you 
			     should take the tram or perhaps walk to school. The door to your right takes you to the tram stop and
			     the door in front of you takes you to the streets of Helsinki.");
insert into passage values (10, 5, "Door to tram stop.", 8);
insert into passage values (11, 5, "Door to the streets of Helsinki.", 8);

insert into location values (8, 0, "Tram stop. An elderly couple is also waiting for the tram #6.");
insert into location values(9, 0, "Tram.");
insert into location values(10, 0, "School yard.");
insert into location values(11, 0, "Unnamed bar.");
insert into location values(12, 0, "School building.");
insert into location values(13, 0, "Home class.");





INSERT INTO PASSAGE VALUES (99, 2, "Station", 4);
INSERT INTO LOCATION VALUES (3, 0, "Voitit pelin.", 2.00);
