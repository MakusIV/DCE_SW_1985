-- CAP: p:20, fp: 2-2
-- Ship convoy p:1, fp:6-12
-- OCA Strike: p:1, fp: 2-4
-- EWR/ELINT Site: p:5, fp: 2-4
-- SAM Site: p:6, fp: 3-6
-- FASP AA: p:2, fp: 2-4 
-- FARP: p:6, fp 5-8
-- Airbase: p:4, fp:4-8
-- SUPPLY Plant: p:4, fp:4-10
-- Long SUPPLY Line: p:1-2, fp:6-12
-- SUPPLY Line: p:6, fp:4-8
-- Ground Troops: p:1, fp:2-4
-- Bidge: p:3, fp:2-4
-- Airbase Defenses: p:2, fp:4-8

-- ATT: nella proprietà slaved = nome gruppo (NO nome unità o nome targetlist)

-- la firepower per le missioni A2A (Intercept, sweep, CAP) deve essere calcolata con riferimento al 1 a 1: un aereo per ogni nemico.
-- intercept 
-- 
--[[

new firepower definition:


["Russian Convoy 1"] = {
			task = "Anti-ship Strike",
			priority = 1,
			attributes = {"ship"},
			dimesnion = "mix",
			num_targets_element = 8, -- 8 ship se lo inserisci nella funzione non è necessario definirlo qui
			num_dedicated_weapon_for_destroy_element = 3, -- 3 ASM ship se lo inserisci nella funzione non è necessario definirlo qui
			
			firepower = {				
				min = evaluate_target_firepower( num_targets_element = 8, num_dedicated_weapon_for_destroy_single_element = 3, "min", attribute = {"ship"}, task = "Anti-ship Strike"), -- 
				max = evaluate_target_firepower( num_targets_element = 8, num_dedicated_weapon_for_destroy_single_element = 3, "max", attribute = {"ship"}, task = "Anti-ship Strike" ), --
			},
			class = "ship",
.			name = "Russian Convoy 1",
		},


5 ship convoy -> min firepower: 7, max firepower: 10
standard SAM-2 site: 7 elements -> min firepower: 9, max firepower: 14 
airport oca strike: 15 elements(structure and aircraft) -> min firepower: 9, max firepower: 14 
]]


