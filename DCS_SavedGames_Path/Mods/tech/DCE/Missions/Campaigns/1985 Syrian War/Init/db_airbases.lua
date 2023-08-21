--
--
------------------------------------------------------------------------------------------------------- 
-- Miguel Fichier Revision M33.d
------------------------------------------------------------------------------------------------------- 
-- Miguel21 modification M33.d VOR + NDB Custom Briefing (d: Divert)

--[[ db_airbases Entry Example ----------------------------------------------------------------------------
	--example for an air base
	['Kerman Airbase'] = {
		x =	454116.78125,
		y = 71096.058594,
		elevation = 1751,
		airdromeId = 18,
		ATC_frequency = "250.300",
		--startup = 300,							-- (secondes) Timing for take-off, generally used for small runways to give time for all aircraft to gather together
		side = "red",								-- side : Required information for the divert
		divert = true,								-- divert : Required information for the divert)
		--VOR = "112.00",							-- optional information
		--NDB = "",									-- optional information
		--TACAN = "97X",							-- TACAN : optional information
		--ILS = "RWY 30R/111.95 RWY 12L/108.55",	-- ILS : optional information
		LimitedParkNb = 3,							-- number of parking spaces available
	},
	--example for an airplane carrier
	['CVN-71 Theodore Roosevelt'] = {                            
		unitname = "CVN-71 Theodore Roosevelt",
		startup = 300,								-- (secondes) Timing for take-off, generally used for small runways to give time for all aircraft to gather together
		ATC_frequency = "255.500",					-- Optional information, if absent, the base_mission frequency will be used.
	},	
	--example for a FARP
	['As Salamah FARP'] = {
		x =	-74348.375716192,
		y = -67705.331836707,
		elevation = 0,
		airdromeId = 837,							--be careful this Id depends on units placements and is helipadID in fact
		helipadId = 837,
		ATC_frequency = "128.600",
		side = "blue",								-- side : Required information for the divert
		divert = false,								-- divert : Required information for the divert)
	},	
	--example for a Virtual Base
	['Reserves'] = {								--dummy airbase to place virtual reserves
		inactive = true,
		x =	9999999999,								--position far away will make all range checks negative
		y = 9999999999,
		elevation = 0,
		airdromeId = nil,							--no id makes sure that no static aircraft are to be placed at this air base
		ATC_frequency = "0",
	},

]]-----------------------------------------------------------------------------------------------------

