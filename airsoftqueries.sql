/**** Possible Queries ****/

SELECT name, playerID 
FROM Player 
WHERE age > 18 AND experience = 'veteran';

SELECT *
FROM AirsoftGun 
WHERE brand = 'Tokyo Marui' AND type = 'gbb' AND type = 'pistol';

SELECT Player1.name, Player2.playerID
FROM Player as Player1, Player as Player 2, (SELECT ownershipNum, loadID
			  FROM Loadout as Loadout1, Loadout as Loadout2
			  WHERE Loadout1.loadID != Loadout2.loadID 
			  	AND Loadout1.ownershipNum != Loadout2.ownershipNum
			  	AND Loadout1.primGunTickNum = Loadout2.primGunTickNum 
			  	AND Loadout1.secGunTickNum = Loadout2.secGunTickNum 
			  	AND Loadout1.topColor = Loadout2.topColor
			  	AND Loadout1.pantColor = Loadout2.pantColor
			  	AND Loadout1.gearColor = Loadout2.gearColor
			  	AND Loadout1.carrier = Loadout2.carrier
			  	AND Loadout1.headwear = Loadout2.headwear
			  	AND Loadout1.headwearColor = Loadout2.headwearColor
			  	AND Loadout1.eyewear = Loadout2.eyewear
			  	AND Loadout1.facepro = Loadout2.facepro)
WHERE Player1.playerID != Player2.playerID;

/**** Updates ****/
UPDATE AirsoftGun
SET price = (price * 1.10)
WHERE brand = 'KWA';

UPDATE Player
SET age = (age + 1);

UPDATE Team
SET captain = founder
WHERE name = 'Lone Wolves';


/**** Possible Views ****/

CREATE VIEW Veterans AS 
	SELECT * 
	FROM Players
	WHERE experience = "veteran";

CREATE VIEW AEGs AS
	SELECT *
	FROM AirsoftGun
	WHERE type = "aeg";

CREATE VIEW Snipers AS 
	SELECT DISTINCT Player*
	FROM Player, AirsoftGun
	WHERE Player.ownershipNum = AirsoftGun.ownershipNum
		AND (type = 'spring' OR type = 'gas')
		AND (class = 'bolt');