targetlist = {   

	["blue"] = {

		-- Production & Storage
		["Hin Shinshar Chemical Storage"] = { --fatto
			task = "Strike",
			priority = 4,
			picture = {"Hin _hinshar_Chemical_Storage.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Hin Shinshar Chemical Storage 1",
				},
				[2] = {
					name = "Hin Shinshar Chemical Storage 2",
				},
				[3] = {
					name = "Hin Shinshar Chemical Storage 3",
				},
				[4] = {
					name = "Hin Shinshar Chemical Storage 4",
				},
				[5] = {
					name = "Hin Shinshar Chemical Storage 5",
				},
				[6] = {
					name = "Hin Shinshar Chemical Storage 6",
				},
				[7] = {
					name = "Hin Shinshar Chemical Storage 7",
				},
				[8] = {
					name = "Hin Shinshar Chemical Storage 8",
				},
				[9] = {
					name = "Hin Shinshar Chemical Storage 9",
				},
				[10] = {
					name = "Hin Shinshar Chemical Storage 10",
				},
				[11] = {
					name = "Hin Shinshar Chemical Storage 11",
				},
				[12] = {
					name = "Hin Shinshar Chemical Storage 12",
				},
			},
		},

		["Khirbet Tin Nur Chemical Storage"] = { --fatto
			task = "Strike",
			priority = 4,
			picture = {"Khirbet_Tin_Nur_Chemical_Storage.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Khirbet Tin Nur Chemical Storage 1",
				},
				[2] = {
					name = "Khirbet Tin Nur Chemical Storage 2",
				},
				[3] = {
					name = "Khirbet Tin Nur Chemical Storage 3",
				},
				[4] = {
					name = "Khirbet Tin Nur Chemical Storage 4",
				},
				[5] = {
					name = "Khirbet Tin Nur Chemical Storage 5",
				},
				[6] = {
					name = "Khirbet Tin Nur Chemical Storage 6",
				},
				[7] = {
					name = "Khirbet Tin Nur Chemical Storage 7",
				},
				[8] = {
					name = "Khirbet Tin Nur Chemical Storage 8",
				},
				[9] = {
					name = "Khirbet Tin Nur Chemical Storage 9",
				},
				[10] = {
					name = "Khirbet Tin Nur Chemical Storage 10",
				},
				[11] = {
					name = "Khirbet Tin Nur Chemical Storage 11",
				},
				[12] = {
					name = "Khirbet Tin Nur Chemical Storage 12",
				},
			},
		},

		["Iranian Storage Facility"] = { --fatto
			task = "Strike",
			priority = 4,
			picture = {"Iranian_Storage_Facility.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Iranian Storage Facility 1",
				},
				[2] = {
					name = "Iranian Storage Facility 2",
				},
				[3] = {
					name = "Iranian Storage Facility 3",
				},
				[4] = {
					name = "Iranian Storage Facility 4",
				},
				[5] = {
					name = "Iranian Storage Facility 5",
				},
				[6] = {
					name = "Iranian Storage Facility 6",
				},
				[7] = {
					name = "Iranian Storage Facility 7",
				},
				[8] = {
					name = "Iranian Storage Facility 8",
				},
				[9] = {
					name = "Iranian Storage Facility 9",
				},
				[10] = {
					name = "Iranian Storage Facility 10",
				},
				[11] = {
					name = "Iranian Storage Facility 11",
				},	
				[12] = {
					name = "Iranian Storage Facility 12",
				},							
			},
		},

		["Palmyra Storage"] = {--fatto
			task = "Strike",
			priority = 4,
			picture = {"Target.Palmyra_Storage.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Palmyra Storage 1",
				},
				[2] = {
					name = "Palmyra Storage 2",
				},
				[3] = {
					name = "Palmyra Storage 3",
				},
				[4] = {
					name = "Palmyra Storage 4",
				},
				[5] = {
					name = "Palmyra Storage 5",
				},
				[6] = {
					name = "Palmyra Storage 6",
				},
				[7] = {
					name = "Palmyra Storage 7",
				},
				[8] = {
					name = "Palmyra Storage 8",
				},
				[9] = {
					name = "Palmyra Storage 9",
				},
				[10] = {
					name = "Palmyra Storage 10",
				},
				[11] = {
					name = "Palmyra Storage 11",
				},
				[12] = {
					name = "Palmyra Storage 12",
				},
			},
		},

		["IR-Abukamal Storage"] = {--fatto
			task = "Strike",
			priority = 4,
			picture = {"Target.IR_Abukamal_Storage.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "IR-Abukamal Storage 1",
				},
				[2] = {
					name = "IR-Abukamal Storage 2",
				},
				[3] = {
					name = "IR-Abukamal Storage 3",
				},
				[4] = {
					name = "IR-Abukamal Storage 4",
				},
				[5] = {
					name = "IR-Abukamal Storage 5",
				},
				[6] = {
					name = "IR-Abukamal Storage 6",
				},
				[7] = {
					name = "IR-Abukamal Storage 7",
				},
				[8] = {
					name = "IR-Abukamal Storage 8",
				},
				[9] = {
					name = "IR-Abukamal Storage 9",
				},
				[10] = {
					name = "IR-Abukamal Storage 10",
				},
				[11] = {
					name = "IR-Abukamal Storage 11",
				},
				[12] = {
					name = "IR-Abukamal Storage 12",
				},
											
			},
		},

		--
		-- SAM Site
		["al-Safirah SAM SA-2"] = { --fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "al-Safirah SAM SA-2",
		},

		["Marj Ruhayyil SAM SA-2"] = {--fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Marj Ruhayyil SAM SA-2",
		},

		["Bassel Al-Assad SAM SA-6 Site"] = {--fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Bassel Al-Assad SAM SA-6 Site",
		},

		["An Nasiriyah SAM SA-2 Site"] = { --fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "An Nasiriyah SAM SA-2 Site",
		},

		["Ram Tarza SA10 Site"] = { --fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Ram Tarza SA10 Site",
		},

		["Palmyra SA10 Site"] = { --fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Palmyra SA10 Site",
		},

		["Deir ez-Zor SA-5 Site"] = {--fatto
			task = "Strike",
			picture = {"Deir_ez_Zor_Airbase_and_SAM.png"},
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Deir ez-Zor SA-5 Site",
		},

		["Beirut SA-11 Buk Site"] = {--fatto
			task = "Strike",
			picture = {},
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Beirut SA-11 Buk Site",
		},

		--EWR Site
		["102 EWR Site"] = { --fatto
			task = "Strike",
			priority = 5,
			picture = {"102_EWR_Site.png"},
			attributes = {"soft"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "102 EWR Site",
		},

		["101 EWR Site"] = { --fatto
			task = "Strike",
			priority = 5,
			picture = {"101_EWR_Site.png"},
			attributes = {"soft"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "101 EWR Site",
		},


		-- Army

		["IR-Al Kiswah Military Base"] = { -- fatto
			task = "Strike",
			priority = 4,
			picture = {"IR_al_Kiswah_Military_base.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "IR-Al Kiswah Military Base-1",
				},
				[2] = {
					name = "IR-Al Kiswah Military Base-2",
				},
				[3] = {
					name = "IR-Al Kiswah Military Base-3",
				},
				[4] = {
					name = "IR-Al Kiswah Military Base-4",
				},
				[5] = {
					name = "IR-Al Kiswah Military Base-5",
				},
				[6] = {
					name = "IR-Al Kiswah Military Base-6",
				},
				[7] = {
					name = "IR-Al Kiswah Military Base-7",
				},
				[8] = {
					name = "IR-Al Kiswah Military Base-8",
				},
				[9] = {
					name = "IR-Al Kiswah Military Base-9",
				},
				[10] = {
					name = "IR-Al Kiswah Military Base-10",
				},
				[11] = {
					name = "IR-Al Kiswah Military Base-11",
				},
				[12] = {
					name = "IR-Al Kiswah Military Base-12",
				},
			},
		},	

		["An Nasiriyah Military Base"] = { -- fatto
			task = "Strike",
			priority = 4,
			picture = {"An_Nasiriyah_Military_Base.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "An Nasiriyah Military Base 1",
				},
				[2] = {
					name = "An Nasiriyah Military Base 2",
				},
				[3] = {
					name = "An Nasiriyah Military Base 3",
				},
				[4] = {
					name = "An Nasiriyah Military Base 4",
				},
				[5] = {
					name = "An Nasiriyah Military Base 5",
				},
				[6] = {
					name = "An Nasiriyah Military Base 6",
				},
				[7] = {
					name = "An Nasiriyah Military Base 7",
				},
				[8] = {
					name = "An Nasiriyah Military Base 8",
				},
				[9] = {
					name = "An Nasiriyah Military Base 9",
				},
				[10] = {
					name = "An Nasiriyah Military Base 10",
				},
				[11] = {
					name = "An Nasiriyah Military Base 11",
				},
				[12] = {
					name = "An Nasiriyah Military Base 12",
				},		
			},
		},

		["154th Artillery Regiment"] = { --Syria -- supported by Russian Air Defence
			task = "Strike",
			priority = 1,
			attributes = {"soft"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "154th Artillery Regiment",
		},	
		
		["42nd Armored Brigade"] = { -- Syria -- supported by Russian Air Defence
			task = "Strike",
			priority = 1,
			attributes = {"armor"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "42nd Armored Brigade",
		},	

		["5th Heavy Brigades"] = { -- Lebanon (Mechanised) -- supported by Russian Air Defence
			task = "Strike",
			priority = 1,
			attributes = {"soft"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "5th Heavy Brigades",
		},	

		-- Intercept

		["Gaziantep 120 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Gaziantep",
			radius = 120000,
			inactive = false,
		},

		["Gaziantep 70 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Gaziantep",
			radius = 70000,
			inactive = false,
		},

		["Adana Sakirpasa 200 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Adana Sakirpasa",
			radius = 200000,
			inactive = false,
		},

		["CVN-71 Theodore Roosevelt Alert"] = {
			task = "Intercept",
			priority = 7,
			attributes = {},
			firepower = {
				min = 2,
				max = 4,
			},
			base = "CVN-71 Theodore Roosevelt",
			radius = 250000,
		},

		["CVN-72 Abraham Lincoln Alert"] = {
			task = "Intercept",
			priority = 7,
			attributes = {},
			firepower = {
				min = 2,
				max = 4,
			},
			base = "CVN-72 Abraham Lincoln",
			radius = 150000,
		},

		-- CAP
		["CAP Megiddo south"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Megiddo south",
			radius = 40000,
			text = "south-east of Megiddo",
		},		

		["CAP Cyprus south"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Cyprus south",
			radius = 50000,
			text = "south-east of Cyprus",
		},

		["CAP Cyprus north"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Cyprus north",
			radius = 50000,
			text = "north-est of Cyprus",
		},

		["CAP AWACS"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP AWACS",
			radius = 50000,
			text = "west of Cyprus",
		},

		["AWACS"] = {
			task = "AWACS",
			priority = 10,
			attributes = {"Sentry"},
			firepower = {
				min = 1,
				max = 1,
			},
			refpoint = "AWACS USA",
			radius = 30000,
			text = "",
		},

		-- Airbase

		["An Nasiriyah Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"An_Nasiriyah_Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 6, -- --3,
				max = 16, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "An Nasiriyah Airbase Logistic 1",
					
				},
				[2] = {
					name = "An Nasiriyah Airbase Logistic 2",
					
				},
				[3] = {
					name = "An Nasiriyah Airbase Logistic 3",
					
				},
				[4] = {
					name = "An Nasiriyah Airbase Logistic 4",
					
				},
				[5] = {
					name = "An Nasiriyah Airbase Logistic 5",
					
				},
				[6] = {
					name = "An Nasiriyah Airbase Logistic 6",
					
				},
				[7] = {
					name = "An Nasiriyah Airbase Logistic 7",
					
				},
				[8] = {
					name = "An Nasiriyah Airbase Logistic 8",
					
				},
				[9] = {
					name = "An Nasiriyah Airbase Logistic 9",
					
				},
				[10] = {
					name = "An Nasiriyah Airbase Logistic 10",
					
				},
				[11] = {
					name = "An Nasiriyah Airbase Logistic 11",
					
				},
				[12] = {
					name = "An Nasiriyah Airbase Logistic 12",
					
				},
				[13] = {
					name = "An Nasiriyah Airbase Logistic 13",
					
				},
				[14] = {
					name = "An Nasiriyah Airbase Logistic 14",
					
				},
				[15] = {
					name = "An Nasiriyah Airbase Logistic 15",
					
				},
			},
		},

		["An Nasiriyah airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "An Nasiriyah",
		},

		["Damascus Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Damascus_Airbase.png"},
			attributes = {"Structure"},
			class = "static",
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Damascus Airbase Logistic-1",
					
				},
				[2] = {
					name = "Damascus Airbase Logistic-2",
					
				},
				[3] = {
					name = "Damascus Airbase Logistic-3",
					
				},
				[4] = {
					name = "Damascus Airbase Logistic-4",
					
				},
				[5] = {
					name = "Damascus Airbase Logistic-5",
					
				},
				[6] = {
					name = "Damascus Airbase Logistic-6",
					
				},
				[7] = {
					name = "Damascus Airbase Logistic-7",
					
				},
				[8] = {
					name = "Damascus Airbase Logistic-8",
					
				},
				[9] = {
					name = "Damascus Airbase Logistic-9",
					
				},
				[10] = {
					name = "Damascus Airbase Logistic-10",
					
				},
				[11] = {
					name = "Damascus Airbase Logistic-11",
					
				},
				[12] = {
					name = "Damascus Airbase Logistic-12",
					
				},
				[13] = {
					name = "Damascus Airbase Logistic-13",
					
				},
				[14] = {
					name = "Damascus Airbase Logistic-14",
					
				},
				[15] = {
					name = "Damascus Airbase Logistic-15",
					
				},
			},
		},

		["Damascus airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Damascus",
		},

		["Deir ez-Zor Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Deir ez-Zor_Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Deir ez-Zor Logistic 1",
					
				},
				[2] = {
					name = "Deir ez-Zor Logistic 2",
					
				},
				[3] = {
					name = "Deir ez-Zor Logistic 3",
					
				},
				[4] = {
					name = "Deir ez-Zor Logistic 4",
					
				},
				[5] = {
					name = "Deir ez-Zor Logistic 5",
					
				},
				[6] = {
					name = "Deir ez-Zor Logistic 6",
					
				},
				[7] = {
					name = "Deir ez-Zor Logistic 7",
					
				},
				[8] = {
					name = "Deir ez-Zor Logistic 8",
					
				},
				[9] = {
					name = "Deir ez-Zor Logistic 9",
					
				},
				[10] = {
					name = "Deir ez-Zor Logistic 10",
					
				},
				[11] = {
					name = "Deir ez-Zor Logistic 11",
					
				},
				[12] = {
					name = "Deir ez-Zor Logistic 12",
					
				},
				[13] = {
					name = "Deir ez-Zor Logistic 13",
					
				},
				[14] = {
					name = "Deir ez-Zor Logistic 14",
					
				},
				[15] = {
					name = "Deir ez-Zor Logistic 15",
					
				},
			},
		},

		["Deir ez-Zor airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Deir ez-Zor",
		},

		["Tabqa Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Tabqa_Airbase.png"},
			attributes = {"Structure"},
			class = "static",
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			elements = {
				[1] = {
					name = "Tabqa Airbase Logistic 1",
					
				},
				[2] = {
					name = "Tabqa Airbase Logistic 2",
					
				},
				[3] = {
					name = "Tabqa Airbase Logistic 3",
					
				},
				[4] = {
					name = "Tabqa Airbase Logistic 4",
					
				},
				[5] = {
					name = "Tabqa Airbase Logistic 5",
					
				},
				[6] = {
					name = "Tabqa Airbase Logistic 6",
					
				},
				[7] = {
					name = "Tabqa Airbase Logistic 7",
					
				},
				[8] = {
					name = "Tabqa Airbase Logistic 8",
					
				},
				[9] = {
					name = "Tabqa Airbase Logistic 9",
					
				},
				[10] = {
					name = "Tabqa Airbase Logistic 10",
					
				},
				[11] = {
					name = "Tabqa Airbase Logistic 11",
					
				},
				[12] = {
					name = "Tabqa Airbase Logistic 12",
					
				},
				[13] = {
					name = "Tabqa Airbase Logistic 13",
					
				},
				[14] = {
					name = "Tabqa Airbase Logistic 14",
					
				},
				[15] = {
					name = "Tabqa Airbase Logistic 15",
					
				},
			},
		},

		["Tabqa airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Tabqa",
		},

		["Hama Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Hama_Airbase.png"},
			attributes = {"Structure"},
			class = "static",
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			elements = {
				[1] = {
					name = "Hama Airbase Logistic 1",
					
				},
				[2] = {
					name = "Hama Airbase Logistic 2",
					
				},
				[3] = {
					name = "Hama Airbase Logistic 3",
					
				},
				[4] = {
					name = "Hama Airbase Logistic 4",
					
				},
				[5] = {
					name = "Hama Airbase Logistic 5",
					
				},
				[6] = {
					name = "Hama Airbase Logistic 6",
					
				},
				[7] = {
					name = "Hama Airbase Logistic 7",
					
				},
				[8] = {
					name = "Hama Airbase Logistic 8",
					
				},
				[9] = {
					name = "Hama Airbase Logistic 9",
					
				},
				[10] = {
					name = "Hama Airbase Logistic 10",
					
				},
				[11] = {
					name = "Hama Airbase Logistic 11",
					
				},
				[12] = {
					name = "Hama Airbase Logistic 12",
					
				},
				[13] = {
					name = "Hama Airbase Logistic 13",
					
				},
				[14] = {
					name = "Hama Airbase Logistic 14",
					
				},
				[15] = {
					name = "Hama Airbase Logistic 15",
					
				},
			},
		},

		["Hama airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Hama",
		},

		["Palmyra Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Palmyra_Airbase.png"},
			attributes = {"Structure"},
			class = "static",
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			elements = {
				[1] = {
					name = "Palmyra Airbase Logistic 1",
					
				},
				[2] = {
					name = "Palmyra Airbase Logistic 2",
					
				},
				[3] = {
					name = "Palmyra Airbase Logistic 3",
					
				},
				[4] = {
					name = "Palmyra Airbase Logistic 4",
					
				},
				[5] = {
					name = "Palmyra Airbase Logistic 5",
					
				},
				[6] = {
					name = "Palmyra Airbase Logistic 6",
					
				},
				[7] = {
					name = "Palmyra Airbase Logistic 7",
					
				},
				[8] = {
					name = "Palmyra Airbase Logistic 8",
					
				},
				[9] = {
					name = "Palmyra Airbase Logistic 9",
					
				},
				[10] = {
					name = "Palmyra Airbase Logistic 10",
					
				},
				[11] = {
					name = "Palmyra Airbase Logistic 11",
					
				},
				[12] = {
					name = "Palmyra Airbase Logistic 12",
					
				},
				[13] = {
					name = "Palmyra Airbase Logistic 13",
					
				},
				[14] = {
					name = "Palmyra Airbase Logistic 14",
					
				},
				[15] = {
					name = "Palmyra Airbase Logistic 15",
					
				},
			},
		},

		["Palmyra airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Palmyra",
		},		

		["Khalkhalah Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Khalkhalah.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Khalkhalah Airbase Logistic 1",
					
				},
				[2] = {
					name = "Khalkhalah Airbase Logistic 2",
					
				},
				[3] = {
					name = "Khalkhalah Airbase Logistic 3",
					
				},
				[4] = {
					name = "Khalkhalah Airbase Logistic 4",
					
				},
				[5] = {
					name = "Khalkhalah Airbase Logistic 5",
					
				},
				[6] = {
					name = "Khalkhalah Airbase Logistic 6",
					
				},
				[7] = {
					name = "Khalkhalah Airbase Logistic 7",
					
				},
				[8] = {
					name = "Khalkhalah Airbase Logistic 8",
					
				},
				[9] = {
					name = "Khalkhalah Airbase Logistic 9",
					
				},
				[10] = {
					name = "Khalkhalah Airbase Logistic 10",
					
				},
				[11] = {
					name = "Khalkhalah Airbase Logistic 11",
					
				},
				[12] = {
					name = "Khalkhalah Airbase Logistic 12",
					
				},
				[13] = {
					name = "Khalkhalah Airbase Logistic 13",
					
				},
				[14] = {
					name = "Khalkhalah Airbase Logistic 14",
					
				},
				[15] = {
					name = "Khalkhalah Airbase Logistic 15",
					
				},
			},
		},

		["Khalkhalah airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Khalkhalah",
		},

		["Beirut-Rafic Hariri Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Beirut-Rafic_Hariri.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 1",
					
				},
				[2] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 2",
					
				},
				[3] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 3",
					
				},
				[4] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 4",
					
				},
				[5] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 5",
					
				},
				[6] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 6",
					
				},
				[7] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 7",
					
				},
				[8] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 8",
					
				},
				[9] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 9",
					
				},
				[10] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 10",
					
				},
				[11] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 11",
					
				},
				[12] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 12",
					
				},
				[13] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 13",
					
				},
				[14] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 14",
					
				},
				[15] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 15",
					
				},
			},
		},

		["Beirut-Rafic Hariri airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Beirut-Rafic Hariri",
		},

		["Taftanaz Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Taftanaz_Helibase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Taftanaz Logistic 1",
					
				},
				[2] = {
					name = "Taftanaz Logistic 2",
					
				},
				[3] = {
					name = "Taftanaz Logistic 3",
					
				},
				[4] = {
					name = "Taftanaz Logistic 4",
					
				},
				[5] = {
					name = "Taftanaz Logistic 5",
					
				},
				[6] = {
					name = "Taftanaz Logistic 6",
					
				},
				[7] = {
					name = "Taftanaz Logistic 7",
					
				},
				[8] = {
					name = "Taftanaz Logistic 8",
					
				},
				[9] = {
					name = "Taftanaz Logistic 9",
					
				},
				[10] = {
					name = "Taftanaz Logistic 10",
					
				},
				[11] = {
					name = "Taftanaz Logistic 11",
					
				},
				[12] = {
					name = "Taftanaz Logistic 12",
					
				},
				[13] = {
					name = "Taftanaz Logistic 13",
					
				},
				[14] = {
					name = "Taftanaz Logistic 14",
					
				},
				[15] = {
					name = "Taftanaz Logistic 15",
					
				},				
			},
		},

		["Taftanaz helibase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Taftanaz",
		},
		
		["Bassel Al-Assad Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Bassel_Al-Assad_Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Bassel Al-Assad Airbase Logistic 1",
					
				},
				[2] = {
					name = "Bassel Al-Assad Airbase Logistic 2",
					
				},
				[3] = {
					name = "Bassel Al-Assad Airbase Logistic 3",
					
				},
				[4] = {
					name = "Bassel Al-Assad Airbase Logistic 4",
					
				},
				[5] = {
					name = "Bassel Al-Assad Airbase Logistic 5",
					
				},
				[6] = {
					name = "Bassel Al-Assad Airbase Logistic 6",
					
				},
				[7] = {
					name = "Bassel Al-Assad Airbase Logistic 7",
					
				},
				[8] = {
					name = "Bassel Al-Assad Airbase Logistic 8",
					
				},
				[9] = {
					name = "Bassel Al-Assad Airbase Logistic 9",
					
				},
				[10] = {
					name = "Bassel Al-Assad Airbase Logistic 10",
					
				},
				[11] = {
					name = "Bassel Al-Assad Airbase Logistic 11",
					
				},
				[12] = {
					name = "Bassel Al-Assad Airbase Logistic 12",
					
				},
				[13] = {
					name = "Bassel Al-Assad Airbase Logistic 13",
					
				},
			},
		},

		["Bassel Al-Assad Airbase OCA Strike"] = { --   
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Bassel Al-Assad",
		},

		["Lebanon Fleet"] = {
			task = "Anti-ship Strike",
			priority = 1,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "Lebanon Fleet",
		},

		["Battle Group CAP"] = {
			task = "CAP",
			priority = 10,
			attributes = {"CV CAP"},
			firepower = {
				min = 2,
				max = 3,
			},
			slaved = {"CVN-71", 335, 50000},
			radius = 111000,
			text = "",
		},

		["Battle Group AEW"] = {
			task = "AWACS",
			priority = 10,
			attributes = {"AEW"},
			firepower = {
				min = 1, -- min num AWACS aircraft
				max = 1, -- max num AWACS aircraft
			},
			slaved = {"CVN-71",320, 40000},
			text = "",
		},

		["Mission Support Tanker"] = {
			task = "Refueling",
			priority = 10,
			attributes = {"medium"},
			firepower = {
				min = 1, -- min num Tanker aircraft
				max = 1, -- max num Tanker aircraft
			},
			slaved = {"CVN-71", 330, 35000},
			text = "",
		},

		["Recovery Tanker CVN-71"] = {
			task = "Refueling",
			priority = 5,
			attributes = {"low"},
			firepower = {
				min = 1,
				max = 1,
			},
			slaved = {"CVN-71", 310, 30000},
			text = "",
		},

		["Recovery Tanker CVN-72"] = {
			task = "Refueling",
			priority = 5,
			attributes = {"low"},
			firepower = {
				min = 1,
				max = 1,
			},
			slaved = {"CVN-72", 310, 30000},
			text = "",
		},

		["Tanker Track North"] = {--fatto
			task = "Refueling",
			priority = 10,
			attributes = {"KC135MPRS"},
			firepower = {
				min = 1,
				max = 1,
			},
			refpoint = "Tanker Track North",
			radius = 15000,
			text = "North-West of Incirlik ",
		},

		["Tanker Track South"] = {--fatto
			task = "Refueling",
			priority = 10,
			attributes = {"KC135"},
			firepower = {
				min = 1,
				max = 1,
			},
			refpoint = "Tanker Track South",
			radius = 15000,
			text = "South-West of Ramat David",
		},
		
		["Sweep Center"] = { --fatto
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3, --estimated aircraft : 5, efficiency: 0.5 ( 2 missile for one shot ): 5 / 0.5 = 10
				max = 5,
			},
			x = +00020378,
			y = +00016106,
			text = "in the center front area near Hama",
		},

		["Sweep North East"] = {--fatto
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3,
				max = 5,
			},
			x = +00100820,
			y = +00064696,
			text = "in the north east front area near Taftanaz",
		},

		["Sweep South East"] = {--fatto
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3,
				max = 5,
			},
			x = -00169946,
			y = -00047807,
			text = "in the south east front area",
		},


		--[[["Sayqal Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Sayqal_Helibase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Sayqal Helibase Logistic 1",
					
				},
				[2] = {
					name = "Sayqal Helibase Logistic 2",
					
				},
				[3] = {
					name = "Sayqal Helibase Logistic 3",
					
				},
				[4] = {
					name = "Sayqal Helibase Logistic 4",
					
				},
				[5] = {
					name = "Sayqal Helibase Logistic 5",
					
				},
				[6] = {
					name = "Sayqal Helibase Logistic 6",
					
				},
				[7] = {
					name = "Sayqal Helibase Logistic 7",
					
				},
				[8] = {
					name = "Sayqal Helibase Logistic 8",
					
				},
				[9] = {
					name = "Sayqal Helibase Logistic 9",
					
				},
				[10] = {
					name = "Sayqal Helibase Logistic 10",
					
				},
				[11] = {
					name = "Sayqal Helibase Logistic 11",
					
				},
				[12] = {
					name = "Sayqal Helibase Logistic 12",
					
				},
				[13] = {
					name = "Sayqal Helibase Logistic 13",
					
				},
				[14] = {
					name = "Sayqal Helibase Logistic 14",
					
				},
				[15] = {
					name = "Sayqal Helibase Logistic 15",
					
				},
			},
		},

		["Sayqal airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Sayqal",
		},]]
		
		--[[["Mezzeh Airbase"] = { --   
			task = "Strike",
			priority = 4,
			picture = {"Mezze_Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Mezzeh Airbase Logistic 1",
					
				},
				[2] = {
					name = "Mezzeh Airbase Logistic 2",
					
				},
				[3] = {
					name = "Mezzeh Airbase Logistic 3",
					
				},
				[4] = {
					name = "Mezzeh Airbase Logistic 4",
					
				},
				[5] = {
					name = "Mezzeh Airbase Logistic 5",
					
				},
				[6] = {
					name = "Mezzeh Airbase Logistic 6",
					
				},
				[7] = {
					name = "Mezzeh Airbase Logistic 7",
					
				},
				[8] = {
					name = "Mezzeh Airbase Logistic 8",
					
				},
				[9] = {
					name = "Mezzeh Airbase Logistic 9",
					
				},
				[10] = {
					name = "Mezzeh Airbase Logistic 10",
					
				},
				[11] = {
					name = "Mezzeh Airbase Logistic 11",
					
				},
			},
		},

		["Mezzeh Airbase OCA Strike"] = { --   
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Mezzeh",
		},]]

	},

	["red"] = {		

		-- Production & Storage
		["Silifke Storage Site"] = { -- Supply Plant fatto
			task = "Strike",
			priority = 4,
			picture = {"Silifke.Storage.Site.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Silifke Storage Site 1",
				},
				[2] = {
					name = "Silifke Storage Site 2",
				},
				[3] = {
					name = "Silifke Storage Site 3",
				},
				[4] = {
					name = "Silifke Storage Site 4",
				},
				[5] = {
					name = "Silifke Storage Site 5",
				},
				[6] = {
					name = "Silifke Storage Site 6",
				},
				[7] = {
					name = "Silifke Storage Site 7",
				},
				[8] = {
					name = "Silifke Storage Site 8",
				},
				[9] = {
					name = "Silifke Storage Site 9",
				},
				[10] = {
					name = "Silifke Storage Site 10",
				},
				[11] = {
					name = "Silifke Storage Site 11",
				},
				[12] = {
					name = "Silifke Storage Site 12",
				},
			},
		},	

		["Islahiye Storage Site"] = {  --Supply Plant fatto
			task = "Strike",
			priority = 4,
			picture = {"Islahiye Storage Site.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Islahiye Storage Site 1",
				},
				[2] = {
					name = "Islahiye Storage Site 2",
				},
				[3] = {
					name = "Islahiye Storage Site 3",
				},
				[4] = {
					name = "Islahiye Storage Site 4",
				},
				[5] = {
					name = "Islahiye Storage Site 5",
				},
				[6] = {
					name = "Islahiye Storage Site 6",
				},
				[7] = {
					name = "Islahiye Storage Site 7",
				},
				[8] = {
					name = "Islahiye Storage Site 8",
				},
				[9] = {
					name = "Islahiye Storage Site 9",
				},
				[10] = {
					name = "Islahiye Storage Site 10",
				},				
				[11] = {
					name = "Islahiye Storage Site 12",
				},
				[12] = {
					name = "Islahiye Storage Site 13",
				},
			},
		},	

		-- SAM Site
		["Mersin SAM Patriot Site"] = {--fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Mersin SAM Patriot Site",
		},

		["Gaziantep SAM Patriot Site"] = {--fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Gaziantep SAM Patriot Site",
		},

		["Larnaca SAM Hawk Site"] = { --fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Larnaca SAM Hawk Site",
		},

		["Haifa SAM Hawk Site"] = {--fatto
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Haifa SAM Hawk Site",
		},

		-- Fleet
		["CVN-71 Theodore Roosevelt"] = {--fatto
			task = "Anti-ship Strike",
			priority = 5,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "CVN-71",
		},

		["CVN-72 Abraham Lincoln"] = {--fatto
			task = "Anti-ship Strike",
			priority = 5,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "CVN-72",
		},

		["USA Fleet"] = {--fatto
			task = "Anti-ship Strike",
			priority = 1,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "USA Fleet 1",
		},

		["UK Fleet"] = {--fatto
			task = "Anti-ship Strike",
			priority = 1,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "UK Fleet",
		},

		-- Army
		["3th Mechanized Division"] = {--fatto
			task = "Strike",
			priority = 1,
			attributes = {"soft"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "3th Mechanized Division",
		},	

		["4th Armored Division"] = {--fatto
			task = "Strike",
			priority = 1,
			attributes = {"armor"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "4th Armored Division",
		},	

		["6th Mechanized Division"] = {--fatto
			task = "Strike",
			priority = 1,
			attributes = {"soft"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "6th Mechanized Division",
		},		

		--EWR Site
		["EWR NATO"] = {--fatto
			task = "Strike",
			priority = 5,
			picture = {"EWR_NATO_Mersin.png"},
			attributes = {"soft"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "EWR NATO Mersin",
		},

		-- Intercept
		["Deir ez-Zor 200km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Deir ez-Zor",
			radius = 200000,
			inactive = false,
		},

		["Damascus 100km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Damascus",
			radius = 100000,
			inactive = false,
		},

		["Khalkhalah 80km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Khalkhalah",
			radius = 80000,
			inactive = false,
		},

		["Tabqa 110km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Tabqa",
			radius = 110000,
			inactive = false,
		},

		["Hama 120km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Hama",
			radius = 120000,
			inactive = false,
		},

		["An Nasiriyah 200km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "An Nasiriyah",
			radius = 200000,
			inactive = false,
		},

		-- CAP 
		["CAP Deir ez-Zor south"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Deir ez-Zor south",
			radius = 80000,
			text = "south-west of Deir ez-Zor",
			--inactive = true,
		},

		["CAP Abu al-Duhu"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Abu al-Duhu",
			radius = 50000,
			text = "CAP at Abu al-Duhu",
			inactive = true,
		},

		["CAP Tabqa east"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Tabqa east",
			radius = 80000,
			text = "north-west of Tabqa",
			--inactive = true,
		},
	
		["CAP Hama west"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Hama west",
			radius = 50000,
			text = "west of Hama",
			inactive = true,
		},

		["CAP Beirut east"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Beirut east",
			radius = 50000,
			text = "east of Beirut",
			inactive = true,
		},

		["CAP Damascus south"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Damascus south",
			radius = 40000,
			text = "south-west of Damascus",
			--inactive = true,
		},

		["AWACS"] = {
			task = "AWACS",
			priority = 10,
			attributes = {"Sentry"},
			firepower = {
				min = 1,
				max = 1,
			},
			refpoint = "AWACS Russia",
			radius = 30000,
			text = "",
		},
		
		-- Airbase, Helibase, Farp 
		
		["Incirlik Airbase"] = { 
			task = "Strike",
			priority = 4,
			picture = {"Incirlik.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Incirlik Airbase Logistic 1",
				},
				[2] = {
					name = "Incirlik Airbase Logistic 2",
				},
				[3] = {
					name = "Incirlik Airbase Logistic 3",
				},
				[4] = {
					name = "Incirlik Airbase Logistic 4",
				},
				[5] = {
					name = "Incirlik Airbase Logistic 5",
				},
				[6] = {
					name = "Incirlik Airbase Logistic 6",
				},
				[7] = {
					name = "Incirlik Airbase Logistic 7",
				},
				[8] = {
					name = "Incirlik Airbase Logistic 8",	
				},
				[9] = {
					name = "Incirlik Airbase Logistic 9",					
				},
				[10] = {
					name = "Incirlik Airbase Logistic 10",
				},
				[11] = {
					name = "Incirlik Airbase Logistic 11",
				},
				[12] = {
					name = "Incirlik Airbase Logistic 12",
				},
				[13] = {
					name = "Incirlik Airbase Logistic 13",
				},
				[14] = {
					name = "Incirlik Airbase Logistic 14",
				},
				[15] = {
					name = "Incirlik Airbase Logistic 15",
				},
				[16] = {
					name = "Incirlik Airbase Logistic 16",
				},
				[17] = {
					name = "Incirlik Airbase Logistic 17",
				},
				[18] = {
					name = "Incirlik Airbase Logistic 18",	
				},
				[19] = {
					name = "Incirlik Airbase Logistic 19",					
				},
			},
		},

		["Incirlik airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Incirlik",
		},

		["Adana Sakirpasa Airbase"] = { 
			task = "Strike",
			priority = 4,
			picture = {"Adana.Sakirpasa.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Adana Sakirpasa Logistic 1",
				},
				[2] = {
					name = "Adana Sakirpasa Logistic 2",
				},
				[3] = {
					name = "Adana Sakirpasa Logistic 3",
				},
				[4] = {
					name = "Adana Sakirpasa Logistic 4",
				},
				[5] = {
					name = "Adana Sakirpasa Logistic 5",
				},
				[6] = {
					name = "Adana Sakirpasa Logistic 6",
				},
				[7] = {
					name = "Adana Sakirpasa Logistic 7",
				},
				[8] = {
					name = "Adana Sakirpasa Logistic 8",	
				},
				[9] = {
					name = "Adana Sakirpasa Logistic 9",					
				},
				[10] = {
					name = "Adana Sakirpasa Logistic 10",
				},
				[11] = {
					name = "Adana Sakirpasa Logistic 11",
				},
				[12] = {
					name = "Adana Sakirpasa Logistic 12",
				},
				[13] = {
					name = "Adana Sakirpasa Logistic 14",
				},
				[14] = {
					name = "Adana Sakirpasa Logistic 15",
				},
			},
		},

		["Adana Sakirpasa airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Adana Sakirpasa",
		},

		["Gazipasa Airbase"] = { 
			task = "Strike",
			priority = 4,
			picture = {"Gazipasa.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Gazipasa Logistic 1",
				},
				[2] = {
					name = "Gazipasa Logistic 2",
				},
				[3] = {
					name = "Gazipasa Logistic 3",
				},
				[4] = {
					name = "Gazipasa Logistic 4",
				},
				[5] = {
					name = "Gazipasa Logistic 5",
				},
				[6] = {
					name = "Gazipasa Logistic 6",
				},
				[7] = {
					name = "Gazipasa Logistic 7",
				},
				[8] = {
					name = "Gazipasa Logistic 8",	
				},
				[9] = {
					name = "Gazipasa Logistic 9",					
				},
				[10] = {
					name = "Gazipasa Logistic 10",
				},
				[11] = {
					name = "Gazipasa Logistic 11",
				},
				[12] = {
					name = "Gazipasa Logistic 12",
				},
				[13] = {
					name = "Gazipasa Logistic 13",
				},
				[14] = {
					name = "Gazipasa Logistic 15",
				},				
			},
		},

		["Gazipasa airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Gazipasa",
		},

		["Gaziantep Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Gaziantep.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Gaziantep Logistic 1",
				},
				[2] = {
					name = "Gaziantep Logistic 2",
				},
				[3] = {
					name = "Gaziantep Logistic 3",
				},
				[4] = {
					name = "Gaziantep Logistic 4",
				},
				[5] = {
					name = "Gaziantep Logistic 5",
				},
				[6] = {
					name = "Gaziantep Logistic 6",
				},
				[7] = {
					name = "Gaziantep Logistic 7",
				},
				[8] = {
					name = "Gaziantep Logistic 8",	
				},
				[9] = {
					name = "Gaziantep Logistic 10",
				},
				[10] = {
					name = "Gaziantep Logistic 11",
				},
				[11] = {
					name = "Gaziantep Logistic 13",
				},
				[12] = {
					name = "Gaziantep Logistic 14",
				},
				[13] = {
					name = "Gaziantep Logistic 15",
				},
			},
		},

		["Gaziantep airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Gaziantep",
		},		

		["Hatay Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Hatay.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Hatay Logistic 1",
				},
				[2] = {
					name = "Hatay Logistic 2",
				},
				[3] = {
					name = "Hatay Logistic 3",
				},
				[4] = {
					name = "Hatay Logistic 4",
				},
				[5] = {
					name = "Hatay Logistic 5",
				},
				[6] = {
					name = "Hatay Logistic 6",
				},
				[7] = {
					name = "Hatay Logistic 7",
				},
				[8] = {
					name = "Hatay Logistic 8",	
				},
				[9] = {
					name = "Hatay Logistic 9",					
				},
				[10] = {
					name = "Hatay Logistic 10",
				},
				[11] = {
					name = "Hatay Logistic 11",
				},
				[12] = {
					name = "Hatay Logistic 13",
				},
				[13] = {
					name = "Hatay Logistic 14",
				},
			},
		},

		["Hatay airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Hatay",
		},

		["Larnaca Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Larnaca.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Cyprus Larnaca Airbase Logistic 1",
				},
				[2] = {
					name = "Cyprus Larnaca Airbase Logistic 2",
				},
				[3] = {
					name = "Cyprus Larnaca Airbase Logistic 3",
				},
				[4] = {
					name = "Cyprus Larnaca Airbase Logistic 4",
				},
				[5] = {
					name = "Cyprus Larnaca Airbase Logistic 5",
				},
				[6] = {
					name = "Cyprus Larnaca Airbase Logistic 6",
				},
				[7] = {
					name = "Cyprus Larnaca Airbase Logistic 7",
				},
				[8] = {
					name = "Cyprus Larnaca Airbase Logistic 8",	
				},
				[9] = {
					name = "Cyprus Larnaca Airbase Logistic 9",					
				},
			},
		},

		["Larnaca airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Larnaca",
		},

		["Naqoura Helibase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Naquora.Helibase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Naquora Helibase Logistic 1",
				},
				[2] = {
					name = "Naquora Helibase Logistic 2",
				},
				[3] = {
					name = "Naquora Helibase Logistic 3",
				},
				[4] = {
					name = "Naquora Helibase Logistic 4",
				},
				[5] = {
					name = "Naquora Helibase Logistic 5",
				},
				[6] = {
					name = "Naquora Helibase Logistic 6",
				},
				[7] = {
					name = "Naquora Helibase Logistic 7",
				},				
				[8] = {
					name = "Naquora Helibase Logistic 8",					
				},
				[9] = {
					name = "Naquora Helibase Logistic 9",					
				},
				[10] = {
					name = "Naquora Helibase Logistic 10",					
				},
			},
		},

		["Naqoura helibase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Naqoura",
		},

		["Paphos Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Paphos.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Paphos Airbase Logistic 1",
				},
				[2] = {
					name = "Paphos Airbase Logistic 2",
				},
				[3] = {
					name = "Paphos Airbase Logistic 3",
				},
				[4] = {
					name = "Paphos Airbase Logistic 4",
				},
				[5] = {
					name = "Paphos Airbase Logistic 5",
				},
				[6] = {
					name = "Paphos Airbase Logistic 6",
				},
				[7] = {
					name = "Paphos Airbase Logistic 7",
				},
				[8] = {
					name = "Paphos Airbase Logistic 8",	
				},
				[9] = {
					name = "Paphos Airbase Logistic 9",					
				},
				[10] = {
					name = "Paphos Airbase Logistic 10",
				},
				[11] = {
					name = "Paphos Airbase Logistic 11",
				},
				[12] = {
					name = "Paphos Airbase Logistic 12",
				},
				[13] = {
					name = "Paphos Airbase Logistic 13",
				},
				[14] = {
					name = "Paphos Airbase Logistic 14",
				},
				[15] = {
					name = "Paphos Airbase Logistic 15",
				},
			},
		},

		["Paphos airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Paphos",
		},

		['FARP-Hatay FARP'] = { --fatto
			task = "Strike",
			priority = 4,
			picture = {""},
			attributes = {"Structure"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "static",
			elements = {
				[1] = {
					name = "Hatay FARP 1",
				},
				[2] = {
					name = "Hatay FARP 2",
				},
				[3] = {
					name = "Hatay FARP 3",
				},
				[4] = {
					name = "Hatay FARP 4",
				},
				[5] = {
					name = "Hatay FARP 5",
				},
				[6] = {
					name = "Hatay FARP 6",
				},
				[7] = {
					name = "Hatay FARP 7",
				},
				[8] = {
					name = "Hatay FARP 8",
				},
			},
		},
		
		--[[["Ramat David Airbase"] = {
			task = "Strike",
			priority = 4,
			picture = {"Ramat.David.Airbase.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Ramat David Airbase Logistic 1",
				},
				[2] = {
					name = "Ramat David Airbase Logistic 2",
				},
				[3] = {
					name = "Ramat David Airbase Logistic 3",
				},
				[4] = {
					name = "Ramat David Airbase Logistic 4",
				},
				[5] = {
					name = "Ramat David Airbase Logistic 5",
				},
				[6] = {
					name = "Ramat David Airbase Logistic 6",
				},
				[7] = {
					name = "Ramat David Airbase Logistic 7",
				},				
				[8] = {
					name = "Ramat David Airbase Logistic 9",					
				},
				[9] = {
					name = "Ramat David Airbase Logistic 10",
				},
				[10] = {
					name = "Ramat David Airbase Logistic 11",
				},
				[11] = {
					name = "Ramat David Airbase Logistic 12",
				},
				[12] = {
					name = "Ramat David Airbase Logistic 13",
				},
				[13] = {
					name = "Ramat David Airbase Logistic 14",
				},
				[14] = {
					name = "Ramat David Airbase Logistic 15",
				},
			},
		},

		["Ramat David airbase OCA Strike"] = {
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Ramat David",
		},]]

		--Supply Line

		--NOTA: NON DEFINIRE LE SUPPLY LINE: ESSENDO TARGET, DCE PRENDE IL BARICENTRO COME IP PER GLI ATTACCHI; SE LE SUPPLY LINE SONO ESTESE, GLI ATTACCHI NON AVRANNO MAI LUOGO E GLI AEREI SORVOLERANNO L'INTERO TERRITORIO

	},
}