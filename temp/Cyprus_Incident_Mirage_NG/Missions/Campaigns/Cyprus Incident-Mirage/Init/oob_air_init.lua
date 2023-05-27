--Order of Battle - Aircraft/Helicopter
--organized in units (squadrons/regiments) containing a number of aircraft
--Campaign Version-V20.00

-- Miguel Fichier Revision M42
------------------------------------------------------------------------------------------------------- 

-- miguel21 modification M42 : liveryModex ajoute des Skin lié au numero de l avion
-- Miguel21 modification M33.e 	Custom Briefing (e: divers)
-- ATO_G_adjustment02 TASK Coef


--[[ Unit Entry Example ----------------------------------------------------------------------------

[1] = {
	inactive = true,								--true if unit is not active
	player = true,									--true for player unit
	name = "527 TFS",								--unit name
	type = "F-5E-3",								--aircraft type
	helicopter = true,								--true for helicopter units
	country = "USA",								--unit country
	livery = {"USAF Euro Camo"},					--unit livery
	liveryModex = {									--unit livery Modex  (optional)
		[100] = "VF-101 Dark",
		[110] = "VF-101 Grim Reapers Low Vis",
		},
	base = "Groom Lake AFB",						--unit base
	skill = "Random",								--unit skill
	tasks = {										--list of eligible unit tasks. Note: task names do not necessary match DCS tasks)
		["AWACS"] = true,							
		["Anti-ship Strike"] = true,
		["CAP"] = true,
		["Fighter Sweep"] = true,	
		["Intercept"] = true,
		["Reconnaissance"] = true,
		["Refueling"] = true,
		["Strike"] = true,							--Generic air-ground task (replaces "Ground Attack", "CAS" and "Pinpoint Strike")
		["Transport"] = true,
		["Escort"] = true,							--Support task: Fighter escort for package
		["SEAD"] = true,							--Support task: SEAD escort for package
		["Escort Jammer"] = true,					--Support task: Single airraft in center of package for defensive jamming
		["Flare Illumination"] = true,				--Support task: Illuminate target with flares for package
		["Laser Illumination"] = true,				--Support task: Lase target for package
		["Stand-Off Jammer"] = true,				--Not implemeted yet: On-station jamming
		["Chaff Escort"] = true,					--Not implemented yet: Lay chaff corrdior ahead of package
		["A-FAC"] = true,							--Not implemented yet: Airborne forward air controller
	},
	tasksCoef = {									--unit tasks coef (optional)
		["Strike"] = 1,								-- coef normal : = 1
		["SEAD"] = 1,
		["Laser Illumination"] = 1,
		["Intercept"] = 1,
		["CAP"] = 0.2,
		["Escort"] = 3,
		["Fighter Sweep"] = 1,	
	},
	number = 12,									--number of airframes
	reserve = 18,									--replace reserve squadrons
	refuelable = false,								--aucun affichage de TACAN ou autre Frequence des TANKER dans le briefing
},

]]-----------------------------------------------------------------------------------------------------

