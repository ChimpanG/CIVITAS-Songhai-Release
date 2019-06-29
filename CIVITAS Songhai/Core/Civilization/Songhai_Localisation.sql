/*
	Localisation
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO BaseGameText (Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("LOC_CIVILIZATION_CVS_SONGHAI_NAME",				"Songhai"			),
	("LOC_CIVILIZATION_CVS_SONGHAI_DESCRIPTION",		"Songhai Empire"	),
	("LOC_CIVILIZATION_CVS_SONGHAI_ADJECTIVE",  		"Songhai"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_NAME",  	"Chronicle of Africa"	),
	("LOC_TRAIT_CIVILIZATION_CVS_SONGHAI_UA_DESCRIPTION",	
	"Rivers provide standard adjacency bonuses to Specialty Districts, and double [ICON_Damaged] Healing to adjacent Units. Cities receive +1 [ICON_Gold] Gold on outgoing [ICON_TradeRoute] Trade Routes for each Specialty District on a river."	),
	
-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_DISTRICT_CVS_SONGHAI_UI_NAME",		"Karambungo"	),
	("LOC_DISTRICT_CVS_SONGHAI_UI_DESCRIPTION",		
	"A district unique to Songhai. Provides +1 [ICON_Science] Science for each Building constructed in it on outgoing [ICON_TradeRoute] Trade Routes from this City."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_SONGHAI_UU_NAME",		"Mandekalu"	),
	("LOC_UNIT_CVS_SONGHAI_UU_DESCRIPTION",		  
	"A heavy cavalry unit unique to Songhai. Receives +1 [ICON_Movement] Movement when adjacent to a River, and deals full damage to City Walls. Does not require a source of [ICON_RESOURCE_IRON] Iron to build, but receives additional [ICON_Strength] Combat Strength when a source is owned."),

	("LOC_MODIFIER_CVS_SONGHAI_UU_ADJUST_STRENGTH_DESCRIPTION",		"+{1_Amount} Combat Strength from owned copy of Iron"	),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("LOC_CITY_NAME_GAO",  "Gao"),
	("LOC_CITY_NAME_TIMBUKTU",  "Timbuktu"),
	("LOC_CITY_NAME_JENNE",  "Jenne"),
	("LOC_CITY_NAME_KUKIYA",  "Kukiya"),
	("LOC_CITY_NAME_WALATA",  "Walata"),
	("LOC_CITY_NAME_GOUNDAM",  "Goundam"),
	("LOC_CITY_NAME_BAMAKO",  "Bamako"),
	("LOC_CITY_NAME_TAGHAZA",  "Taghaza"),
	("LOC_CITY_NAME_AGADEZ",  "Agadez"),
	("LOC_CITY_NAME_ESSOUK",  "Essouk"),
	("LOC_CITY_NAME_AOUDAGHOST",  "Aoudaghost"),
	("LOC_CITY_NAME_SEGU",  "Segu"),
	("LOC_CITY_NAME_ARAOUANE",  "Araouane"),
	("LOC_CITY_NAME_TAOUDENNI",  "Taoudenni"),
	("LOC_CITY_NAME_SANSANDING",  "Sansanding"),
	("LOC_CITY_NAME_BANAMBA",  "Banamba"),
	("LOC_CITY_NAME_BIRNIN_KEBBI",  "Birnin Kebbi"),
	("LOC_CITY_NAME_KOUMBI_SALEH",  "Koumbi Saleh"),
	("LOC_CITY_NAME_KANO",  "Kano"),
	("LOC_CITY_NAME_GWANDU",  "Gwandu"),
	("LOC_CITY_NAME_ZAZZAU",  "Zazzau"),
	("LOC_CITY_NAME_KAYI",  "Kayi"),
	("LOC_CITY_NAME_TENENKOU",  "Ténenkou"),
	("LOC_CITY_NAME_DOUENTZA",  "Douentza"),
	("LOC_CITY_NAME_SARAFERE",  "Saraféré"),
	("LOC_CITY_NAME_RAS_KEBDANA",  "Ras Kebdana"),
	("LOC_CITY_NAME_YATENGA",  "Yatenga"),
	("LOC_CITY_NAME_NIORO_DU_RIP",  "Nioro du Rip"),
	("LOC_CITY_NAME_MASINA",  "Masina"),
	("LOC_CITY_NAME_ARGUNGU",  "Argungu"),
	("LOC_CITY_NAME_MOPTI",  "Mopti"),
	("LOC_CITY_NAME_OUATAGOUNA",  "Ouatagouna"),
	("LOC_CITY_NAME_TEKEDDA",  "Tekedda"),
	("LOC_CITY_NAME_OUADANE",  "Ouadane"),
	("LOC_CITY_NAME_NIAMEY",  "Niamey"),
	("LOC_CITY_NAME_SAN",  "San"),
	("LOC_CITY_NAME_BOUSSA",  "Boussa"),
	("LOC_CITY_NAME_TONDIBI",  "Tondibi"),
	("LOC_CITY_NAME_DORI",  "Dori"),
	("LOC_CITY_NAME_BAMBA",  "Bamba"),
	("LOC_CITY_NAME_TORODI",  "Torodi"),

-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("LOC_CITIZEN_CVS_SONGHAI_MALE_1",			"Abdou"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_2",			"Baaku"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_3",			"Dembu"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_4",			"Idris"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_5",			"Ismaela"	),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_6",			"Jaasi"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_7",			"Jatoo"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_8",			"Kausu"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_9",			"Musa"		),
	("LOC_CITIZEN_CVS_SONGHAI_MALE_10",			"Lamin"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_1",		"Ajaratu"	),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_2",		"Bintou"	),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_3",		"Hadang"	),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_4",		"Jabou"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_5",		"Kati"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_6",		"Makuto"	),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_7",		"Tano"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_8",		"Sanji"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_9",		"Yama"		),
	("LOC_CITIZEN_CVS_SONGHAI_FEMALE_10",		"Nyima"		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("LOC_CIVINFO_CVS_SONGHAI_LOCATION",			"West Africa"	),
	("LOC_CIVINFO_CVS_SONGHAI_SIZE",				"c.1,400,000 km²"	),
	("LOC_CIVINFO_CVS_SONGHAI_POPULATION",			"Unknown"	),
	("LOC_CIVINFO_CVS_SONGHAI_CAPITAL",				"Gao"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_1",		
	"The Songhai Empire was a great trading state of West Africa centered on the middle reaches of the Niger River in what is now central Mali and eventually extending west to the Atlantic coast, and east into Niger and Nigeria."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_2",		
	"Though the Songhai people are said to have established themselves in the city of Gao about AD 800, they did not regard it as their capital until the beginning of the 11th century during the reign of the dia (king) Kossoi, a Songhai convert to Islam."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_3",	
	"Gao so prospered and expanded during the next 300 years that from 1325 to 1375 the rulers of Mali added it to their empire. Around 1335, the dia line of rulers gave way to the sunni, or shi, one of whom, Sulaiman-Mar, is said to have won back Gao’s independence. The century or so of vicissitudes that followed was ended by the accession in about 1464 of Sonni Alī."),
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_4",	
	"By repulsing a Mossi attack on Timbuktu, the second most important city of Songhai, and by defeating the Dogon and Fulani in the hills of Bandiagara, he had by 1468 rid the empire of any immediate danger. He later evicted the Tuareg from Timbuktu, which they had occupied since 1433, and, after a siege of seven years, took Jenne (Djenne) in 1473. By 1476, Songhai dominated the lakes region of the middle Niger to the west of Timbuktu."),
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_5",	
	"Sonny repulsed a Mossi attack on Walata to the northwest in 1480 and subsequently discouraged raiding by all the inhabitants of the Niger valley’s southern periphery. The civil policy of Sonni Alī was to conciliate the interests of his pagan pastoralist subjects with those of the Muslim city dwellers, on whose wealth and scholarship the Songhai empire depended."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_6",	
	"His son, Sonni Baru, who sided completely with the pastoralists, was deposed by the rebel Muḥammad ibn Abi Bakr Ture, also known as Muhammad I Askiya, who welded the central region of the western Sudan into a single empire. He too fought the Mossi of Yatenga, tackled Borgu, in what is now northwestern Nigeria, albeit with little success, and mounted successful campaigns against the Diara, the kingdom of Fouta-Toro in Senegal, and to the east against the Hausa states."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_7",	
	"In order to win control of the principal caravan markets to the north, he ordered his armies to found a colony in and around Agadez in Air. He was deposed by his eldest son, Musa, in 1528. Throughout the dynastic squabbles of successive reigns, the Muslims in the towns continued to act as middlemen in the profitable gold trade with the states of Akan in central Guinea. The peace and prosperity of Askia Dawud’s reign was followed by a raid initiated by Sultan Aḥmad al-Mansur of Morocco on the salt deposits of Taghaza."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SONGHAI_CHAPTER_HISTORY_PARA_8",	
	"The situation, which continued to worsen under Muḥammad Bani, culminated disastrously for Songhai under Issihak II when Moroccan forces, using firearms, advanced into the Songhai empire to rout his forces, first at Tondibi and then at Timbuktu and Gao. Retaliatory guerrilla action of the pastoral Songhai failed to restore the empire, the economic and administrative centres of which remained in Moroccan hands."),		
	
	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_SONGHAI_UI_CHAPTER_HISTORY_PARA_1",	
	"At its peak, the Songhai city of Timbuktu became a thriving cultural and commercial center. Arab, Italian, and Jewish merchants all gathered for trade. However, Timbuktu was but one of a myriad of cities throughout the empire."),
	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_SONGHAI_UI_CHAPTER_HISTORY_PARA_2",	
	"A revival of Islamic scholarship took place in larger cities across the Songhai kingdom, becoming important cities of trade. Mosques contained libaries and larger cities like Timbuktu and Jenne were hotbeds for scholars, theologians, doctors and Muslim jurists to study at universities, all maintained at the king's cost. Thus the most important trade in these cities was in books and manuscripts that sold for more money than any other merchandise."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SONGHAI_UU_CHAPTER_HISTORY_PARA_1",  	
	"Like their northern counterparts, Muslim armies also contained heavy cavalry units, similar in form and function to European knights. Like the Europeans, the Muslim knights too were from the upper reaches of society, possessing the best arms, armor and horses. The armor might be modified to reflect the differences in climate. Even the most noble knight would quickly roast if wearing plate armor in a Middle East summer, but it still gave them a great advantage over other units on the battlefield. Historical accounts admit that Muslim knights were generally a match for their European opponents.");