db_airbases = {


	--[[
	Turkish Air Force Units

	111th Squadron "Panther" (111. Filo "Panter") - F-4E 2020T Terminator (last operational F-4 unit)
	112th Squadron "Devil" (112. Filo "Şeytan") (temporarily disbanded in anticipation of F-35As[146])
	113th Squadron "Gazelle" (113. Filo "Ceylan") - F-16C/D Block 30/50 Fighting Falcon[147][148][149] (SNIPER and DB.110 recon pods-specialised. The former 113th Squadron "Light" ("Işık") flying RF-4E 

	01st Test Squadron (401. Test Filosu) - F-16C/D Block 30/40, F-4E 2020 (weapons testing and evaluation squadron, took over this role from the 132nd Squadron[152])

	131st Squadron "Dragon" (131. Filo "Ejder") - B-737-7ES AEW&C (AEW squadron)
	132nd Squadron "Dagger" (132. Filo "Hançer") - F-16C/D Block 50 Fighting Falcon

	151st Squadron "Bronze" (151. Filo "Tunç")[147][155][156][157] - F-16C/D Block 40/50 Fighting Falcon (HARM-specialised)
	152nd Squadron "Raider" (152. Filo "Akıncı") - F-16C/D Block 40 Fighting Falcon[158] (relocated to Incirlik Air Base to free facilities at Merzifon for the relocation of 4th Main Jet Base's 143rd Squadron from Ankara-Akıncı, but retained as part of 5th Main Jet Base Command)
	153rd Squadron "Forefather" (153. Filo "Öncel") - F-16C/D Block 30/40 Fighting Falcon (F-16 OCU, the former 4th Main Jet Base's (in Ankara-Akıncı) 143rd Squadron in the OCU role, relocated to Merzifon and rebadged as the 153rd.)

	161st Squadron "Bat" (161. Filo "Yarasa") - F-16C/D Block 40/50+ Fighting Falcon (LANTIRN-specialised)
	162nd Squadron "Harpoon" (162. Filo "Zıpkın") - F-16C/D Block 40 Fighting Falcon


	181st Squadron "Leopard" (181. Filo "Pars") - F-16C/D Block 40TM/Block 50+ Fighting Falcon (LANTIRN-specialised)
	182nd Squadron "Accipiter" (182. Filo "Atmaca") - F-16C/D Block 40 Fighting Falcon
	202nd Liaison and SAR Squadron "East" (202. İrtibat ve Arama-Kurtarma Filosu "Şark") - CN-235M-100, AS-532UL Mk.1+






		https://military-history.fandom.com/wiki/List_of_Syrian_Air_Force_squadrons

	Syrian Air Force Units:[1]

	Abu al-Duhur AFB
	678 Squadron [MiG-23MS]
	2 Squadron [L-39ZO]
	??? Squadron [L-39ZO]

	Afis AFB (also called Taftanaz)
	253 Squadron [Mi-8 Hip C/H]
	255 Squadron [Mi-8 Hip C/H]

	Aleppo AFB (Regional overhaul centre)
	??? Squadron [Mi-8 Hip C]
	??? Squadron [Mi-8 Hip C]

	al Mezzeh AFB
	One Brigade:
	976 Squadron [SA-342L]
	977 Squadron [SA-342L]
	988 Squadron [SA-342M]
	989 Squadron [SA-342M]

	al Qusayr AFB
	825 Squadron [MiG-21Bis]
	826 Squadron [Su-27SK] - Unconfirmed

	an Nasiriya AFB
	695 Squadron [MiG-23BN/UB]
	698 Squadron [MiG-23BN/UB]

	as Suwayda AFB
	One Wing:
	765 Squadron [Mi-25]
	766 Squadron [Mi-25]

	Damascus/Intl AFB
	29th Brigade:
	522 Squadron [An-24/An-26/Il-76]
	565 Squadron [Yak-40]
	575 Squadron [Dassault Falcon 20E/900]
	585 Squadron [Tu-134]

	Deir Zzor AFB
	8 Squadron [MiG-21MF/UM]

	Dumayr AFB
	67 Squadron [MiG-23ML]
	??? Squadron [Su-22M-2]

	Hamah AFB
	679 Squadron [MiG-21MF/UM]
	680 Squadron [MiG-21MF/UM]
	??? Squadron [MiG-29]

	Jirah AFB
	??? Squadron [L-39ZA]
	Khalkhalah AFB
	945 Squadron [MiG-21Bis]
	946 Squadron [MiG-21Bis]

	Marj As Sultan AFB
	525 Squadron [Mi-8 Hip C/H]
	537 Squadron [Mi-8 Hip C/H]
	909 Squadron [Mi-8] VIP
	??? Squadron [Mi-8 Hip H/J/K] - EW

	Marj Ruhayyil AFB
	54 Squadron [MiG-23ML]
	77 Squadron [MiG-23ML/UM]
	767 Squadron [Mi-25]

	Minakh AFB
	4 FTS [Mi-8 Hip C, MBB 223 Flamingo]

	Qabr as Sitt AFB
	532 Squadron [Mi-2/Mi-8 Hip C/H]

	Rasin el Aboud AFB (also called Kuwayris)
	3 FTS [L-39ZA, MBB 223 Flamingo]

	Saiqal/Tsaykal AFB
	697 Squadron [MiG-29]
	698(?) Squadron [MiG-29]
	699 Squadron [MiG-29]

	Shayrat AFB
	675 Squadron [MiG-23MF/UM]
	677 Squadron [Su-22M-2]
	685 Squadron [Su-22M-4]

	Tabqa AFB
	12 Squadron [MiG-21MF/UM]
	Base flight - 24 Brigade [Mi-8]

	Tiyas AFB
	1 Squadron [MiG-25PD/PU/RB]
	5 Squadron [MiG-25PD/PU/RB]
	7 Squadron [MiG-25PD/PU/RB] - Disbanded[2]
	819 Squadron [Su-24MK]
	827 Squadron [Su-22M-4]
	Fighter/FGA squadrons
	10 Squadron [MiG-21] - Location unknown.

	Bassel Al-Assad AFB
	618 Squadron [Mi-14,Ka-25,Ka-27] - Naval aviation

	]]
	-- ['Sanliurfa Airbase'] = {
		-- x =	,
		-- y = ,
		-- elevation = xxx,
		-- airdromeId = xx,
		-- ATC_frequency = "252.350",
		-- ---ATC_frequency = "118.400",
		-- -- ATC_frequency = "40.800",
		-- -- ATC_frequency = "4.950",
		-- startup = 300,
		-- side = "red",							-- side : info obligatoire
		-- divert = true,							-- divert : info obligatoire (pour l instant)
		-- -- VOR = "",
		-- -- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		-- LimitedParkNb = 11,
	-- },

	-- blue coal: USA, Turkish, UK, Italy, Germany, Israely, Georgia
	-- red: Russia, Syria, Lebanon, Lybia, France, Abkhazia, Ossetia
	-- neutral: Jordan,

	-- blue navy
	['CVN-72 Abraham Lincoln'] = {                            
		unitname = "CVN-72 Abraham Lincoln",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		LimitedParkNb  = 9, 
		ATC_frequency = "272.500",				--si ATC_frequency non present, on utilise la freq de base_mission
	},
	
	['CVN-71 Theodore Roosevelt'] = {                            
		unitname = "CVN-71 Theodore Roosevelt",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		ATC_frequency = "275.500",			--si ATC_frequency non present, on utilise la freq de base_mission
		LimitedParkNb  = 9, 
	},	

	-- blue turkish
	['Incirlik'] = {
		x =	221207.765625,
		y = -35240.335938,
		elevation = 58,
		airdromeId = 16,
		ATC_frequency = "360.100",
		---ATC_frequency = "122.100",
		-- ATC_frequency = "38.700",
		-- ATC_frequency = "3.900",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		TACAN = "21X",							-- TACAN : optionnel
		ILS = "RWY 55/109.30 - RWY 235/111.70",							-- ILS : optionnel
		LimitedParkNb = 120,
	},
	['Adana Sakirpasa'] = {
		x =	219468.65625,
		y = -48332.732422,
		elevation = 17,
		airdromeId = 2,
		-- ATC_frequency = "39.450",
		-- ATC_frequency = "121.100",
		ATC_frequency = "251.000",
		-- ATC_frequency = "4.275",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "112.70",
		NDB = "395",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 56/108.70",							-- ILS : optionnel
		LimitedParkNb = 39,
	},
	['Gaziantep'] = {   
		x =	210314.796875,
		y = 147379.28125,
		elevation = 681,
		airdromeId = 11,
		-- ATC_frequency = "38.450",
		-- ATC_frequency = "120.100",
		ATC_frequency = "250.050",
		-- ATC_frequency = "3.775",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "116.70",
		NDB = "432",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 286/109.10",					-- ILS : optionnel
		LimitedParkNb = 12,
	},	
	['Gazipasa'] = {
		x =	158144.617188,
		y = -319392.546875,
		elevation = 24,
		airdromeId = 41,
		-- ATC_frequency = "40.100",
		-- ATC_frequency = "119.250",
		ATC_frequency = "251.650",
		-- ATC_frequency = "4.600",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "114.2",
		NDB = "316",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 86/108.50",							-- ILS : optionnel
		LimitedParkNb = 6,
	},
	--[[['Minakh Airbase'] = {
		x =	163697.53125,
		y = 107430.609375,
		elevation = 492,
		airdromeId = 26,
		-- ATC_frequency = "39.250",
		-- ATC_frequency = "120.600",
		ATC_frequency = "250.800",
		-- ATC_frequency = "4.175",
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 20,
	},]]
	['Hatay'] = {
		x =	147687.484375,
		y = 39418.742188,
		elevation = 77,
		airdromeId = 15,
		-- ATC_frequency = "38.650",
		-- ATC_frequency = "128.500",
		ATC_frequency = "250.250",
		-- ATC_frequency = "3.875",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "112.05",
		NDB = "336",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 44/108.90 - RWY 224/108.15",		-- ILS : optionnel
		LimitedParkNb = 10,
	},	

	-- blue Cyprus
	['Larnaca'] = {
		x =	 -7674.737061,
		y =  -208843.625,
		elevation = 5,
		airdromeId = 47,
		-- ATC_frequency = "40.350",
		-- ATC_frequency = "121.200",
		ATC_frequency = "251.900",
		-- ATC_frequency = "4.725",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "112.80",
		NDB = "432",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 228/110.80",							-- ILS : optionnel
		LimitedParkNb = 94,
	},
	--[[['Akrotiri Airbase'] = {
		x =	 -35778.628906,
		y =  -268906.125,
		elevation = 20,
		airdromeId = 44,
		-- ATC_frequency = "40.200",
		-- ATC_frequency = "128.000",
		ATC_frequency = "251.750",
		-- ATC_frequency = "4.650",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		NDB = "365",
		TACAN = "107X-116.00",							-- TACAN : optionnel
		ILS = "RWY 291/109.70",							-- ILS : optionnel
		LimitedParkNb = 41,
	},]]
	['Paphos'] = {
		x =	 -18696.34668,
		y =  -314208.375,
		elevation = 12,
		airdromeId = 46,
		-- ATC_frequency = "40.300",
		-- ATC_frequency = "119.900",
		ATC_frequency = "251.850",
		-- ATC_frequency = "4.700",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "117.90",
		NDB = "328",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 294/108.90",							-- ILS : optionnel
		LimitedParkNb = 49,
	},
	--[[['Pinarbashi Airbase'] = {             
		x =	 38639.882813,
		y =  -238774.6875,
		elevation = 235,
		airdromeId = 51,
		-- ATC_frequency = "40.600",
		-- ATC_frequency = "121.000",
		ATC_frequency = "252.150",
		-- ATC_frequency = "4.850",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 4,
	},]]
	--[[['Gecitkale Airbase'] = {             
		x =	 32144.729634,
		y =  -197767.51907,
		elevation = 45,
		airdromeId = 50,
		-- ATC_frequency = "40.550",
		-- ATC_frequency = "120.000",
		ATC_frequency = "252.100",
		-- ATC_frequency = "4.825",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "114.30",
		NDB = "435",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 3,
	},]]
	--[[['Ercan Airbase'] = {             
		x =	 24250.327148,
		y =  -218240.28125,
		elevation = 117,
		airdromeId = 49,
		-- ATC_frequency = "40.450",
		-- ATC_frequency = "120.200",
		ATC_frequency = "252.000",
		-- ATC_frequency = "4.775",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		VOR = "117.00",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 7,
	},]]
	--[[['Lakatamia Airbase'] = {             
		-- Helicopter base
		x =	 19561.164063,
		y =  -234985.75,
		elevation = 231,
		airdromeId = 48,
		-- ATC_frequency = "40.400",
		-- ATC_frequency = "120.200",
		ATC_frequency = "251.950",
		-- ATC_frequency = "4.750",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 8,
	},]]
	['FARP-Hatay FARP'] = {                            
		x =	143464.08813154,
		y = 41871.567590793,
		elevation = 69,
		airdromeId = 101,	--be careful this Id depends on units placements and is helipadID in fact
		helipadId = 101,
		ATC_frequency = "129.500",
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 4,
	},
	['Silifke Storage FARP'] = {                           
		y = -175103.09885755,
		x = 151534.80750016,
		elevation = 8,
		airdromeId = 199,	--be careful this Id depends on units placements and is helipadID in fact
		helipadId = 199,
		ATC_frequency = "129.600",
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 4,
	},
	--[[['Ramat David'] = {             
		x =	 -259102.132813,
		y =  -75789.410156,
		elevation = 36,
		airdromeId = 30,
		-- ATC_frequency = "39.500",
		-- ATC_frequency = "118.600",
		ATC_frequency = "251.050",
		-- ATC_frequency = "4.300",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		NDB = "368",
		TACAN = "84X - 113.70",							-- TACAN : optionnel
		ILS = "RWY 326/111.10",							-- ILS : optionnel
		LimitedParkNb = 42,
	},]]
	['Naqoura'] = {             -- UN helibase
		-- Helicopter base
		x =	 -209938.1875,
		y =  -78642.609375,
		elevation = 115,
		airdromeId = 52,
		-- ATC_frequency = "40.650",
		-- ATC_frequency = "122.000",
		ATC_frequency = "252.200",
		-- ATC_frequency = "4.875",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 9,
	},




	-- red
	--[[['Aleppo Airbase'] = {
		x =	125576.863281,
		y = 123125.304688,
		elevation = 382,
		airdromeId = 27,
		-- ATC_frequency = "39.300",
		-- ATC_frequency = "119.100",
		ATC_frequency = "250.850",
		-- ATC_frequency = "4.200",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "114.50",
		NDB = "396",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 8,
	},]]
	--[[['Kuweires Airbase'] = {   
		x =	125810.890625,
		y = 155253.8125,
		elevation = 366,
		airdromeId = 31,
		-- ATC_frequency = "39.550",
		-- ATC_frequency = "120.500",
		ATC_frequency = "251.100",
		-- ATC_frequency = "4.325",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 37,
	},]]
	--[[['Jirah Airbase'] = {  
		x =	115359.652344,
		y = 187020.734375,
		elevation = 353,
		airdromeId = 17,
		-- ATC_frequency = "38.750",
		-- ATC_frequency = "118.100",
		ATC_frequency = "250.300",
		-- ATC_frequency = "3.925",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 28,
	},]]
	['Taftanaz'] = { --helibase
		x =	103485.980469,
		y = 82766.671875,
		elevation = 311,
		airdromeId = 38,
		-- ATC_frequency = "39.900",
		-- ATC_frequency = "122.800",
		ATC_frequency = "251.450",
		-- ATC_frequency = "4.500",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 48,
	},
	['Tabqa'] = {
		x =	76964.6875,
		y = 243605.210938,
		elevation = 335,
		airdromeId = 37,
		-- ATC_frequency = "39.850",
		-- ATC_frequency = "118.500",
		ATC_frequency = "251.400",
		-- ATC_frequency = "4.475",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 27,
	},	
	--[[['Abu al-Duhur'] = {
		x =	76048.957031,
		y = 111344.925781,
		elevation = 250,
		airdromeId = 1,
		--  ATC_frequency = "38.900",
		-- ATC_frequency = "122.200",
		ATC_frequency = "250.450",
		-- ATC_frequency = "4.000",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 36,
	},]]
	['Bassel Al-Assad'] = {
		x =	41994.498047,
		y = 5841.909424,
		elevation = 29,
		airdromeId = 21,
		-- ATC_frequency = "39.000",
		-- ATC_frequency = "118.100",
		ATC_frequency = "250.550",
		-- ATC_frequency = "4.050",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "114.80",
		NDB = "414",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 179/109.10",							-- ILS : optionnel
		LimitedParkNb = 53,
	},
	['Hama'] = {
		x =	8662.594238,
		y = 74333.1875,
		elevation = 300,
		airdromeId = 14,
		-- ATC_frequency = "38.600",
		-- ATC_frequency = "118.050",
		ATC_frequency = "250.200",
		-- ATC_frequency = "3.850",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 46,
	},
	--[[['Rene Mouawad Airbase'] = {
		x =	-48306.007813,
		y = 8690.693604,
		elevation = 5,
		airdromeId = 33,
		-- ATC_frequency = "39.650",
		-- ATC_frequency = "121.000",
		ATC_frequency = "251.200",
		-- ATC_frequency = "4.375",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		NDB = "450",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 13,
	},]]
	--[[['Al Qusayr Airbase'] = {  
		x =	-51906.964844,
		y = 60013.205078,
		elevation = 527,
		airdromeId = 3,
		-- ATC_frequency = "40.000",
		-- ATC_frequency = "119.200",
		ATC_frequency = "251.550",
		-- ATC_frequency = "4.550",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 34,
	},]]
	['Palmyra'] = {  
		x =	-55704.023438,
		y = 220114.742188,
		elevation = 394,
		airdromeId = 28,
		-- ATC_frequency = "39.350",
		-- ATC_frequency = "121.900",
		ATC_frequency = "250.900",
		-- ATC_frequency = "4.225",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		NDB = "337",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 22,
	},
	--[[['Tiyas Airbase'] = {
		x =	-58907.53125,
		y = 157071.484375,
		elevation = 548,
		airdromeId = 39,
		-- ATC_frequency = "39.950",
		-- ATC_frequency = "120.500",
		ATC_frequency = "251.500",
		-- ATC_frequency = "4.525",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 81,
	},]]
	--[[['Shayrat Airbase'] = {
		x =	-61368.207031,
		y = 90675.136719,
		elevation = 804,
		airdromeId = 36,
		-- ATC_frequency = "39.800",
		-- ATC_frequency = "120.200",
		ATC_frequency = "251.350",
		-- ATC_frequency = "4.450",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 56,
	},]]
	--[[['Wujah Al Hajar Airbase'] = {
		x =	-81524.375,
		y = -22832.533203,
		elevation = 198,
		airdromeId = 40,
		-- ATC_frequency = "40.050",
		-- ATC_frequency = "121.500",
		ATC_frequency = "251.600",
		-- ATC_frequency = "4.575",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "116.20",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 6,
	},]]
	['An Nasiriyah'] = {
		x =	-124683.738281,
		y = 85510.820313,
		elevation = 832, 
		airdromeId = 4,
		-- ATC_frequency = "40.500",
		-- ATC_frequency = "122.300",
		ATC_frequency = "252.050",
		-- ATC_frequency = "4.800",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 20,
	},
	--[[['Rayak Airbase'] = {
		x =	-130132.492188,
		y = 4053.336304,
		elevation = 909, 
		airdromeId = 32,
		-- ATC_frequency = "39.600",
		-- ATC_frequency = "124.400",
		ATC_frequency = "251.150",
		-- ATC_frequency = "4.350",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 12,
	},]]
	['Beirut-Rafic Hariri'] = {
		x =	-131310.8125,
		y = -42286.496094,
		elevation = 12,
		airdromeId = 6,
		-- ATC_frequency = "41.050",
		-- ATC_frequency = "118.900",
		ATC_frequency = "252.600",
		-- ATC_frequency = "5.075",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "112.60",
		NDB = "351",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 169/110.10 - RWY 179/109.50 - RWY 35/110.70",		-- ILS : optionnel
		LimitedParkNb = 34,
	},
	--[[['Sayqal'] = {
		x =	-151781.367188,
		y = 117529.734375,
		elevation = 693,
		airdromeId = 35,
		-- ATC_frequency = "39.750",
		-- ATC_frequency = "120.400",
		ATC_frequency = "251.300",
		-- ATC_frequency = "4.425",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 59,
	},]]
	--[[['Al-Dumayr Airbase'] = {
		x =	-158713.039063,
		y = 73973.316406,
		elevation = 630,
		airdromeId = 9,
		-- ATC_frequency = "41.200",
		-- ATC_frequency = "120.300",
		ATC_frequency = "252.750",
		-- ATC_frequency = "5.150",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 57,
	},]]
	--[[['Marj as Sultan North Airbase'] = {
		-- Helicopter base
		x =	-170244.028992,
		y = 47506.718825,
		elevation = 612,
		airdromeId = 22,
		-- ATC_frequency = "39.050",
		-- ATC_frequency = "122.700",
		ATC_frequency = "250.600",
		-- ATC_frequency = "4.075",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",			-- ILS : optionnel
		LimitedParkNb = 14,
	},]]
	--[[['Marj as Sultan South Airbase'] = {
		-- Helicopter base
		x =	-171711.336701,
		y = 48243.74032,
		elevation = 612,
		airdromeId = 8,
		-- ATC_frequency = "41.150",
		-- ATC_frequency = "122.900",
		ATC_frequency = "252.700",
		-- ATC_frequency = "5.125",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",			-- ILS : optionnel
		LimitedParkNb = 20,
	},]]
	--[[['Mezzeh'] = {   
		x =	-172160.453125,
		y = 24865.682617,
		elevation = 720,
		airdromeId = 25,
		-- ATC_frequency = "39.200",
		-- ATC_frequency = "120.700",
		ATC_frequency = "250.750",
		-- ATC_frequency = "4.150",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 28,
	},]]
	--[[['Qabr as Sitt Airbase'] = {
		-- Helicopter base
		x =	 -174597.761535,
		y =  37221.970678,
		elevation = 651,
		airdromeId = 29,
		-- ATC_frequency = "39.400",
		-- ATC_frequency = "122.600",
		ATC_frequency = "250.950",
		-- ATC_frequency = "4.250",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 8,
	},]]

	['Damascus'] = {
		x =	 -178652.320313,
		y =  52081.296875,
		elevation = 612,
		airdromeId = 7,
		-- ATC_frequency = "41.400",
		-- ATC_frequency = "118.500",
		ATC_frequency = "252.650",
		-- ATC_frequency = "5.100",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "116.00",
		NDB = "342",
		-- TACAN = "",							-- TACAN : optionnel
		ILS = "RWY 230/109.90 - 50/111.10",							-- ILS : optionnel
		LimitedParkNb = 90,
	},

	['Deir ez-Zor'] = {
		x =	 25461,
		y =  389768,
		elevation = 218,
		airdromeId = 42,
		-- ATC_frequency = "41.400",
		--ATC_frequency = "118.100",
		ATC_frequency = "251.700",
		-- ATC_frequency = "5.100",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "117.00",
		NDB = "295",
		--TACAN = "",							-- TACAN : optionnel
		--ILS = "RWY 230/109.90 - 50/111.10",							-- ILS : optionnel
		LimitedParkNb = 90,
	},

	--[[['Marj Ruhayyil Airbase'] = {             
		x =	 -194233.6875,
		y =  46043.976563,
		elevation = 659,
		airdromeId = 23,
		-- ATC_frequency = "39.100",
		-- ATC_frequency = "120.800",
		ATC_frequency = "250.650",
		-- ATC_frequency = "4.100",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 33,
	},]]

	--[[['Kiryat Shmona Airbase'] = {             
		x =	 -199486.164063,
		y =  -34500.691406,
		elevation = 101,
		airdromeId = 20,
		-- ATC_frequency = "38.950",
		-- ATC_frequency = "118.400",
		ATC_frequency = "250.500",
		-- ATC_frequency = "4.025",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 5,
	},]]

	['Khalkhalah'] = {             
		x =	 -218620.25,
		y =  56161.078125,
		elevation = 724,
		airdromeId = 18,
		-- ATC_frequency = "38.800",
		-- ATC_frequency = "122.500",
		ATC_frequency = "250.350",
		-- ATC_frequency = "3.950",
		startup = 300,
		side = "red",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 35,
	},
	-- blue israele
	--[[['Rosh Pina Airbase'] = {             
		x =	 -225277.733943,
		y =  -37687.536255,
		elevation = 265,
		airdromeId = 34,
		-- ATC_frequency = "39.700",
		-- ATC_frequency = "118.450",
		ATC_frequency = "251.250",
		-- ATC_frequency = "4.400",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		VOR = "115.30",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 9,
	},]]
	--[[['Haifa Airbase'] = {             
		x =	 -242620.8125,
		y =  -87704.417969,
		elevation = 6,
		airdromeId = 13,
		-- ATC_frequency = "38.550",
		-- ATC_frequency = "127.800",
		ATC_frequency = "250.150",
		-- ATC_frequency = "3.825",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 11,
	},]]
	--[[['Tha lah Airbase'] = {             
		x =	 -258434.929688,
		y =  40368.677734,
		elevation = 733,
		airdromeId = 5,
		-- ATC_frequency = "40.900",
		-- ATC_frequency = "122.400",
		ATC_frequency = "252.450",
		-- ATC_frequency = "5.000",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 16,
	},]]
	
	--[[['Meggido Airbase'] = {             
		x =	 -266965.015625,
		y =  -71068.832031,
		elevation = 55,
		airdromeId = 24,
		-- ATC_frequency = "39.150",
		-- ATC_frequency = "119.900",
		ATC_frequency = "250.700",
		-- ATC_frequency = "4.125",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 9,
	},]]
	--[[['H4 Airbase'] = {             
		x =	 -279366.765625,
		y =  207219.265625,
		elevation = 688,
		airdromeId = 12,
		-- ATC_frequency = "38.500",
		-- ATC_frequency = "122.600",
		ATC_frequency = "250.100",
		-- ATC_frequency = "3.800",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 12,
	},]]
	--[[['Eyn Shemer Airbase'] = {             
		x =	 -283538.6875,
		y =  -92619.707031,
		elevation = 31,
		airdromeId = 10,
		-- ATC_frequency = "38.400",
		-- ATC_frequency = "123.400",
		ATC_frequency = "250.000",
		-- ATC_frequency = "3.750",
		startup = 600,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 5,
	},]]
	--[[['King Hussein Air College Airbase'] = {             
		x =	 -296592.405413,
		y =  24944.355658,
		elevation = 672,
		airdromeId = 19,
		-- ATC_frequency = "38.850",
		-- ATC_frequency = "118.300",
		ATC_frequency = "250.400",
		-- ATC_frequency = "3.975",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		divert = false,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 52,
	},]]
	
	--[[['Kingsfield Airbase'] = {
		x =	 7596.761963,
		y =  -199426.492188,
		elevation = 86,
		airdromeId = 45,
		-- ATC_frequency = "40.250",
		-- ATC_frequency = "121.000",
		ATC_frequency = "251.800",
		-- ATC_frequency = "4.675",
		startup = 600,
		side = "red",							-- side : info obligatoire
		divert = true,							-- divert : info obligatoire (pour l instant)
		-- VOR = "",
		-- NDB = "",
		-- TACAN = "",							-- TACAN : optionnel
		-- ILS = "",							-- ILS : optionnel
		LimitedParkNb = 2,
	},]]
	
	







	
	

	--[[['LHA_Tarawa'] = {
		unitname = "LHA_Tarawa",
		startup = 300,
		side = "blue",							-- side : info obligatoire
		ATC_frequency = "250.255",				--si ATC_frequency non present, on utilise la freq de base_mission
		LimitedParkNb  = 4,
	},]]
	
	-- ['LHA_Nassau'] = {
		-- unitname = "LHA_Nassau",
		-- startup = 300,
		-- side = "blue",							-- side : info obligatoire
		-- ATC_frequency = "243.000",				--si ATC_frequency non present, on utilise la freq de base_mission	
		-- LimitedParkNb  = 4,
	-- },
	-- ['Al Ima FARP'] = {                            ----Crisis in PG campaigns only
		-- x =	-24720.872961233,
		-- y = 17485.114619878,
		-- elevation = 0,
		-- airdromeId = 1345,	--be careful this Id depends on units placements and is helipadID in fact
		-- helipadId = 1345,
		-- ATC_frequency = "128.500",
		-- side = "red",							-- side : info obligatoire
		-- divert = false,							-- divert : info obligatoire (pour l instant)
		-- -- TACAN = "",							-- TACAN : optionnel
		-- -- ILS = "",							-- ILS : optionnel
		-- LimitedParkNb = 4,
	-- },
	-- ['Jazirat al Hamra FARP'] = {        ----Crisis in PG campaigns only
		-- x =	-52316.710452899,
		-- y = -43324.847012614,
		-- elevation = 0,
		-- airdromeId = 837,	--be careful this Id depends on units placements and is helipadID in fact
		-- helipadId = 837,
		-- ATC_frequency = "243.000",
		-- side = "blue",							-- side : info obligatoire
		-- divert = false,							-- divert : info obligatoire (pour l instant)
		-- -- TACAN = "",							-- TACAN : optionnel
		-- -- ILS = "",							-- ILS : optionnel
		-- LimitedParkNb = 4,
	-- },
	-- ['FARP_Dublin'] = {
		-- x =	-31022.039393941,
		-- y = -122995.27024236,
		-- elevation = 12,
		-- airdromeId = 520,	--be careful this Id depends on units placements and is helipadID in fact
		-- ATC_frequency = "127.700",
	-- },
	-- ['FARP_Moscow'] = {
		-- x =	-27476.648084292,
		-- y = -170572.10615715,
		-- elevation = 6,
		-- airdromeId = 521,	--be careful this Id depends on units placements and is helipadID in fact
		-- ATC_frequency = "127.800",
	-- },	
	['Reserves'] = {						--dummy airbase to place virtual reserves
		inactive = true,
		x =	9999999999,						--position far away will make all range checks negative
		y = 9999999999,
		elevation = 0,
		airdromeId = nil,					--no id makes sure that no static aircraft are to be placed at this air base
		ATC_frequency = "251.0000",
	},	
}
	