oob_air = {
	["blue"] = {											--side 1
		{
			name = "450 M-E/P-1",								--unit name
			player = false,									--player unit
			inactive = false,
			type = "Mi-24P",								--aircraft type
			helicopter = true,
			country = "Cyprus",								--unit country
			livery = {"Cypriot Air Force 450th AHS Black Panther", "Cypriot National Guard - 819"},					--unit livery https://www.digitalcombatsimulator.com/fr/files/3317166/ and https://www.digitalcombatsimulator.com/fr/files/3317491/
			base = "Lakatamia Airbase",							--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 3,
			},
			number = 6,
			reserve = 18,
		},
		{
			name = "EC 331",								--unit name
			player = true,									--player unit
			inactive = true,
			type = "M-2000C",								--aircraft type
			country = "Greece",								--unit country
			livery = {"Greek Air Force"},					--unit livery
			base = "Paphos Airbase",							--unit base
			parking_id = {
                [""] = {23,24,25,26,27,28,29,30,31,32,33,34,35,36,37},
            },
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,
				["Intercept"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 1,
			},
			number = 16,
			reserve = 30,
		},
		{
			name = "450 M-E/P-2",								--unit name
			player = false,									--player unit
			type = "SA342M",								--aircraft type
			helicopter = true,
			country = "Cyprus",								--unit country
			livery = {"Cyprus air force"},									--unit livery
			base = "Larnaca Airbase",								--unit base
			skill = "high",								--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,				
			},
			number = 4,
			reserve = 12,
		},
		{
			name = "356th Tactical Transport Squadron",								--unit name
			player = false,									--player unit
			type = "C-130",									--aircraft type
			country = "Greece",								--unit country
			livery = "HAF SEA Camo",				--unit livery https://www.digitalcombatsimulator.com/fr/files/2534864/
			base = "Kasteli Airbase",						--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Intercept"] = false,
				["Transport"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 2,
				["CAP"] = 2,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 1,
			},
			number = 6,
			reserve = 18,
		},
		{
			name = "347th Squadron",								--unit name
			player = false,									--player unit
			inactive = true,
			type = "F-16C_50",								--aircraft type
			country = "Greece",								--unit country
			livery = {"HAF F-16C 347 SQ PERSEAS"},					--unit livery https://www.digitalcombatsimulator.com/en/files/3308848/
			base = "Kasteli Airbase",							--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,
				["Intercept"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 1,
			},
			number = 8,
			reserve = 30,
		},		
	},
	["red"] = {												--side 2
		{
			name = "3rd KHA",							--unit name
			type = "UH-1H",								--aircraft type
			helicopter = true,
			country = "Turkey",								--unit country
			livery = {""},				--unit livery
			base = "Pinarbashi Airbase",							--unit base
			skill = "High",								--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Strike"] = true,
				["Transport"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 2,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Transport"] = 1,
			},
			number = 6,
			reserve = 12,
		},
		{
			name = "152 Filo",							--unit name
			inactive = true,
			type = "F-16C_50",								--aircraft type
			country = "Turkey",							--unit country
			livery = "TUAF 152 Akincilar",						--unit livery https://www.digitalcombatsimulator.com/en/files/3306563/
			base = "Incirlik Airbase",							--unit base
			skill = "high",								--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1.5,
				["Fighter Sweep"] = 1,	
			},
			number = 12,
			reserve = 24,
		},
		{
			name = "222.Filo",								--unit name
			player = false,									--player unit
			inactive = false,
			type = "C-130",									--aircraft type
			country = "Turkey",								--unit country
			livery = "Turkish Air Force",				--unit livery https://www.digitalcombatsimulator.com/fr/files/3318189/ or https://www.digitalcombatsimulator.com/fr/files/3318657/ for ANUBIS version
			base = "Incirlik Airbase",						--unit base
			skill = "High",									--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Transport"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 2,
				["CAP"] = 2,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 1,
			},
			number = 6,
			reserve = 12,
		},
		{
			name = "2nd KHA",								--unit name
			type = "AH-1W",								--aircraft type
			helicopter = true,								--true for helicopter units
			inactive = true,
			country = "Turkey",								--unit country
			livery = "Turkey 2",									--unit livery
			base = "Ercan Airbase",						--unit base
			skill = "Random",									--unit skill
			tasks = {
				["Strike"] = true,
				["Escort"] = true,
			},
			number = 6,
			reserve = 16,
		},
		{
			name = "111.Filo",								--unit name
			type = "F-4E",								--aircraft type
			inactive = true,
			country = "Turkey",								--unit country
			livery = "F4 Turkey",						--unit livery
			base = "Incirlik Airbase",						--unit base
			skill = "Random",
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Anti-ship Strike"] = true,	
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,	
			},
			number = 16,
			reserve = 24,
		},
		{
			name = "2nd-2 KHA",								--unit name
			type = "AH-1W",								--aircraft type
			helicopter = true,								--true for helicopter units
			inactive = true,
			country = "Turkey",								--unit country
			livery = "Turkey 2",									--unit livery
			base = "FARP-Madrid",						--unit base
			skill = "Random",									--unit skill
			tasks = {
				["Strike"] = true,
				["Escort"] = true,
			},
			number = 6,
			reserve = 16,
		},		
		{
			name = "134.Filo",								--unit name
			type = "F-5E-3",								--aircraft type
			inactive = true,
			country = "Turkey",						--unit country
			livery = "3rd Main Jet Base Group Command, Turkey",			--unit livery
			base = "Incirlik Airbase",							--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Strike"] = true,				
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 3,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,	
			},
			number = 12,
			reserve = 16,
		},
		-- [8] = {
			-- name = "141 TFS",								--unit name
			-- inactive = true,
			-- type = "F-5E-3",								--aircraft type
			-- base = "Reserves",
			-- skill = "Random",								--unit skill
			-- tasks = {},									--unit tasks
			-- number = 24,
		-- },
		-- [9] = {
			-- name = "72 TFS",								--unit name
			-- type = "Su-24M",								--aircraft type
			-- country = "Iran",								--unit country
			-- livery = "Iranian Air Force",									--unit livery
			-- base = "Shiraz Intl",						--unit base
			-- skill = "high",									--unit skill
			-- tasks = {
				-- ["Strike"] = true,
				-- ["Anti-ship Strike"] = true,				
				-- ["SEAD"] = true,
				-- ["Laser Illumination"] = false,
			-- },
			-- tasksCoef = {									--unit tasks coef (optional)
				-- ["Strike"] = 1,								-- coef normal : = 1
				-- ["SEAD"] = 1,
				-- ["Laser Illumination"] = 1,
				-- ["Intercept"] = 1,
				-- ["CAP"] = 1,
				-- ["Escort"] = 1,
				-- ["Fighter Sweep"] = 1,	
			-- },
			-- number = 6,
		-- },
		-- [10] = {
			-- name = "73 TFS",								--unit name
			-- inactive = true,
			-- type = "Su-24M",								--aircraft type
			-- base = "Reserves",
			-- skill = "high",									--unit skill
			-- tasks = {},										--unit tasks
			-- number = 18,
		-- },
		-- [11] = {
			-- name = "51 TFS",								--unit name
			-- type = "MiG-29A",								--aircraft type
			-- country = "Iran",								--unit country
			-- livery = {"IRIAF blue-grey"},									--unit livery
			-- base = "Bandar Abbas Intl",								--unit base
			-- skill = "high",								--unit skill
			-- tasks = {										--unit tasks
				-- ["Intercept"] = true,
				-- ["CAP"] = true,
				-- ["Escort"] = true,
				-- ["Fighter Sweep"] = true,
			-- },
			-- tasksCoef = {									--unit tasks coef (optional)
				-- ["Strike"] = 1,								-- coef normal : = 1
				-- ["SEAD"] = 1,
				-- ["Laser Illumination"] = 1,
				-- ["Intercept"] = 1,
				-- ["CAP"] = 1,
				-- ["Escort"] = 1.5,
				-- ["Fighter Sweep"] = 1,	
			-- },
			-- number = 4,
		-- },
		-- [12] = {
			-- name = "52 TFS",								--unit name
			-- inactive = true,
			-- type = "MiG-29A",								--aircraft type
			-- base = "Reserves",
			-- skill = "high",								--unit skill
			-- tasks = {},									--unit tasks
			-- number = 18,
		-- },
		-- [13] = {
			-- name = "21 TFS",							--unit name
			-- type = "F-5E-3",							--aircraft type
			-- country = "Iran",							--unit country
			-- livery = "IR IRIAF Camo",					--unit livery
			-- base = "Sirri Island",						--unit base
			-- skill = "high",								--unit skill
			-- tasks = {
				-- ["Intercept"] = true,
				-- ["CAP"] = true,
			-- },
			-- tasksCoef = {									--unit tasks coef (optional)
				-- ["Strike"] = 1,								-- coef normal : = 1
				-- ["SEAD"] = 1,
				-- ["Laser Illumination"] = 1,
				-- ["Intercept"] = 1,
				-- ["CAP"] = 1,
				-- ["Escort"] = 1.5,
				-- ["Fighter Sweep"] = 1,	
			-- },
			-- number = 4,
		-- },
		-- [14] = {
			-- name = "22 TFS",								--unit name
			-- inactive = true,
			-- type = "F-5E-3",								--aircraft type
			-- base = "Reserves",
			-- skill = "high",								--unit skill
			-- tasks = {},									--unit tasks
			-- number = 22,
		-- },
		-- [15] = {
			-- name = "Tanker sqd",								--unit name
			-- type = "KC135MPRS",								--aircraft type
			-- country = "Iran",								--unit country
			-- livery = {"IRIAF"},									--unit livery
			-- base = "Shiraz Intl",							--unit base
			-- skill = "High",								--unit skill
			-- tasks = {										--unit tasks
				-- ["Refueling"] = true,
			-- },
			-- number = 4,
		-- },
		-- [16] = {
			-- name = "83 TFS",							--unit name
			-- type = "F-14A-135-GR",								--aircraft type
			-- country = "Iran",								--unit country
			-- livery = {"IRIAF Blue-Gray"},				--unit livery
			-- base = "Shiraz Intl",							--unit base
			-- skill = "High",								--unit skill
			-- tasks = {										--unit tasks
				-- ["Intercept"] = true,
				-- ["CAP"] = true,
				-- ["Escort"] = true,
				-- ["Fighter Sweep"] = true,				
			-- },
			-- tasksCoef = {									--unit tasks coef (optional)
				-- ["Strike"] = 1,								-- coef normal : = 1
				-- ["SEAD"] = 1,
				-- ["Laser Illumination"] = 1,
				-- ["Intercept"] = 1,
				-- ["CAP"] = 1.5,
				-- ["Escort"] = 1,
				-- ["Fighter Sweep"] = 1,	
			-- },
			-- number = 4,
		-- },
		-- [17] = {
			-- name = "84 TFS",								--unit name
			-- inactive = true,
			-- type = "F-14A-135-GR",								--aircraft type
			-- base = "Reserves",
			-- skill = "High",								--unit skill
			-- tasks = {},									--unit tasks
			-- number = 18,
		-- },
		-- [18] = {
			-- name = "21-2 TFS",							--unit name
			-- type = "F-5E-3",							--aircraft type
			-- country = "Iran",							--unit country
			-- livery = "IR IRIAF Camo",					--unit livery
			-- base = "Qeshm Island",						--unit base
			-- skill = "high",								--unit skill
			-- tasks = {
				-- ["Intercept"] = true,
				-- ["CAP"] = true,
			-- },
			-- tasksCoef = {									--unit tasks coef (optional)
				-- ["Strike"] = 1,								-- coef normal : = 1
				-- ["SEAD"] = 1,
				-- ["Laser Illumination"] = 1,
				-- ["Intercept"] = 1,
				-- ["CAP"] = 1,
				-- ["Escort"] = 1,
				-- ["Fighter Sweep"] = 1,	
			-- },
			-- number = 4,
		-- },
		-- [19] = {
			-- name = "22-2 TFS",								--unit name
			-- inactive = true,
			-- type = "F-5E-3",								--aircraft type
			-- base = "Reserves",
			-- skill = "high",								--unit skill
			-- tasks = {},									--unit tasks
			-- number = 22,
		-- },
		-- [20] = {
			-- name = "AWACS Squadron",								--unit name
			-- type = "A-50",									--aircraft type
			-- country = "Iran",								--unit country
			-- livery = "ADNAN",						--unit livery
			-- base = "Shiraz Intl",							--unit base
			-- skill = "High",								--unit skill
			-- tasks = {										--unit tasks
				-- ["AWACS"] = true,
			-- },
			-- number = 2,
		-- },		
