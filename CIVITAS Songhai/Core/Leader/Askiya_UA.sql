/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_ASKIYA_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_ASKIYA_UA_PLAYER_BELIEF_YIELD',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ASKIYA_UA_FREE_PROMOTION',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_ASKIYA_UA',	'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ASKIYA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ASKIYA',	'TRAIT_LEADER_CVS_ASKIYA_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_LEADER_CVS_ASKIYA_UA',	'MODIFIER_CVS_ASKIYA_UA_ATTACH_CITIES'		),
		('TRAIT_LEADER_CVS_ASKIYA_UA',	'MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,						EffectType								)
VALUES	('MODTYPE_CVS_ASKIYA_UA_PLAYER_BELIEF_YIELD',	'COLLECTION_OWNER',					'EFFECT_ADD_PLAYER_BELIEF_YIELD'		),
		('MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',			'COLLECTION_PLAYER_CITIES',			'EFFECT_ATTACH_MODIFIER'				),
		('MODTYPE_CVS_ASKIYA_UA_FREE_PROMOTION',		'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ADJUST_UNIT_GRANT_EXPERIENCE'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId,				RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ASKIYA_UA_ATTACH_CITIES',		'MODTYPE_CVS_ASKIYA_UA_ATTACH_CITIES',			'REQSET_CVS_ASKIYA_UA_FULL_LOYALTY',	0,			0			),
		('MODIFIER_CVS_ASKIYA_UA_CAVALRY_PROMOTION',	'MODTYPE_CVS_ASKIYA_UA_FREE_PROMOTION',			'REQSET_CVS_ASKIYA_UA_IS_CAVALRY',		0,			1			),
		('MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY',		'MODTYPE_CVS_ASKIYA_UA_PLAYER_BELIEF_YIELD',	NULL,									0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,				Value										)
VALUES	('MODIFIER_CVS_ASKIYA_UA_ATTACH_CITIES',			'ModifierId',		'MODIFIER_CVS_ASKIYA_UA_CAVALRY_PROMOTION'	),
		('MODIFIER_CVS_ASKIYA_UA_CAVALRY_PROMOTION',		'Amount',			-1											),
		('MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY',			'BeliefYieldType',	'BELIEF_YIELD_PER_CITY'						),
		('MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY',			'YieldType',		'YIELD_SCIENCE'								),
		('MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY',			'Amount',			1											),
		('MODIFIER_CVS_ASKIYA_UA_SCIENCE_PER_CITY',			'PerXItems',		1											);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_ASKIYA_UA_FULL_LOYALTY',		'REQ_CVS_ASKIYA_UA_CITY_LOYALTY'		),
		('REQSET_CVS_ASKIYA_UA_IS_CAVALRY',			'REQ_CVS_ASKIYA_UA_UNIT_CAVALRY_REQ'	),
		('REQSET_CVS_ASKIYA_UA_CAVALRY_REQ',		'REQ_CVS_ASKIYA_UA_UNIT_LIGHT_CAVALRY'	),
		('REQSET_CVS_ASKIYA_UA_CAVALRY_REQ',		'REQ_CVS_ASKIYA_UA_UNIT_HEAVY_CAVALRY'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_ASKIYA_UA_FULL_LOYALTY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ASKIYA_UA_IS_CAVALRY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ASKIYA_UA_CAVALRY_REQ',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType								)
VALUES	('REQ_CVS_ASKIYA_UA_CITY_LOYALTY',			'REQUIREMENT_CITY_HAS_FULL_LOYALTY'			),
		('REQ_CVS_ASKIYA_UA_UNIT_CAVALRY_REQ',		'REQUIREMENT_REQUIREMENTSET_IS_MET'			),
		('REQ_CVS_ASKIYA_UA_UNIT_LIGHT_CAVALRY',	'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES'	),
		('REQ_CVS_ASKIYA_UA_UNIT_HEAVY_CAVALRY',	'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value								)
VALUES	('REQ_CVS_ASKIYA_UA_UNIT_CAVALRY_REQ',		'RequirementSetId',		'REQSET_CVS_ASKIYA_UA_CAVALRY_REQ'	),
		('REQ_CVS_ASKIYA_UA_UNIT_LIGHT_CAVALRY',	'UnitPromotionClass',	'PROMOTION_CLASS_LIGHT_CAVALRY'		),
		('REQ_CVS_ASKIYA_UA_UNIT_HEAVY_CAVALRY',	'UnitPromotionClass',	'PROMOTION_CLASS_HEAVY_CAVALRY'		);
