/*
Edison G. Velez
COMP4018
*/


/* Table creation */

CREATE TABLE Team(name VARCHAR(60), founder INT , captain INT, memberCount INT, minAge INT,
					 type VARCHAR(10), rank INT, PRIMARY KEY (teamName));

CREATE TABLE Member(name VARCHAR(60), town VARCHAR(20), playerID INT, teamName VARCHAR(60),teamCallsign VARCHAR(25),
					 rank VARCHAR (30), PRIMARY KEY(playerID, teamName, teamCallsign));

CREATE TABLE Player(name VARCHAR(60), town VARCHAR(20), playerID INT, callsign VARCHAR(25),
					 age INT, experience VARCHAR(10), ownershipNum INT, PRIMARY KEY (playerID));

CREATE TABLE AirsoftGun(name VARCHAR(100), brand VARCHAR(40), model VARCHAR(15), serialNum(10), class VARCHAR(9),
					 type VARCHAR(8), fps INT, color VARCHAR(35), price DECIMAL, ownershipNum INT, bindID INT, loadTickNum INT,
					 PRIMARY KEY (model, serialNum, bindID, loadTickNum));

CREATE TABLE Attachment(name VARCHAR(80), brand VARCHAR(40), type(10), color VARCHAR(35), price DECIMAL, bindID INT,
					 PRIMARY KEY(bindID));

CREATE TABLE Loadout(primGunTickNum INT, secGunTickNum INT, topColor VARCHAR(30), pantColor VARCHAR(30), gearColor VARCHAR(30),
					 carrier VARCHAR(15), headwear VARCHAR(8), headwearColor VARCHAR(30), eyewear VARCHAR(9), facepro VARCHAR(14),
					 ownershipNum INT, loadID INT, PRIMARY KEY (loadID);

/* Initialize tables with some test data */
/**** Teams ****/

INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('Guabairo Tactical Nightjar Squad', 'Edison Velez', 'Edison Velez', 5, 17, 'standard', 1);
INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('Goon Squad', 'Chance Mize', 'Chance Mize', 7, 18, 'milsim', 1);
INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('Lone Wolves', 'Ricardo Lopez', 'Juan del Pueblo', 8, 18, 'milsim', 2);
INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('Overkill', 'Robert Nieves', 'Cristopher Robles', 6, 15, 'standard', 2);
INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('FEAR', 'Natopaz Lopez', 'Natopaz Lopez', 7, 18, 'milsim', 3);
INSERT INTO Team(name, founder, captain, memberCount, minAge, type, rank)
	Values('Bad Company', 'Ricardo Ruiz', 'Cristian Perez', 10, 18, 'standard', 3)

/**** Members ****/

INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Edison Velez', 'Lajas', 80593688, 'Guabairo Tactical Nightjar Squad', 'Guab1', 'captain');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Pablo Seise', 'Rincon', 68667166, 'Guabairo Tactical Nightjar Squad', 'Guab2', 'second lieutenant');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Chance Mize', 'Bayamon', 90293216, 'Goon Squad', 'Goon1', 'captain');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Pedro Hernandez', 'Bayamon', 24946928, 'Goon Squad', 'Goon2', 'master sergeant');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Ricardo Lopez', 'Trujillo Alto', 74771533, 'Lone Wolves', 'Wolf2', 'first lieutenant');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Juan del Pueblo', 'Trujillo Alto', 97390584, 'Lone Wolves', 'Wolf1', 'captain');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Roberto Nieves', 'Ponce', 58306843, 'Overkill', 'Ov2', 'second lieutenant');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Cristopher Robles', 'Guanica', 37135198, 'Overkill', 'Ov1', 'captain');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Natopaz Lopez', 'Bayamon', 48929997, 'FEAR', 'Nato', 'captain');
INSERT INTO Memeber(name, town, playerID, teamName, teamCallsign, rank)
	Values('Jose Ramirez', 'Bayamon', 26481409 , 'FEAR', 'Goldo', 'sergeant');

/**** Players ****/

INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Edison Velez', 'Lajas', 80593688, 'Tom', 23, 'veteran', 86915290);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Pablo Seise', 'Rincon', 68667166, 'Reaper6', 27, 'veteran', 66228873);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Chance Mize', 'Bayamon', 90293216, 'Ginger', 25, 'adept', 56208739);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Pedro Hernandez', 'Bayamon', 24946928, 'Flaco', 24, 'pro', 34918478);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Ricardo Lopez', 'Trujillo Alto', 74771533, 'Ricky', 38, 'veteran', 52653007);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Juan del Pueblo', 'Trujillo Alto', 97390584, 'Prospect', 20, 'pro', 75965837);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Roberto Nieves', 'Ponce', 58306843, 'Negro', 22, 'adept', 75617503);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Cristopher Robles', 'Guanica', 37135198, 'Zombie', 'begginer', 22, 96883506);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Natopaz Lopez', 'Bayamon', 48929997, 'Nato', 30, 'veteran', 21067210);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Jose Ramirez', 'Bayamon', 26481409, 'Flaco', 24, 'adept', 33781842);
INSERT INTO Player(name, town, playerID, callsing, age, experience, ownershipNum)
	Values('Christian Rodriguez', 'Lajas', 75404904, 'Hollow', 23, 'veteran', 61188478);

/**** Airsoft Guns ****/

INSERT INTO AirsoftGun(name, brand, model, serialNum, class, type, fps, color, price
			ownershipNum, bindID, loadTickNum)
	Values();
INSERT INTO AirsoftGun(name, brand, model, serialNum, class, type, fps, color, price
			ownershipNum, bindID, loadTickNum)
	Values();
INSERT INTO AirsoftGun(name, brand, model, serialNum, class, type, fps, color, price
			ownershipNum, bindID, loadTickNum)
	Values();
INSERT INTO AirsoftGun(name, brand, model, serialNum, class, type, fps, color, price
			ownershipNum, bindID, loadTickNum)
	Values();

/**** Attachments ****/
INSERT INTO Attachment(name, brand, type, color, price, bindID)
	Values();

/**** Loadout ****/
INSERT INTO Loadout(primGunTickNum, secGunTickNum, topColor, pantColor, gearColor, carrier, headwear,
			headwearColor, eyewear, facepro, ownershipNum, loadID)
	Values();






