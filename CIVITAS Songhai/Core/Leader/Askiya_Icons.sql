/*
	Icons
	Credits: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename							)
VALUES	('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		256,	 	1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_256.dds'),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		80,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_80.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		64,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_64.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		55,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_55.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		50,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_50.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		45,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_45.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		32,	 		1,				1,				'LEADER_CVS_ASKIYA_PORTRAIT_32.dds'	),
		
		('ICON_ATLAS_CVS_ASKIYA_ICON',			45,	 		1,				1,				'LEADER_CVS_ASKIYA_ICON_45.dds'		),
		('ICON_ATLAS_CVS_ASKIYA_ICON',			256,		1,				1,				'LEADER_CVS_ASKIYA_ICON_256.dds'	),

		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		256,		1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_256.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		128,		1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_128.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		80,			1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_80.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		50,			1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_50.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		38,			1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_38.dds'	),
		('ICON_ATLAS_CVS_ASKIYA_UI_ICON',		32,			1,				1,				'LEADER_CVS_ASKIYA_UI_ICON_32.dds'	);
		
		
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,										Atlas, 									'Index'		)
VALUES  ('ICON_LEADER_CVS_ASKIYA',					'ICON_ATLAS_CVS_ASKIYA_PORTRAIT',		0			),
		('ICON_CIVILIZATION_CVS_SONGHAI_ASKIYA',	'ICON_ATLAS_CVS_ASKIYA_ICON',			0			),
		('ICON_BUILDING_CVS_ASKIYA_UI',				'ICON_ATLAS_CVS_ASKIYA_UI_ICON',		0			);
