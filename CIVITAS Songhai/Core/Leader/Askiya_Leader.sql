/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_ASKIYA',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName			)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'LEADER_CVS_ASKIYA',	'LOC_CITY_NAME_GAO'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_ASKIYA',	'LOC_LEADER_CVS_ASKIYA_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_ASKIYA',	'LOC_PEDIA_LEADERS_PAGE_CVS_ASKIYA_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,				PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ASKIYA',	'LEADER_CVS_ASKIYA_NEUTRAL',	'LEADER_CVS_ASKIYA_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType		)
VALUES	('LEADER_CVS_ASKIYA',	'RELIGION_ISLAM'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,					Usage,		PrimaryColor,		 		SecondaryColor,					TextColor					)
VALUES	('LEADER_CVS_ASKIYA',	'Unique',	'COLOR_CVS_ASKIYA_PRIMARY',	'COLOR_CVS_ASKIYA_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,							Color				)
VALUES	('COLOR_CVS_ASKIYA_PRIMARY',	'243,134,48,255'	),
		('COLOR_CVS_ASKIYA_SECONDARY',	'90,27,27,255'		);
		