--[[		[20] = {
			name = "71 TAS",								--unit name
			type = "UH-1H",									--aircraft type
			country = "Iran",								--unit country
			livery = "IRIAA 6-4310",									--unit livery
			base = "FARP_Dublin",				--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},
		[21] = {
			name = "R/71 TAS",								--unit name
			inactive = true,
			type = "UH-1H",								--aircraft type
			base = "Reserves",
			skill = "high",								--unit skill
			tasks = {},									--unit tasks
			number = 6,
		},		
		[15] = {
			name = "23 TFS",							--unit name
			type = "F-5E-3",							--aircraft type
			country = "Iran",							--unit country
			livery = "IR IRIAF Camo",					--unit livery
			base = "Abu Musa Island Airport",						--unit base
			skill = "high",								--unit skill
			tasks = {
				["Intercept"] = true,
			},
			number = 2,
		},
		[16] = {
			name = "24 TFS",								--unit name
			inactive = true,
			type = "F-5E-3",								--aircraft type
			base = "Reserves",
			skill = "high",								--unit skill
			tasks = {},									--unit tasks
			number = 22,
		},]]--
--[[		[20] = {
			name = "53 TFS",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Iran",								--unit country
			livery = "IRIAF - Standard",								--unit livery
			base = "Havadarya",						--unit base
			skill = "high",								--unit skill
			tasks = {
				["Intercept"] = true,
				["CAP"] = true,				
			},
			number = 4,
		},
		[21] = {
			name = "54 TFS",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = "high",								--unit skill
			tasks = {},									--unit tasks
			number = 20,
		},		
		[11] = {
			name = "71 TAS",								--unit name
			type = "C-130",									--aircraft type
			country = "Iran",								--unit country
			livery = {""},									--unit livery
			base = "Abu Musa Island Airport",				--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},
		[12] = {
			name = "72 TAS",								--unit name
			type = "C-130",									--aircraft type
			country = "Iran",								--unit country
			livery = {""},									--unit livery
			base = "Havadarya",								--unit base
			skill = "Random",								--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 1,
		},]]--		
	},
}

--List of aliases to replace type names in briefing/debriefing
TypeAlias = {
["Mi-24P"] = "Mi-35P",
}
