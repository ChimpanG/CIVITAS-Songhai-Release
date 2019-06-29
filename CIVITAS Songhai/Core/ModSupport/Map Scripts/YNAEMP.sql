/*
	Mod Support YNAEMP
	Credits: SeelingCat
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_ASKIYA',	'GiantEarth',		15,		42	),
		('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_ASKIYA',	'GreatestEarthMap',	46,		27	), 
		('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_ASKIYA',	'CordiformEarth',	35,		14	);
