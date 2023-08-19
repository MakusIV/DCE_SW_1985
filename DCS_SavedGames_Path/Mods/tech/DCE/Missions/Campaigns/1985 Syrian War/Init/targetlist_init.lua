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
		["Hin Shinshar Chemical Storage"] = {
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
					name = "Hin Shinshar Chemical Weapons-1",
				},
				[2] = {
					name = "Hin Shinshar Chemical Weapons-2",
				},
				[3] = {
					name = "Hin Shinshar Chemical Weapons-3",
				},
				[4] = {
					name = "Hin Shinshar Chemical Weapons-4",
				},
				[5] = {
					name = "Hin Shinshar Chemical Weapons-5",
				},
				[6] = {
					name = "Hin Shinshar Chemical Weapons-6",
				},
				[7] = {
					name = "Hin Shinshar Chemical Weapons-7",
				},
				[8] = {
					name = "Hin Shinshar Chemical Weapons-8",
				},
				[9] = {
					name = "Hin Shinshar Chemical Weapons-9",
				},
				[10] = {
					name = "Hin Shinshar Chemical Weapons-10",
				},
				[11] = {
					name = "Hin Shinshar Chemical Weapons-11",
				},
				[12] = {
					name = "Hin Shinshar Chemical Weapons-12",
				},
			},
		},

		["Khirbet Tin Nur Chemical Storage"] = {
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
					name = "Khirbet Tin Nur Chemical Weapons-1",
				},
				[2] = {
					name = "Khirbet Tin Nur Chemical Weapons-2",
				},
				[3] = {
					name = "Khirbet Tin Nur Chemical Weapons-3",
				},
				[4] = {
					name = "Khirbet Tin Nur Chemical Weapons-4",
				},
				[5] = {
					name = "Khirbet Tin Nur Chemical Weapons-5",
				},
				[6] = {
					name = "Khirbet Tin Nur Chemical Weapons-6",
				},
				[7] = {
					name = "Khirbet Tin Nur Chemical Weapons-7",
				},
				[8] = {
					name = "Khirbet Tin Nur Chemical Weapons-8",
				},
				[9] = {
					name = "Khirbet Tin Nur Chemical Weapons-9",
				},
				[10] = {
					name = "Khirbet Tin Nur Chemical Weapons-10",
				},
				[11] = {
					name = "Khirbet Tin Nur Chemical Weapons-11",
				},
			},
		},

		["Iranian Storage Facility"] = {
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
					name = "Iranian Storage Facility-1",
				},
				[2] = {
					name = "Iranian Storage Facility-2",
				},
				[3] = {
					name = "Iranian Storage Facility-3",
				},
				[4] = {
					name = "Iranian Storage Facility-4",
				},
				[5] = {
					name = "Iranian Storage Facility-5",
				},
				[6] = {
					name = "Iranian Storage Facility-6",
				},
				[7] = {
					name = "Iranian Storage Facility-7",
				},
				[8] = {
					name = "Iranian Storage Facility-8",
				},
				[9] = {
					name = "Iranian Storage Facility-9",
				},
				[10] = {
					name = "Iranian Storage Facility-10",
				},
				[11] = {
					name = "Iranian Storage Facility-11",
				},	
				[12] = {
					name = "Iranian Storage Facility-12",
				},							
			},
		},

		["Palmyra Syrian Chemical Storage"] = {
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
					name = "Palmyra Syrian Chemical Storage-1",
				},
				[2] = {
					name = "Palmyra Syrian Chemical Storage-2",
				},
				[3] = {
					name = "Palmyra Syrian Chemical Storage-3",
				},
				[4] = {
					name = "Palmyra Syrian Chemical Storage-4",
				},
				[5] = {
					name = "Palmyra Syrian Chemical Storage-5",
				},
				[6] = {
					name = "Palmyra Syrian Chemical Storage-6",
				},
				[7] = {
					name = "Palmyra Syrian Chemical Storage-7",
				},
			},
		},

		["IR-Abukamal Storage"] = {
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
					name = "IR-Abukamal Warehouse-1",
				},
				[2] = {
					name = "IR-Abukamal Warehouse-2",
				},
				[3] = {
					name = "IR-Abukamal Warehouse-3",
				},
				[4] = {
					name = "IR-Abukamal Warehouse-4",
				},
				[5] = {
					name = "IR-Abukamal Tank-1",
				},
				[6] = {
					name = "IR-Abukamal Bunker-1",
				},								
			},
		},

		--
		-- SAM Site
		["Syria al-Safirah SAM SA-2"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria al-Safirah SAM SA-2",
		},

		["Syria Marj Ruhayyil SAM SA-2-1"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria Marj Ruhayyil SAM SA-2-1",
		},

		["Syria Marj Ruhayyil SAM SA-2-2"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria Marj Ruhayyil SAM SA-2-2",
		},

		["Ad Dumayr SAM SA-6 Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria Ad Dumayr SAM SA-6 Site",
		},

		["Ad Dumayr SAM SA-2 Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Ad Dumayr SAM SA-2 Site",
		},

		["An Nasiriyah SAM SA-2 Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria An Nasiriyah SAM SA-2",
		},

		["Ram Tarza SA10 A Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria Ram Tarza SA10 A Site",
		},

		["Al Haylunah SA10 Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Al Haylunah SA10 Site",
		},

		["Khirbet Tin Nur SA-2 Site"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Syria Khirbet Tin Nur SA-2 Site",
		},

		["Deir ez-Zor SA-5 Site"] = {
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

		["SA-11 Buk Site Beirut"] = {

			task = "Strike",
			picture = {},
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "SA-11 Buk Site Beirut",
		},

		--EWR Site
		["102 EWR Site"] = {
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

		["101 EWR Site"] = {
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
		["Al Ghizlaniyah Military Base"] = {
			task = "Strike",
			priority = 4,
			picture = {"Syria_Al Ghizlaniyah_Military_base.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Al Ghizlaniyah Military Base 1",
				},
				[2] = {
					name = "Al Ghizlaniyah Military Base 2",
				},
				[3] = {
					name = "Al Ghizlaniyah Military Base 3",
				},
				[4] = {
					name = "Al Ghizlaniyah Military Base 4",
				},	
				[5] = {
					name = "Al Ghizlaniyah Military Base 5",
				},
				[6] = {
					name = "Al Ghizlaniyah Military Base 6",
				},
				[7] = {
					name = "Al Ghizlaniyah Military Base 7",
				},
				[8] = {
					name = "Al Ghizlaniyah Military Base 8",
				},	
				[9] = {
					name = "Al Ghizlaniyah Military Base 9",
				},
				[10] = {
					name = "Al Ghizlaniyah Military Base 10",
				},
				[11] = {
					name = "Al Ghizlaniyah Military Base 11",
				},
				[12] = {
					name = "Al Ghizlaniyah Military Base 12",
				},	
				[13] = {
					name = "Al Ghizlaniyah Military Base 13",
				},
				[14] = {
					name = "Al Ghizlaniyah Military Base 14",
				},
				[15] = {
					name = "Al Ghizlaniyah Military Base 15",
				},
				[16] = {
					name = "Al Ghizlaniyah Military Base 16",
				},	
				[17] = {
					name = "Al Ghizlaniyah Military Base 17",
				},
				[18] = {
					name = "Al Ghizlaniyah Military Base 18",
				},			
			},
		},

		["IR-Al Kiswah Military Base"] = {
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
					name = "IR-Al Kiswah Warehouse-1",
				},
				[2] = {
					name = "IR-Al Kiswah Warehouse-2",
				},
				[3] = {
					name = "IR-Al Kiswah Warehouse-3",
				},
				[4] = {
					name = "IR-Al Kiswah Warehouse-4",
				},
				[5] = {
					name = "IR-Al Kiswah Warehouse-5",
				},
				[6] = {
					name = "IR-Al Kiswah Warehouse-6",
				},
				[7] = {
					name = "IR-Al Kiswah Warehouse-7",
				},
				[8] = {
					name = "IR-Al Kiswah Warehouse-8",
				},
				[9] = {
					name = "IR-Al Kiswah Warehouse-9",
				},
				[10] = {
					name = "IR-Al Kiswah Warehouse-10",
				},
				[11] = {
					name = "IR-Al Kiswah Warehouse-11",
				},
				[12] = {
					name = "IR-Al Kiswah Warehouse-12",
				},
				[13] = {
					name = "IR-Al Kiswah Warehouse-13",
				},
				[14] = {
					name = "IR-Al Kiswah Warehouse-14",
				},
				[15] = {
					name = "IR-Al Kiswah Warehouse-15",
				},
				[16] = {
					name = "IR-Al Kiswah Warehouse-16",
				},
				[17] = {
					name = "IR-Al Kiswah Warehouse-17",
				},
				[18] = {
					name = "IR-Al Kiswah Warehouse-18",
				},
				[19] = {
					name = "IR-Al Kiswah Warehouse-19",
				},
				[20] = {
					name = "IR-Al Kiswah Warehouse-20",
				},
				[21] = {
					name = "IR-Al Kiswah Warehouse-21",
				},
				[22] = {
					name = "IR-Al Kiswah Warehouse-22",
				},
				[23] = {
					name = "IR-Al Kiswah Warehouse-23",
				},
				[24] = {
					name = "IR-Al Kiswah Hut-1",
				},
				[25] = {
					name = "IR-Al Kiswah Hut-2",
				},
				[26] = {
					name = "IR-Al Kiswah Hut-3",
				},
				[27] = {
					name = "IR-Al Kiswah Barracks-1",
				},
				[28] = {
					name = "IR-Al Kiswah Barracks-2",
				},
				[29] = {
					name = "IR-Al Kiswah Barracks-3",
				},
				[30] = {
					name = "IR-Al Kiswah Barracks-4",
				},
				[31] = {
					name = "IR-Al Kiswah Barracks-5",
				},
			},
		},	

		["An Nasiriyah Military Base"] = {
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
					name = "Syria An Nasiriyah 1",
				},
				[2] = {
					name = "Syria An Nasiriyah 2",
				},
				[3] = {
					name = "Syria An Nasiriyah 3",
				},
				[4] = {
					name = "Syria An Nasiriyah 4",
				},
				[5] = {
					name = "Syria An Nasiriyah 5",
				},
				[6] = {
					name = "Syria An Nasiriyah 6",
				},
				[7] = {
					name = "Syria An Nasiriyah 7",
				},
				[8] = {
					name = "Syria An Nasiriyah 8",
				},
				[9] = {
					name = "Syria An Nasiriyah 9",
				},
				[10] = {
					name = "Syria An Nasiriyah 10",
				},
				[11] = {
					name = "Syria An Nasiriyah 11",
				},
				[12] = {
					name = "Syria An Nasiriyah 12",
				},
				[13] = {
					name = "Syria An Nasiriyah 13",
				},
				[14] = {
					name = "Syria An Nasiriyah 14",
				},
				[15] = {
					name = "Syria An Nasiriyah 15",
				},
				[16] = {
					name = "Syria An Nasiriyah 16",
				},
				[17] = {
					name = "Syria An Nasiriyah 17",
				},
				[18] = {
					name = "Syria An Nasiriyah 18",
				},
				[19] = {
					name = "Syria An Nasiriyah 19",
				},
				[20] = {
					name = "Syria An Nasiriyah 20",
				},
				[21] = {
					name = "Syria An Nasiriyah 21",
				},
				[22] = {
					name = "Syria An Nasiriyah 22",
				},
				[23] = {
					name = "Syria An Nasiriyah 23",
				},
				[24] = {
					name = "Syria An Nasiriyah 24",
				},
				[25] = {
					name = "Syria An Nasiriyah 25",
				},
				[26] = {
					name = "Syria An Nasiriyah 26",
				},
				[27] = {
					name = "Syria An Nasiriyah Bunker",
				},
				[28] = {
					name = "Syria An Nasiriyah 28",
				},
				[29] = {
					name = "Syria An Nasiriyah 29",
				},
				[30] = {
					name = "Syria An Nasiriyah 30",
				},
				[31] = {
					name = "Syria An Nasiriyah Barrack1",
				},
				[32] = {
					name = "Syria An Nasiriyah Barrack2",
				},				
			},
		},

		["23th-Artillery Brigade"] = {
			task = "Strike",
			priority = 1,
			attributes = {"soft"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "23th-Artillery Brigade",
		},	
		
		["248th Armored Regiment"] = {
			task = "Strike",
			priority = 1,
			attributes = {"armor"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "248th Armored Regiment",
		},	

		["237th Armored Regiment"] = {
			task = "Strike",
			priority = 1,
			attributes = {"armor"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "237th Armored Regiment",
		},	

		-- Intercept
		["Larnaca 120 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Larnaca",
			radius = 120000,
			inactive = false,
		},

		["Incirlik 120 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Incirlik",
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

		["Gazipasa 200 km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Gazipasa",
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
				min = 3, -- --3,
				max = 3, -- --6,
			},
			elements = {
				[1] = {
					name = "An Nasiriyah Airbase Logistic 1",
					["y"] = 86762.515547433,
                    ["x"] = -122673.50017915,
				},
				[2] = {
					name = "An Nasiriyah Airbase Logistic 2",
					["y"] = 86776.784711065,
                    ["x"] = -122680.5221112,
				},
				[3] = {
					name = "An Nasiriyah Airbase Logistic 3",
					["y"] = 86787.1321199,
                    ["x"] = -122663.42472333,
				},
				[4] = {
					name = "An Nasiriyah Airbase Logistic 4",
					["y"] = 86770.358780848,
                    ["x"] = -122656.06799567,
				},
				[5] = {
					name = "An Nasiriyah Airbase Logistic 5",
					["y"] = 86779.333988586,
                    ["x"] = -122637.67617654,
				},
				[6] = {
					name = "An Nasiriyah Airbase Logistic 6",
					["y"] = 86795.518789426,
                    ["x"] = -122645.91571151,
				},
				[7] = {
					name = "An Nasiriyah Airbase Logistic 7",
					["y"] = 86786.837850794,
                    ["x"] = -122622.66845212,
				},
				[8] = {
					name = "An Nasiriyah Airbase Logistic 8",
					["y"] = 86803.022651633,
                    ["x"] = -122630.31944888,
				},
				[9] = {
					name = "An Nasiriyah Airbase Logistic 9",
					["y"] = 85847.307706892,
                    ["x"] = -123249.33361623,
				},
				[10] = {
					name = "An Nasiriyah Airbase Logistic 10",
					["y"] = 85895.452314271,
                    ["x"] = -123205.12926208,
				},
				[11] = {
					name = "An Nasiriyah Airbase Logistic 11",
					["y"] = 85783.54873661,
                    ["x"] = -123872.67395514,
				},
				[12] = {
					name = "An Nasiriyah Airbase Logistic 12",
					["y"] = 85661.488898936,
                    ["x"] = -123790.43042815,
				},
				[13] = {
					name = "An Nasiriyah Airbase Logistic 13",
					["y"] = 85584.467183184,
                    ["x"] = -123721.89415566,
				},
				[14] = {
					name = "An Nasiriyah Airbase Logistic 14",
					["y"] = 85487.210948887,
                    ["x"] = -123640.95608148,
				},
				[15] = {
					name = "An Nasiriyah Airbase Logistic 15",
					["y"] = 85971.674528902,
                    ["x"] = -122655.5654005,
				},
				[16] = {
					name = "An Nasiriyah Airbase Logistic 16",
					["y"] = 85994.52327452,
                    ["x"] = -122705.29502332,
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
			elements = {
				[1] = {
					name = "Damascus Airbase Logistic-1",
					["y"] = 52528.232495553,
                    ["x"] = -180191.34926924,
				},
				[2] = {
					name = "Damascus Airbase Logistic-2",
					["y"] = 52556.369910765,
                    ["x"] = -180223.46644492,
				},
				[3] = {
					name = "Damascus Airbase Logistic-3",
					["y"] = 52586.939808088,
                    ["x"] = -180254.58223326,
				},
				[4] = {
					name = "Damascus Airbase Logistic-4",
					["y"] = 52557.461692813,
                    ["x"] = -180154.13828492,
				},
				[5] = {
					name = "Damascus Airbase Logistic-5",
					["y"] = 52591.306936277,
                    ["x"] = -180182.52461814,
				},
				[6] = {
					name = "Damascus Airbase Logistic-6",
					["y"] = 52624.060397693,
                    ["x"] = -180221.28288082,
				},
				[7] = {
					name = "Damascus Airbase Logistic-7",
					["y"] = 51804.244522921,
                    ["x"] = -179513.83714859,
				},
				[8] = {
					name = "Damascus Airbase Logistic-8",
					["y"] = 51826.539551566,
                    ["x"] = -179539.56218164,
				},
				[9] = {
					name = "Damascus Airbase Logistic-9",
					["y"] = 51847.977079109,
                    ["x"] = -179565.28721469,
				},
				[10] = {
					name = "Damascus Airbase Logistic-10",
					["y"] = 50497.230964957,
					["x"] = -182199.06180369,
				},
				[11] = {
					name = "Damascus Airbase Logistic-11",
					["y"] = 50257.372863667,
                    ["x"] = -181989.46857361,
				},
				[12] = {
					name = "Damascus Airbase Logistic-12",
					["y"] = 50479.71472886,
                    ["x"] = -182178.3607974,
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

		["Deir ez-Zor Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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

		["Tabqa Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
			task = "Strike",
			priority = 4,
			picture = {"Tabqua_Airbase.png"},
			attributes = {"Structure"},
			class = "static",
			firepower = {
				min = 3, -- --3,
				max = 3, -- --6,
			},
			elements = {
				[1] = {
					name = "Tabqua Airbase Logistic 1",
					
				},
				[2] = {
					name = "Tabqua Airbase Logistic 2",
					
				},
				[3] = {
					name = "Tabqua Airbase Logistic 3",
					
				},
				[4] = {
					name = "Tabqua Airbase Logistic 4",
					
				},
				[5] = {
					name = "Tabqua Airbase Logistic 5",
					
				},
				[6] = {
					name = "Tabqua Airbase Logistic 6",
					
				},
				[7] = {
					name = "Tabqua Airbase Logistic 7",
					
				},
				[8] = {
					name = "Tabqua Airbase Logistic 8",
					
				},
				[9] = {
					name = "Tabqua Airbase Logistic 9",
					
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

		["Sayqal Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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
		},

		["Khalkhalah Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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
			elements = {
				[1] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 1",
					["y"] = 86762.515547433,
                    ["x"] = -122673.50017915,
				},
				[2] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 2",
					["y"] = 86776.784711065,
                    ["x"] = -122680.5221112,
				},
				[3] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 3",
					["y"] = 86787.1321199,
                    ["x"] = -122663.42472333,
				},
				[4] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 4",
					["y"] = 86770.358780848,
                    ["x"] = -122656.06799567,
				},
				[5] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 5",
					["y"] = 86779.333988586,
                    ["x"] = -122637.67617654,
				},
				[6] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 6",
					["y"] = 86795.518789426,
                    ["x"] = -122645.91571151,
				},
				[7] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 7",
					["y"] = 86786.837850794,
                    ["x"] = -122622.66845212,
				},
				[8] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 8",
					["y"] = 86803.022651633,
                    ["x"] = -122630.31944888,
				},
				[9] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 9",
					["y"] = 85847.307706892,
                    ["x"] = -123249.33361623,
				},
				[10] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 10",
					["y"] = 85895.452314271,
                    ["x"] = -123205.12926208,
				},
				[11] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 11",
					["y"] = 85783.54873661,
                    ["x"] = -123872.67395514,
				},
				[12] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 12",
					["y"] = 85661.488898936,
                    ["x"] = -123790.43042815,
				},
				[13] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 13",
					["y"] = 85584.467183184,
                    ["x"] = -123721.89415566,
				},
				[14] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 14",
					["y"] = 85487.210948887,
                    ["x"] = -123640.95608148,
				},
				[15] = {
					name = "Beirut-Rafic Hariri Airbase Logistic 15",
					["y"] = 85971.674528902,
                    ["x"] = -122655.5654005,
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

		["Taftanaz Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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
					name = "Taftanaz Logistic 16",
					
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

		["Mezzeh Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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

		["Mezzeh Airbase OCA Strike"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
			task = "Strike",
			priority = 1,
			attributes = {"Parked Aircraft"},
			firepower = {
				min = 2,
				max = 4, 
			},
			class = "airbase",
			name = "Mezzeh",
		},

		["Bassel Al-Assad Airbase"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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

		["Bassel Al-Assad Airbase OCA Strike"] = { -- devi aggiornare le coordinate [x], [y]. PROVA A NON INSERIRLE ESSENDO ELEMENTI STATICI INSERITI IN ME  
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

		["Tanker Track North"] = {
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

		["Tanker Track South"] = {
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
		
		["Sweep Center"] = {
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3, --estimated aircraft : 5, efficiency: 0.5 ( 2 missile for one shot ): 5 / 0.5 = 10
				max = 5,
			},
			x = -23033,
			y = 31546,
			text = "in the center front area near Hama",
		},

		["Sweep North East"] = {
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3,
				max = 5,
			},
			x = 102324,
			y = 73626,
			text = "in the north east front area near Taftanaz",
		},

		["Sweep South East"] = {
			task = "Fighter Sweep",
			priority = 1,
			attributes = {},
			firepower = {
				min = 3,
				max = 5,
			},
			x = -141653,
			y = -40359,
			text = "in the south east front area",
		},
		------------------------------------------------------------------------ OLD
		
		["Hin Shinshar-Bassel Al-Assad Supply Line 0-1"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hin_Shinshar-Bassel_Al-Assad_Supply_Line_1.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 1",
					["y"] = 67783.039689622,
                    ["x"] = -15303.365799022,
					
				},
				
				[2] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 0",
					["y"] = 53317.571853383,
                    ["x"] = -33876.656685705,
				},				
			},
		},

		["Hin Shinshar-Bassel Al-Assad Supply Line 2-3"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hin_Shinshar-Bassel_Al-Assad_Supply_Line_2.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 2",
					["y"] = 79942.168727853,
                    ["x"] = 819.57518052162,
				},
				[2] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 3",
					["y"] = 61885.904216987,
                    ["x"] = 2079.5342061071,
				},								
			},
		},

		["Hin Shinshar-Bassel Al-Assad Supply Line 4-5"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hin_Shinshar-Bassel_Al-Assad_Supply_Line_3.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 4",
					["y"] = 58504.348294302,
                    ["x"] = 26427.4535455,
				},
				[2] = {
					name = "Hin Shinshar-Bassel Al-Assad Supply Line 5",
					["y"] = 35281.133523481,
                    ["x"] = 40834.165859223,
				},
			},
		},
		
	},

	["red"] = {		

		-- Production & Storage
		["Silifke Storage Site"] = { -- Supply Plant
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
				[13] = {
					name = "Silifke Storage Site 13",
				},
				[14] = {
					name = "Silifke Storage Site 14",
				},
				[15] = {
					name = "Silifke Storage Site 15",
				},
				[16] = {
					name = "Silifke Storage Site 16",
				},
				[17] = {
					name = "Silifke Storage Site 19",
				},
				[18] = {
					name = "Silifke Storage Site 20",
				},
				[19] = {
					name = "Silifke Storage Site 21",
				},
				[20] = {
					name = "Silifke Storage Site 22",
				},
				[21] = {
					name = "Silifke Storage Site 23",
				},
				[22] = {
					name = "Silifke Storage Site 24",
				},
				[23] = {
					name = "Silifke Storage Site 25",
				},
				[24] = {
					name = "Silifke Storage Site 26",
				},
				[25] = {
					name = "Silifke Storage Site 27",
				},
				[26] = {
					name = "Silifke Storage Site 28",
				},
				[27] = {
					name = "Silifke Storage Site 29",
				},
				[28] = {
					name = "Silifke Storage FARP",
				},
			},
		},	

		["Hamdilli Ammunition Depot"] = {  --Supply Plant
			task = "Strike",
			priority = 4,
			picture = {"Hamdilli_Ammunition_Depot.png"},
			attributes = {"Structure"},
			firepower = {
				min = 3,  --3,
				max = 3,  --6,
			},
			class = "static",
			elements = {
				[1] = {
					name = "Hamdilli Ammunition Depot-1",
				},
				[2] = {
					name = "Hamdilli Ammunition Depot-2",
				},
				[3] = {
					name = "Hamdilli Ammunition Depot-3",
				},
				[4] = {
					name = "Hamdilli Ammunition Depot-4",
				},
				[5] = {
					name = "Hamdilli Ammunition Depot-5",
				},
				[6] = {
					name = "Hamdilli Ammunition Depot-6",
				},
				[7] = {
					name = "Hamdilli Ammunition Depot-7",
				},
				[8] = {
					name = "Hamdilli Ammunition Depot-8",
				},
				[9] = {
					name = "Hamdilli Ammunition Depot-9",
				},
				[10] = {
					name = "Hamdilli Ammunition Depot-10",
				},				
				[11] = {
					name = "Hamdilli Ammunition Depot-12",
				},
				[12] = {
					name = "Hamdilli Ammunition Depot-13",
				},
				[13] = {
					name = "Hamdilli Ammunition Depot-14",
				},
				[14] = {
					name = "Hamdilli Ammunition Depot-15",
				},
			},
		},	

		-- SAM Site
		["SAM Patriot Site Mersin"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "SAM Patriot Site Mersin",
		},

		["SAM Patriot SIte Gaziantep"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "SAM Patriot SIte Gaziantep",
		},

		["Cyprus Larnaca SAM Hawk"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "Cyprus Larnaca SAM Hawk",
		},

		["SAM Hawk Site Haifa"] = {
			task = "Strike",
			priority = 6,
			attributes = {"SAM"},
			firepower = {
				min = 2, 
				max = 4, 
			},
			class = "vehicle",
			name = "SAM Hawk Site Haifa",
		},

		-- Fleet
		["CVN-71 Theodore Roosevelt"] = {
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

		["CVN-72 Abraham Lincoln"] = {
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

		["USA Fleet 1"] = {
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

		["USA Fleet 2"] = {
			task = "Anti-ship Strike",
			priority = 1,
			attributes = {"ship"},
			firepower = {
				min = 3,
				max = 6,
			},
			class = "ship",
			name = "USA Fleet 2",
		},

		-- Army
		["3th Mechanized Division"] = {
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

		["4th Armored Division"] = {
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

		["6th Mechanized Division"] = {
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

		["9th Armored Division"] = {
			task = "Strike",
			priority = 1,
			attributes = {"armor"},
			firepower = {
				min = 3,  -- 2,
				max = 3,  -- 4,
			},
			class = "vehicle",
			name = "9th Armored Division",
		},	

		--EWR Site
		["EWR NATO Mersin"] = {
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

		["Beirut-Rafic Hariri 80km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Beirut-Rafic Hariri",
			radius = 80000,
			inactive = false,
		},

		["Tabqua 110km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Tabqua",
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

		["Palmyra 200km Alert"] = {
			task = "Intercept",
			priority = 5,
			attributes = {},
			firepower = {
				min = 2,  -- min num enemy aircraft
				max = 4, -- max num enemy aircraft
			},
			base = "Palmyra",
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

		["CAP Tabqua east"] = {
			task = "CAP",
			priority = 20,
			attributes = {"Air Forces"},
			firepower = {
				min = 2,
				max = 4,
			},
			refpoint = "CAP Tabqua east",
			radius = 80000,
			text = "north-west of Tabqua",
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

		["Ramat David Airbase"] = {
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
					name = "Naquora Helibase Logistic 9",					
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

		['FARP-Hatay FARP 1'] = {
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
				[9] = {
					name = "Hatay FARP 9",
				},
				[10] = {
					name = "Hatay FARP 10",
				},
				[11] = {
					name = "Hatay FARP 11",
				},
				[12] = {
					name = "Hatay FARP 20",
				},
				[13] = {
					name = "Hatay FARP 13",
				},
				[14] = {
					name = "Hatay FARP 14",
				},
				[15] = {
					name = "Hatay FARP 15",
				},
				[16] = {
					name = "Hatay FARP 19",
				},
				[17] = {
					name = "Hatay FARP 17",
				},
				[18] = {
					name = "Hatay FARP 18",
				},			
			},
		},


		--Supply Line

		["Hamdilli-Hatay Supply Line 1-3"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hamdilli-Hatay_Supply_Line_1.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Hamdilli - Hatay Supply Line 1",
					["y"] = 28198.314541683,
					["x"] = 221394.92055014,
					
				},
				[2] = {
					name = "Hamdilli - Hatay Supply Line 2",
					["y"] = 27128.936783981,
                    ["x"] = 214502.26472623,
				},
				[3] = {
					name = "Hamdilli - Hatay Supply Line 3",
					["y"] = 26760.063072063,
                    ["x"] = 208599.57844244,
				},
			},
		},

		["Hamdilli-Hatay Supply Line 4-6"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hamdilli-Hatay_Supply_Line_2.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Hamdilli - Hatay Supply Line 4",
					["y"] = 31096.874017278,
                    ["x"] = 202018.49843269,
				},
				[2] = {
					name = "Hamdilli - Hatay Supply Line 5",
					["y"] = 34456.154797002,
                    ["x"] = 189834.90355686,
				},
				[3] = {
					name = "Hamdilli - Hatay Supply Line 6",
					["y"] = 35013.127525455,
                    ["x"] = 177387.11039036,
				},
			},
		},

		["Hamdilli-Hatay Supply Line 6-7"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hamdilli-Hatay_Supply_Line_3.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Hamdilli - Hatay Supply Line 6",
					["y"] = 35013.127525455,
                    ["x"] = 177387.11039036,
				},
				[2] = {
					name = "Hamdilli - Hatay Supply Line 7",
					["y"] = 29149.718483914,
                    ["x"] = 165180.04738535,
				},
			},
		},

		["Silifke-Gazipasa Supply Line 1-3"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Gazipasa_Supply_Line_1.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Silifke-Gazipasa-Incirlik Supply Line 1",
					["y"] = -176932.22283624,
                    ["x"] = 156022.67709244,
				},
				[2] = {
					name = "Silifke-Gazipasa-Incirlik Supply Line 2",
					["y"] = -179975.94432493,
                    ["x"] = 158061.81960631,
					
				},
				[3] = {
					name = "Silifke-Gazipasa Supply Line 3",
					["y"] = -188108.07874371,
                    ["x"] = 154566.06699264,
				},
			},
		},

		["Silifke-Gazipasa Supply Line 3-5"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Gazipasa_Supply_Line_2.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Silifke-Gazipasa Supply Line 3",
					["y"] = -188108.07874371,
                    ["x"] = 154566.06699264,
				},
				[2] = {
					name = "Silifke-Gazipasa Supply Line 4",
					["y"] = -196791.25411094,
                    ["x"] = 154657.76831347,
				},
				[3] = {
					name = "Silifke-Gazipasa Supply Line 5",
					["y"] = -213876.93337131,
                    ["x"] = 156978.9667143,
				},
			},
		},

		["Silifke-Gazipasa Supply Line 6-8"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Gazipasa_Supply_Line_3.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Silifke-Gazipasa Supply Line 6",
					["y"] = -245348.25867567,
                    ["x"] = 160493.44533889,
				},
				[2] = {
					name = "Silifke-Gazipasa Supply Line 7",
					["y"] = -255049.8381875,
                    ["x"] = 156184.89304219,
				},
				[3] = {
					name = "Silifke-Gazipasa Supply Line 8",
					["y"] = -282123.30517246,
                    ["x"] = 157715.69855442,
				},
			},
		},

		["Silifke-Incirlik Supply Line 1-2"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Incirlik_Supply_Line_1-2.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Silifke-Gazipasa-Incirlik Supply Line 1",
					["y"] = -176932.22283624,
                    ["x"] = 156022.67709244,
				},
				[2] = {
					name = "Silifke-Gazipasa-Incirlik Supply Line 2",
					["y"] = -179975.94432493,
                    ["x"] = 158061.81960631,
					
				},				
			},
		},

		["Silifke-Incirlik Supply Line 3-4"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Incirlik_Supply_Line_3-4.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Silifke-Incirlik Supply Line 4",
					["y"] = -167690.647473,
					["x"] = 172016.9904773,
				},				
				[2] = {
					name = "Silifke-Incirlik Supply Line 3",
					["y"] = -168163.41850772,
					["x"] = 166613.88972863,
				},				
			},
		},

		["Silifke-Incirlik Supply Line 5-6-7"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Incirlik_Supply_Line_5-6-7.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Silifke-Incirlik Supply Line 5",
					["y"] = -161044.66246656,
                    ["x"] = 181844.02840373,
				},
				[2] = {
					name = "Silifke-Incirlik Supply Line 6",
					["y"] = -155718.61588662,
                    ["x"] = 194385.06613007,
				},
				[3] = {
					name = "Silifke-Incirlik Supply Line 7",
					["y"] = -139742.94816455,
                    ["x"] = 187532.45572413,
				},
				[2] = {
					name = "Silifke-Incirlik Supply Line 8",
					["y"] = -129568.22014551,
                    ["x"] = 199758.84098011,
				},
				[3] = {
					name = "Silifke-Incirlik Supply Line 9",
					["y"] = -112406.13518949,
					["x"] = 207887.50792655,
				},
			},
		},

		["Silifke-Incirlik Supply Line 8-9"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Silifke-Incirlik_Supply_Line_8-9.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Silifke-Incirlik Supply Line 8",
					["y"] = -129568.22014551,
                    ["x"] = 199758.84098011,
				},
				[2] = {
					name = "Silifke-Incirlik Supply Line 9",
					["y"] = -112406.13518949,
					["x"] = 207887.50792655,
				},
			},
		},

		["Hamdilli - Gaziantep Supply Line 1-2"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hamdilli-Gaziantep_Supply_Line_1.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {
				[1] = {
					name = "Hamdilli - Gaziantep Supply Line 1",
					["y"] = 47771.494929525,
                                        ["x"] = 234135.64673827,
					
				},
				[2] = {
					name = "Hamdilli - Gaziantep Supply Line 2",
					["y"] = 69451.669307728,
                    ["x"] = 239237.89443122,
				},				
			},
		},

		["Hamdilli - Gaziantep Supply Line 3-5"] =  { 
			task = "Strike",
			priority = 6,
			picture = {"Hamdilli-Gaziantep_Supply_Line_2.png"},
			attributes = {"Structure"},
			firepower = {
				min = 4,
				max = 8,
			},			
			elements = {				
				[1] = {
					name = "Hamdilli - Gaziantep Supply Line 3",
					["y"] = 95630.716609183,
					["x"] = 242538.85450581,
				},
				[2] = {
					name = "Hamdilli - Gaziantep Supply Line 4",
					["y"] = 126723.08451733,
                    ["x"] = 243716.66026956,
				},
				[3] = {
					name = "Hamdilli - Gaziantep Supply Line 6",
					["y"] = 132165.32745219,
                    ["x"] = 238219.95028591,
				},				
			},
		},

	},
}