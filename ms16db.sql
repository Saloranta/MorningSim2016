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
	Description VARCHAR(1000),
	Description2 VARCHAR(1000)
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

INSERT INTO LOCATION VALUES (1, 1, "Your own cozy room. The bed is in the corner of the room. Door is on the opposite wall from
			     the bed. Your HSL card is on the bed. ", 0.15);
INSERT INTO PASSAGE VALUES (1, 1, "Door", 2);
INSERT INTO PASSAGE VALUES (2, 1, "Bed", 1);
insert into itemtype values (1, "HSL card.", "Your trustworthy green travel card. Needed for public transportation in
			    Helsinki metropolitan area.");
insert into item values (1, 1, 1);

INSERT INTO LOCATION VALUES (2, 0, "Apartment's kitchen. Your room mate asks you to brew some coffee. You
			     see the coffee maker in front of you and apartment door left to you.", 0.04);
INSERT INTO PASSAGE VALUES (3, 2, "To bus.", 3);
insert into passage values (4, 2, "To train.", 4);
insert into passage values (5, 2, "Coffee maker.", 3);

insert into location values (3, 0, "You decided to make coffee for you and your roomie. The cups are neatly on the kitchen counter
			      and you chat about, you know, stuff while drinking them. You're a behind your schedule, but luckily
			     your room mate has a car and he takes you to Railway station with it. You walk together
			     towards the door.", 0.25);
insert into passage values (6, 3, "Door", 4);

insert into location values (4, 0, "Your room mate's car.", 0.1);

INSERT INTO LOCATION VALUES (4, 0, "Just your average Finnish bus stop. There seems to be a hoboish person 
			     rocking on the stop's bench. The bus appears soon after you arrive at the stop and you're ready to
			     enter through the door.", 0.02);
INSERT INTO PASSAGE VALUES (6, 3, "Bus door.", 6);
insert into passage values (7, 3, "Begging hobo.", 6);

insert into location values (5, 0, "Train station. Full of commuters. You wonder if trustworthy VR will be on time today. You see
			      an escalator descending to the train stop in front of you. The train is already there!");
insert into passage values (8, 4, "Escalator to train.", 5);

INSERT INTO LOCATION VALUES (6, 0, "Bus arrives to your stop. You see the driver and the ticket selling machine. 
			     You also notice the hobo at the corner of your eye." 0.20);
INSERT INTO PASSAGE VALUES (9, 5, "Ticket reader", 8);
Insert into passage values (10, 5, "Driver", 8);

insert into location values (7, 0, "Train full of people. You're on the edge because of your prejudice againt denizen
			     of Vantaa. You try to be as unnoticable as you can. You stand near the ticket machine.", 0.15);
insert into passage values (11, 7, "Ticket machine.", 8);
	
insert into location values (8, 0, "Railway station. You're in a crowded hall. Wondering whether you 
			     should take the tram or perhaps walk to school. The door to your right takes you to the tram stop and
			     the door in front of you takes you to the streets of Helsinki.");
insert into passage values (12, 5, "Door to tram stop.", 10);
insert into passage values (13, 5, "Door to the streets of Helsinki.", 9);

insert into location values (9, 0, "Streets of Helsinki. You see commuters hurrying to work. You feel a bit sorry for them.
			      They seem to be small cogs in a meaningless machine called society. You spot a chugger
			      in the distance. You decide to try to avoid her.", 0.33);
insert into passage values (14, 9, "Chugger.", 10);

insert into location values (10, 0, "You spend the most awkward 10 minutes of your life trying to make the chugger understand
			     that you really care about the children's rights but you just don't have source of income stable
			     enough to become a monthly donor. You continue your journey to school by walking 
			     towards a mall.", 0.17);
insert into passage values (15, 10, "Mall", 13);

insert into location values (11, 0, "Tram stop. An elderly couple is also waiting for the tram #6. You're positioned perfectly
			      so the tram door is right in front of you when it arrives.");
insert into passage values (15, 8, "Tram door.", 11);

insert into location values (12, 0, "Tram. It is fairly empty. You sit down but see the elderly couple taking a seat in front of you.
			    The tram door is almost behind you.");
insert into passage values (16, 9, "Elderly couple.", 12);
insert into passage values (17, 9, "Tram door.", 12);

insert into location values (13, 0, "School yard. You see a couple of familiar faces at the bad kids' corner. You also notice
			    something weird on the ground as you walk towards the entrance to school.");
insert into passage values (18, 9, "School door.", 14);
insert into passage values (19, 9, "Acquaintances.", 13);
insert into passage values (20, 9, "Weird object.", 16);

insert into location values (14, 0, "Unnamed bar. You've failed... You didn't make it to school in time.
			    Oh well, luckily you can make new friends as you talk and sip your beverages.");

insert into location values (15, 0, "School building. These old corridors have served many generations of students before
			    you. You walk towards your home class. You collide accidentally with a pretty girl near the door
			    to your home class.");
insert into passage values (21, 12, "Class door.", 13);
insert into passage values (22, 12, "Girl.", 11);

insert into location values (16, 0, "Home class. You finally made it. You sip coffee and feel good about yourself.
			    Another day you've gotten to school in time.");

Insert into location values (17, 0, "Jail. You're in remand for theft. Why, oh why, you touched the painting in the
			     school yard... You can kiss goodbye to your school day.", 8.0)

