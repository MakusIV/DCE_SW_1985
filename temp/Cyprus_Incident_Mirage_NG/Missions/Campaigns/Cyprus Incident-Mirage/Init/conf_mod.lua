--configuration file, for the player and for the campainmaker
--Requires only a skipmission after a change
--This file is updated automatically if new items are added, keeping the old player options
------------------------------------------------------------------------------------------------------- 
------------------------------------------------------------------------------------------------------- 
-- last modification:  M38_e
if not versionDCE then versionDCE = {} end
versionDCE["conf_mod_check.lua"] = "1.32.51"
------------------------------------------------------------------------------------------------------- 		
-- cleanCode_b		
-- Reglage_g						(g: PruneScriptConf)(f: Init/loadout selection)(e: remet WestCallsign dans ATO_FlightPlan)(d: delete DeltaMn table)(c: fire playable_m from conf_mod)(b: CJTF Blue)(a: United Arab Emirates)
-- miguel21 modification M53_a		automatic update of the conf_mod file
-- miguel21 modification M47_b		keeps the history of the campaign files
-- Miguel21 modification M41		Scratchpad written in the Sratchpad file, if this modul is installed
-- miguel21 modification M38_e		Check and Help CampaignMaker (e: spy squad)  (c: Check conf_mod) 
-- Miguel21 modification M18_e		despawn (e: option confMod)
-- Miguel21 modification M17_f		Option F-14B & All AddPropAircraft
-- Miguel21 modification M08_b		Hotstart  --||initialement ((départ de la piste + debug hotstart + intercepteur CVN))
------------------------------------------------------------------------------------------------------- 


