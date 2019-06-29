/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,										Kind				)
VALUES	('TRAIT_LEADER_BUILDING_CVS_ASKIYA_UI',		'KIND_TRAIT'		),
		('BUILDING_CVS_ASKIYA_UI',					'KIND_BUILDING'		),
		('MODTYPE_CVS_ASKIYA_UI_INITIATION_YIELD',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_ASKIYA_UI_IDENTITY_PRESSURE',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,								Name								)
VALUES	('TRAIT_LEADER_BUILDING_CVS_ASKIYA_UI',	'LOC_BUILDING_CVS_ASKIYA_UI_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(TraitType,								LeaderType			)
VALUES	('TRAIT_LEADER_BUILDING_CVS_ASKIYA_UI',	'LEADER_CVS_ASKIYA'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_CVS_ASKIYA_UI', -- BuildingType
		'LOC_BUILDING_CVS_ASKIYA_UI_NAME', -- Name
		'LOC_BUILDING_CVS_ASKIYA_UI_DESCRIPTION', -- Description
		'TRAIT_LEADER_BUILDING_CVS_ASKIYA_UI', -- TraitType
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_TEMPLE';

-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,		ReplacesBuildingType	)
VALUES	('BUILDING_CVS_ASKIYA_UI',	'BUILDING_TEMPLE'		);

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,	YieldChange	)
SELECT	'BUILDING_CVS_ASKIYA_UI',	YieldType,	YieldChange
FROM	Building_YieldChanges
WHERE	BuildingType = 'BUILDING_TEMPLE';

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_ASKIYA_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = 'BUILDING_TEMPLE';

-----------------------------------------------
-- Building_GreatWorks
-----------------------------------------------

INSERT INTO Building_GreatWorks
		(BuildingType,				GreatWorkSlotType,	NumSlots	)
SELECT	'BUILDING_CVS_ASKIYA_UI',	GreatWorkSlotType,	NumSlots
FROM	Building_GreatWorks
WHERE	BuildingType = 'BUILDING_TEMPLE';

-----------------------------------------------
-- BuildingPrereqs
-----------------------------------------------

INSERT INTO BuildingPrereqs
		(Building,	PrereqBuilding	)
SELECT	Building,	'BUILDING_CVS_ASKIYA_UI'
FROM	BuildingPrereqs
WHERE	PrereqBuilding = 'BUILDING_TEMPLE';

INSERT INTO BuildingPrereqs
		(Building,	PrereqBuilding	)
SELECT	'BUILDING_CVS_ASKIYA_UI', PrereqBuilding
FROM	BuildingPrereqs
WHERE	Building = 'BUILDING_TEMPLE';

-----------------------------------------------
-- Unit_BuildingPrereqs
-----------------------------------------------

INSERT INTO Unit_BuildingPrereqs
		(Unit,	PrereqBuilding	)
SELECT	Unit,	'BUILDING_CVS_ASKIYA_UI'
FROM	Unit_BuildingPrereqs
WHERE	PrereqBuilding = 'BUILDING_TEMPLE';

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO	BuildingModifiers	
		(BuildingType,				ModifierId									)
VALUES	('BUILDING_CVS_ASKIYA_UI',	'MODIFIER_CVS_ASKIYA_UI_INITIATION_YIELD'	),
		('BUILDING_CVS_ASKIYA_UI',	'MODIFIER_CVS_ASKIYA_UI_IDENTITY_PRESSURE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,						EffectType								)
VALUES	('MODTYPE_CVS_ASKIYA_UI_INITIATION_YIELD',	'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ADJUST_UNIT_INITIATION_YIELD'	),
		('MODTYPE_CVS_ASKIYA_UI_IDENTITY_PRESSURE',	'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_IDENTITY_PRESSURE'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_ASKIYA_UI_INITIATION_YIELD',		'MODTYPE_CVS_ASKIYA_UI_INITIATION_YIELD',	NULL					),
		('MODIFIER_CVS_ASKIYA_UI_IDENTITY_PRESSURE',	'MODTYPE_CVS_ASKIYA_UI_IDENTITY_PRESSURE',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value			)
VALUES	('MODIFIER_CVS_ASKIYA_UI_INITIATION_YIELD',		'YieldType',	'YIELD_SCIENCE'	),
		('MODIFIER_CVS_ASKIYA_UI_INITIATION_YIELD',		'Amount',		75				),
		('MODIFIER_CVS_ASKIYA_UI_IDENTITY_PRESSURE',	'Amount',		2				);