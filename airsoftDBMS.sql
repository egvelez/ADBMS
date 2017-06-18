/*
Edison G. Velez
COMP4018
*/


/* Table creation */

CREATE TABLE Team(name VARCHAR(60) PRIMARY KEY, founder INT , captain INT, memberCount INT, minAge INT,
					 type VARCHAR(10), rank INT);

CREATE TABLE Member(name VARCHAR(60), town VARCHAR(20), playerID INT, teamName VARCHAR(60),teamCallsign VARCHAR(25),
					 rank VARCHAR (20));

CREATE TABLE Player(name VARCHAR(60), town VARCHAR(20), playerID INT PRIMARY KEY, callsign VARCHAR(25),
					 age INT, experience VARCHAR(10), ownershipNum INT);

CREATE TABLE AirsoftGun(name VARCHAR(100), brand VARCHAR(40), model VARCHAR(15), serialNum(10), class VARCHAR(9),
					 type VARCHAR(8), fps INT, color VARCHAR(35), price DECIMAL, ownershipNum INT, bindID INT, loadTickNum INT);

CREATE TABLE Attachment(name VARCHAR(80), brand VARCHAR(40), type(10), color VARCHAR(35), price DECIMAL, bindID INT PRIMARY KEY);

CREATE TABLE Loadout(primGunTickNum INT, secGunTickNum INT, topColor VARCHAR(30), pantColor VARCHAR(30), gearColor VARCHAR(30),
					 carrier VARCHAR(15), headwear VARCHAR(8), headwearColor VARCHAR(30), eyewear VARCHAR(9), facepro VARCHAR(14,
					 ownershipNum INT);
