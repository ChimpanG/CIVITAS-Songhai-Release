/*
	Mod Support Historical Religions
	Credits: Chrisy15
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType)
SELECT	'LEADER_CVS_ASKIYA',		'RELIGION_SHIA'
WHERE EXISTS (SELECT ReligionType FROM Religions WHERE ReligionType = 'RELIGION_SHIA');

CREATE TRIGGER IF NOT EXISTS CVS_ASKIYA_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_SHIA'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType)
	VALUES	('LEADER_CVS_ASKIYA',	NEW.ReligionType);
END;