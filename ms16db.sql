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
INSERT INTO PASSAGE VALUES (1, 1, "Door", 3);
INSERT INTO PASSAGE VALUES (1, 1, "Bed", 2);
insert into itemtype values (1, "HSL card.", "Your trustworthy green travel card. Needed for public transportation in
			    Helsinki metropolitan area.");
insert into item values (1, 1, 1);

insert into location values (2, 0, "Oh no, you tried to take a power nap but ended up sleeping for a whole hour. You might
			      still make it in time though! The door is in it's usual place.", 1.0);
insert into passage values (3, 2, "Door", 3);

INSERT INTO LOCATION VALUES (3, 0, "Apartment's kitchen. Your room mate asks you to brew some coffee. You
			     see the coffee maker in front of you and apartment door left to you.", 0.04);
INSERT INTO PASSAGE VALUES (4, 3, "To bus", 6);
insert into passage values (5, 3, "To train", 7);
insert into passage values (6, 3, "Coffee maker", 4);

insert into location values (4, 0, "You decided to make coffee for you and your roomie. The cups are neatly on the kitchen counter
			      and you chat about, you know, stuff while drinking them. You're a behind your schedule, but luckily
			     your room mate has a car and he takes you to Railway station with it. You walk together
			     towards the door.", 0.25);
insert into passage values (7, 4, "Door", 5);

insert into location values (5, 0, "Your room mate's car. He's driving towards Railway station. You like the music
			      he's playing in his vehicle.", 0.1);

INSERT INTO LOCATION VALUES (6, 0, "Just your average Finnish bus stop. There seems to be a hoboish person 
			     rocking on the stop's bench. The bus appears soon after you arrive at the stop and you're ready to
			     enter through the door.", 0.02);
INSERT INTO PASSAGE VALUES (8, 6, "Bus door", 8);
insert into passage values (9, 6, "Begging hobo", 8);

insert into location values (7, 0, "Train station. Full of commuters. You wonder if trustworthy VR will be on time today. You see
			      an escalator descending to the train stop in front of you. The train is already there!");
insert into passage values (10, 7, "Escalator to train", 5);

INSERT INTO LOCATION VALUES (8, 0, "Bus arrives to your stop. You see the driver and the ticket selling machine. 
			     You also notice the hobo at the corner of your eye." 0.20);
INSERT INTO PASSAGE VALUES (11, 8, "Ticket machine", 10);
Insert into passage values (12, 8, "Driver", 10);

insert into location values (9, 0, "Train full of people. You're on the edge because of your prejudice againt denizen
			     of Vantaa. You try to be as unnoticable as you can. You stand near the ticket machine.", 0.15);
insert into passage values (13, 9, "Ticket machine", 8);
	
insert into location values (10, 0, "Railway station. You're in a crowded hall. Wondering whether you 
			     should take the tram or perhaps walk to school. The door to your right takes you to the tram stop and
			     the door in front of you takes you to the streets of Helsinki.");
insert into passage values (14, 10, "Door to tram stop", 10);
insert into passage values (15, 10, "Door to the streets of Helsinki", 9);

insert into location values (11, 0, "Streets of Helsinki. You see commuters hurrying to work. You feel a bit sorry for them.
			      They seem to be small cogs in a meaningless machine called society. You spot a chugger
			      in the distance. You decide to try to avoid her.", 0.33);
insert into passage values (16, 11, "Chugger", 12);

insert into location values (12, 0, "You spend the most awkward 10 minutes of your life trying to make the chugger understand
			     that you really care about the children's rights but you just don't have a source of income stable
			     enough to become a monthly donor. You continue your journey to school by walking 
			     towards a mall.", 0.17);
insert into passage values (17, 12, "Mall", 16);

insert into location values (13, 0, "Tram stop. An elderly couple is also waiting for the tram #6. You're positioned perfectly
			      so the tram door is right in front of you when it arrives.");
insert into passage values (18, 13, "Tram door", 14);

insert into location values (14, 0, "Tram. It is fairly empty. You sit down but see the elderly couple taking a seat in front of you.
			    The tram door is almost behind you.");
insert into passage values (19, 14, "Elderly couple", 15);
insert into passage values (20, 14, "Tram door", 16);

insert into location values (15, 0, "You had an enjoyable chat with the pensioners. You feel pretty good about yourself 
			     after all the praises they gave to an active youngster like you. Downside to this is the fact
			     that you missed your stop and ended to Hietalahti. Luckily this doesn't make too much of a 
			      delay to your trip! School can be seen from the tram stop.", 0.1);
insert into passage values (21, 15, "School", 16);

insert into location values (16, 0, "School yard. You see a couple of familiar faces at the bad kids' corner. You also notice
			    something weird on the ground as you walk towards the entrance to school.");
insert into passage values (22, 16, "School door", 19);
insert into passage values (23, 16, "Acquaintances", 18);
insert into passage values (24, 16, "Weird object", 17);

insert into location values (17, 0, "School yard. You walk to the object and notice a police strike force nearing you. You
			      have a fleeting thought that walking to the weird object was a mistake... 
			      Any way, you should sate your curiosity by picking it up! It's right next to your leg now. 
			      The strike force commander stands next to you with a grave impression on his face...", 0.1);
insert into passage values (25, 17, "Police officer", 0.5);
insert into itemtype values (2, "Weird object", "As you pick up the painting you notice that you know it. It's the same
			     famous, and invaluable, masterpiece that was stolen a week ago from Ateneum...");
insert into item values (2, 2, 17);
			     

insert into location values (18, 0, "Unnamed bar. You've failed... You didn't make it to school in time.
			    Oh well, luckily you can make new friends as you talk and sip your beverage(s).");

insert into location values (19, 0, "School building. These old corridors have served many generations of students before
			    you. You walk towards your home class. You collide accidentally with a pretty girl near the door
			    to your home class.");
insert into passage values (21, 19, "Class door", 20);
insert into passage values (22, 19, "Girl", 18);

insert into location values (20, 0, "Home class. You finally made it. You sip coffee and feel good about yourself.
			    Another day you've gotten to school in time.");

Insert into location values (21, 0, "Jail. You're in remand for theft. Why, oh why, you touched the painting in the
			     school yard... You can kiss goodbye to your school day.", 8.0)

