/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,													Kind			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SONGHAI_UI',			'KIND_TRAIT'	),
		('DISTRICT_CVS_SONGHAI_UI',								'KIND_DISTRICT'	),
		('MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_DOMESTIC',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_INTERNATIONAL',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SONGHAI_UI',	'LOC_DISTRICT_CVS_SONGHAI_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SONGHAI_UI',	'CIVILIZATION_CVS_SONGHAI'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_SONGHAI_UI', -- DistrictType
		'LOC_DISTRICT_CVS_SONGHAI_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_SONGHAI_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_SONGHAI_UI', -- TraitType
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_CAMPUS';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,		ReplacesDistrictType	)
VALUES	('DISTRICT_CVS_SONGHAI_UI',	'DISTRICT_CAMPUS'		);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_CAMPUS';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_CAMPUS';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType = 'DISTRICT_CAMPUS';

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_CAMPUS';

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------

INSERT INTO	DistrictModifiers
		(DistrictType,				ModifierId	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	'MODIFIER_CVS_SONGHAI_UI_TRADE_D_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

INSERT INTO	DistrictModifiers
		(DistrictType,				ModifierId	)
SELECT	'DISTRICT_CVS_SONGHAI_UI',	'MODIFIER_CVS_SONGHAI_UI_TRADE_I_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,											CollectionType,		EffectType													)
VALUES	('MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_DOMESTIC',			'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_DOMESTIC'			),
		('MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_INTERNATIONAL',	'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_D_'||BuildingType,	'MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_DOMESTIC',	'REQSET_CVS_SONGHAI_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_I_'||BuildingType,	'MODTYPE_CVS_SONGHAI_UI_TRADE_YIELD_INTERNATIONAL',	'REQSET_CVS_SONGHAI_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_D_'||BuildingType,		'YieldType',	'YIELD_SCIENCE'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_D_'||BuildingType,		'Amount',		1
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_I_'||BuildingType,		'YieldType',	'YIELD_SCIENCE'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SONGHAI_UI_TRADE_I_'||BuildingType,		'Amount',		1
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,							RequirementId	)
SELECT	'REQSET_CVS_SONGHAI_UI_HAS_'||BuildingType,	'REQ_CVS_SONGHAI_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,							RequirementSetType	)
SELECT	'REQSET_CVS_SONGHAI_UI_HAS_'||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_SONGHAI_UI_HAS_'||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value	)
SELECT	'REQ_CVS_SONGHAI_UI_HAS_'||BuildingType,	'BuildingType', BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_CAMPUS' AND TraitType IS NULL;