mission_ini = {
	PruneScriptConf = {
		PruneScript  = true,									-- (true/false)	activate or not the script (and the associated options) allowing to prune the number of units on the ground to improve the FPS (mod Tomsk M09)
		PruneAggressiveness  = 0.1,							-- (0 to 2)		How aggressive should the pruning be [0 to 2], larger numbers will remove more units 0 : no pruning at all
		PruneStatic  = true,									-- (true/false)	true: Should ALL parked (static) aircraft be pruned [MP: recommend: true]
		ForcedPruneSam  = false,								-- (true/false)	true: PBO_CEF wanted to keep some actives SAMs, this option desactivates them too. 	
	},
	AIemergencyLaunch  = true,								-- (default : false), Tanks and Bombs emergency In Task Strike: autorise ou non aux AI à larguer leur emport sous la menace pendant un strike	
	
	parking_hotstart  = false,								-- (default : false), true: player flights starts with engines running on parking
	intercept_hotstart  = 2,								-- (1 or true: on parking/default)(2: on runway)(0 or false: cold start) player flights with intercept task starts with engines running 
	startup_time_player  = 900,								-- (default : 600), time in seconds allocated for startup, taxi and take off for player flight	
	
	failure  = false,										-- (default : false), true : aircraft failures activated, works in SOLO, bug in MP, M20
	failureProbMax  = 10,									-- (1 to 100) probabilité maximum sur une panne _ Miguel21 modification M20
	failureNbMax  = 5,										-- ( 1 to ...57?) Max failures number in one mission _Miguel21 modification M20	
	
	Keep_USNdeckCrew  = false,								-- (default : false), false : supprime US Navy deck crew dans la génération de mission (Ceci n'installe/desinstalle pas le MOD USN) Miguel Modification M23	
	
	OnlyDayMission  = true,									-- (default : false), true: Force all missions to be played in daylight (Mod M25)
	HourlyTolerance  = 2,									-- %, When activating OnlyDayMission, allows you to play a little before or a little after the day. In percentage terms	
	
	MovedBullseye  = true,									-- (default : true), true : Moves the bullseye to each mission	
	TriggerStart  = true,									-- (default : true), true: All planes appear at mission start (No freeze), but problems with using Mission Planner (Attack planes often don't attack target). false: some Planes appear during the mission so some freezes could occur but Mission Planner can be used without bugs ( M30 )	
	
	CVN_CleanDeck  = false,									-- (default : false), true: Remove all static aircraft from the deck. ( M31 )
	CVN_TimeBtwPlane  = 45,									-- (default : false), Time between each aircraft for catapulting
	CVN_Vmax  = 10,											-- (default : 15.4333( m/s):30kts), can have bp with F14, go down to 10 m/s
	CVN_windDeck  = 9,										-- (default : 13.89( m/s):27kts), can have bp with F14, go down to 9 m/s
	CVN_despawnAfterLanding  = true,						-- (default : true) despawn aircraft landing on CVN and LHA ,this avoids collisions between taxxing and landing aircraft
	SC_SpawnOn = {
		["F-14B"]  = "deck",									-- (default: "deck"), "catapult", "air"
		["E-2C"]  = "deck",									--
		["S-3B Tanker"]  = "deck",								--
		["Pedro"]  = "deck",									--
	},
	SC_CarrierIntoWind  = "man",							-- (defaut: "auto")("man"), "auto": Original Mbot code: the CVN rotates according to the air operations. "man": the CVN runs only once via the commands in the radio menu F10 		
	
	MP_PlaneRecovery  = false,								--  (defaut: false) In multiplayer, this allows you to control an aircraft already in flight in case of a crash. M11.q
	WrittenOnScratchpadMod  = true,							--fills the scratchpad MOD sheet, for the moment, only works if DCS is not launched.
	backupAllMissionFiles  = true,							-- (defaut: false) only the last mission is saved //true: save all missions in the Debriefing directory,
	
	Slider_CampaignDuration   = false,						-- (false/default: no change)(1: fast)(2: medium)(3: long/recommended)(4: very long)			influences the length of the campaign
	Slider_EnemyLevel  = false,								-- (false/default: no change)(1: easy)(2: medium)(3: difficult/recommended)(4: very difficult)	changes the level of pilots, number of planes etc...
	
	SelectLoadout  = "central",								--(central/default) (init: for old campaigns, if the loadout file is located in the /Init folder)
}

-- Force your own options rather than those of base_ini.miz, which correspond to those of PBO-CEF ^^
-- Force vos propres options plutot que ceux de base_ini.miz, qui correspondent à ceux de PBO-CEF ^^
mission_forcedOptions = {
	["wakeTurbulence"]  = true,								-- False / true : turbulence  [MP: recommend: false]
	["labels"]  = 0,										-- etiquette : ( 0 : aucune étiquette ) || ( 1 : étiquette PLEINE ) || ( 2 : étiquette abrégée )|| ( 3 : étiquette Plate )
	["optionsView"]  = "optview_all",						-- Vue de la Map F10: ( "optview_onlymap": ONLY the MAP) || ( "optview_myaircraft": only my plane on map) || ( "optview_allies": fog of war) || ( "optview_onlyallies" : Allied only  ) || ( "optview_all" : every visible targets and planes on map allowed by campaign maker : usefull to program JDAM or JSAW | non target units will stay invisible to player )
	["externalViews"]  = true,								-- False / true : Vue externe
	["permitCrash"]  = true,								-- False / true : Récupération de crash
	["miniHUD"]  = false,									-- False / true : Mini HUD
	["cockpitVisualRM"]  = true,							-- False / true : Mod reconnaissance Visuel dans le cockoit
	["userMarks"]  = true,									-- False / true : autorise les marqueurs sur la vue MAP F10
	["civTraffic"]  = "",									-- Traffic civil routier : ( "" : OFF ) || ( "low" : BAS ) || ( "medium" : MOYEN )|| ( "high" : ELEVE )  [MP: recommend: ""]
	["birds"]  = 100,										-- Collision volatile (probabilité) ( 0 à 1000 )  [MP: recommend: 0]
	["cockpitStatusBarAllowed"]  = false,					-- False / true : Barre d'état cockpit
	["RBDAI"]  = true,										-- False / true : Evaluation des dommages au combat
}

TargetPointF14_BullsToFP = true							-- assigns the BullsEye position to the NavPoint FP of the F-14
			
-- limit the number of F-14s (in the same Flight as the player) on the CVN to avoid taxiing collisions
limiteNbF14CVN = 4										-- advice 3 max is a good value






















-- 2 ############################################################################################################################################################
-- 2 ############################################################################################################################################################
--The options in this second part are exclusively reserved for the campaign editor. Players must not modify them.
-- 2 ############################################################################################################################################################	
-- 2 ############################################################################################################################################################


Debug = {
	AfficheFailure  = false,								-- affiche les infos Pannes Aléatoires
	AfficheFlight  = false,									-- affiche les infos des packages créés dans ATO_FlightPlan
	AfficheSol  = false,									-- affiche les infos des cibles encore intactes
	KillGround = {
		flag  = false,											-- Active la destruction aléatoires des cibles, via les options plus bas
		sideGround  = "red",									-- le camp où l'on veut détruire les unités
		sideTarget  = "blue",									-- les targets de notre camp
		pourcent  = 50,										-- pourcentage de chance que l'unité soit détruite (juste l'unité, pas le groupe)
	},
	Generator = {
		affiche  = false,										-- affiche les infos des premiers vols créés dans ATO_Generator
		nb  = 200,												-- nb de vol à afficher
		SpySquad  = "111.Filo",								-- affiche le passage de ce squad dans ATO_Generator
		SpyTask  = "CAP",										-- affiche le passage de ce squad ET de son Task dans ATO_Generator (pas encore implanté)
	},
	checkTargetName  = true,								-- FirsMission Alerte si les noms des targets possede 1 espace en premier ou en dernier
	checkTargetName2Space  = true,							-- FirsMission Alerte si les noms des targets possede 2 espaces consécutif			
}

-- soit avec une valeur par caterorie RepairSAM RepairAirbase etc
campMod = {
	RepairMinimumDestroyed  = 25,							-- ne répare pas si le target.alive est inférieur à
	RepairSAM  = 15,										-- en %, Only CampaignMaker please
	RepairAirbase  = 12,									-- en %, Only CampaignMaker please
	RepairStation  = 8,										-- en %, Only CampaignMaker please
	RepairBridge  = 8,										-- en %, Only CampaignMaker please
	Repair  = 2,											-- en %, Only CampaignMaker please	
	
	KillTargetValue  = 20,									-- en %, si la vie du Target est < 20%, on déclare les survivants mort, pour éviter d'y retourner.
		
	MovedBullseye = {
		caucasus = {
			pos = {
				x  = -281713,										--Kolkhi']
				y  = 647369,											--Kolkhi']
			},
			rayon  = 200,											-- distance en Km autour de laquelle on peut placer le bullsEye
		},
		persiangulf = {
			pos = {
				x  = 64800.714844,									-- Qeshm Island
				y  = -33383.481445,									-- Qeshm Island
			},
			rayon  = 200,											-- distance en Km autour de laquelle on peut placer le bullsEye
		},
		syria = {
			pos = {
				x  = -22163,											-- Israel Line 974
				y  = -11800,											-- Israel Line 974
			},
			rayon  = 200,											-- distance en Km autour de laquelle on peut placer le bullsEye
		},
		normandy = {
			pos = {
				x  = -26144.085385954,								--26144.085385954,	
				y  = -41381.855008994,								--41381.855008994,		
				},
			rayon  = 200,											-- distance en Km autour de laquelle on peut placer le bullsEye
		},
	},
	
	-- reglage composition Package
	Setting_Generation = {
		["limit_escort"]  = 8,									-- (default : 99)(recommended : 8), limit escort number to
	},
	
	StrikeOnlyWithEscorte  = false,							-- (default : true) strikes are possible with only one escort
}

-- modif Miguel21 M05.b : ajout picture Briefing + pictures Target

		 -- "FrontlineGulf.png",
		 -- "TF-Infos.png",
		 -- "TF-71.png",
	-- },
		 -- "FrontlineGulf.png",
		 -- "TF-71.png",
	-- },
-- }
pictureBrief = {
	['blue'] = {
		[1] = 'Cyprus_situation1.png',
	},
	['red'] = {
		[1] = 'Cyprus.png',
	},
}
