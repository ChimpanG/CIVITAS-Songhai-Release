/*
	Mod Support
	Authors: ChimpanG
*/

-----------------------------------------------
-- RwF
-----------------------------------------------

CREATE TABLE IF NOT EXISTS 
	Civilization_Titles (
	CivilizationType  				text 		 		default null,
	GovernmentType					text 	 			default null,
	LeaderTitle						text				default null,
	PolicyType  					text 		 		default null);

CREATE TABLE IF NOT EXISTS 
	Civilization_StartingGovernment (
	CivilizationType  				text 		 		default null,
	GovernmentType					text 				default null,
	LeaderType						text				default null);	

INSERT INTO Civilization_Titles
		(CivilizationType, 				GovernmentType, 							LeaderTitle															)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_CHIEFDOM',						'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_JFD_HORDE',						'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SONGHAI'					),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_JFD_POLIS',						'LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_SONGHAI'					),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_AUTOCRACY',						'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_OLIGARCHY',						'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_SONGHAI'				), 
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_CLASSICAL_REPUBLIC',			'LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_SONGHAI'	),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_MONARCHY',						'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_MERCHANT_REPUBLIC',				'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_JFD_NOBLE_REPUBLIC',			'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_DEMOCRACY',						'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_SONGHAI'		),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_COMMUNISM',						'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SONGHAI'				),
		('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_FASCISM',						'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SONGHAI'					);

DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_SONGHAI' AND GovernmentType IS NOT NULL AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_SONGHAI' AND PolicyType IS NOT NULL AND PolicyType NOT IN (SELECT PolicyType FROM Policies);

INSERT INTO	Civilization_StartingGovernment
		(CivilizationType,				GovernmentType			)
VALUES	('CIVILIZATION_CVS_SONGHAI',	'GOVERNMENT_CHIEFDOM'	);