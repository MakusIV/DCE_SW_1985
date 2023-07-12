--Order of Battle - Aircraft/Helicopter
--organized in units (squadrons/regiments) containing a number of aircraft
--Campaign Version-V20.00
--[[ Unit Entry Example ----------------------------------------------------------------------------

[1] = {
	inactive = true,								--true if unit is not active
	player = true,									--true for player unit
	name = "527 TFS",								--unit name
	type = "F-5E-3",								--aircraft type
	helicopter = true,								--true for helicopter units
	country = "USA",								--unit country
	livery = {"USAF Euro Camo"},					--unit livery
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
	number = 12,									--number of airframes
},





---------------------- total ------------------------

blue                      red
f:
f/a
a:
b:
hb:
t:
aw:
r:
heli:



M-2000C *
F-15C *
F-117A *
CH-47D
E-3A *
E-2C inserire su portaerei *
KC-135 *
KC135MPRS *
AJS37 *
Mirage-F1C *
Mirage-F1EE *
C-101CC *
Tornado *

UH-1H
AH-1W
SH-60B
OH-58D




F-14A
MiG-31
MiG-29A *
Su-27
Su-25
Tu-22M3
Su-24MR
Su-24M 
A-50
An-26B
MiG-21Bis (only Syrian) *
Su-17M4 (only Syrian) *
MiG-27K *
MiG-23MLD
MiG-25PD *
MiG-25RBT
MiG-19P (no)
Il-76MD
L-39C (only Syrian) *


SA342M
SA342Minigun
SA342Mistral
Mi-26
Mi-24P
Mi-24V
Mi-8MT


]]-----------------------------------------------------------------------------------------------------

oob_air = {

	["blue"] = { --side 1

        -------------- Incirlik -------------------------
		-- VMFA-151 				F-4E
		-- VMFA-157 				F-5E-3
		-- 315th Air Division 		C-130
		-- 69 BS 					B-52H
		-- 171 ARW 					KC135MPRS
		-- 4450th Tactical Group	F-117A

		[1] = {
			name = "VMFA-151",								--unit name			
			type = "F-4E",									--aircraft type
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = false,
				["Laser Illumination"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 0.3,
				["Escort"] = 0.3,
				["Fighter Sweep"] = 0.2,	
			},
			number = 12,
		},
		[2] = {
			name = "R/VMFA-151",							--unit name
			inactive = true,
			type = "F-4E",									--aircraft type
			country = "Turkey",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[3] = {
			name = "VMFA-157",								--unit name
			--player = true,								--player unit
			type = "F-5E-3",								--aircraft type
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Intercept"] = true,
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 0.7,
				["Escort"] = 0.5,
				["Fighter Sweep"] = 0.2,	
			},
			number = 12,
		},
		[4] = {
			name = "R/VMFA-157",							--unit name
			inactive = true,
			type = "F-5E-3",								--aircraft type
			country = "Turkey",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},
		[5] = {
			name = "315th Air Division",					--unit name
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_transport, mission_ini.max_skill_blue_transport),			--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 36,
		},
		[6] = {
			name = "R/315th Air Division",					--unit name
			inactive = true,
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_transport, mission_ini.max_skill_blue_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 7,
		},
		[7] = { 
			name = "69 BS",									--unit name
			type = "B-52H",									--aircraft type
			country = "USA",								--unit country
			livery = "usaf standard",						--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_bomber, mission_ini.max_skill_blue_bomber),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
			},
			number = 3,
		},
		[8] = {
			name = "R/69 BS",								--unit name
			inactive = true,
			type = "B-52H",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_bomber, mission_ini.max_skill_blue_bomber),			--unit skill
			tasks = {},										--unit tasks
			number = 15,
		},
		[9] = {
			name = "171 ARW",								--unit name
			type = "KC135MPRS",								--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 3,
		},
		[10] = {
			name = "R/171 ARW",								--unit name
			inactive = true,
			type = "KC135MPRS",								--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 9,
		},		
		[11] = {
			name = "4450th Tactical Group",								--unit name
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 3,
		},
		[12] = {
			name = "R/4450th Tactical Group",								--unit name
			inactive = true,
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 9,
		},		
		------------------ end Incirlik ---------------------	

		------------------ Gaziantep --------
		-- 173rd Fighter Group			F-15C
		-- 56th Operations Group		F-16A		

		[13] = { 
			name = "56th Operations Group",					--unit name
			type = "F-16A",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Gaziantep",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
			},
			number = 12,
		},
		[14] = {
			name = "R/56th Operations Group",							--unit name
			inactive = true,
			type = "F-16A",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[15] = { 
			name = "173rd Fighter Group",					--unit name
			type = "F-15C",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Gaziantep",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
			},
			number = 12,
		},
		[16] = {
			name = "R/173rd Fighter Group",							--unit name
			inactive = true,
			type = "F-15C",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
				
		---- end Gaziantep --------	
		
		-------- Gazipasa -------------------------
		-- 7 ACCS					E-3A
		-- 801 ARS					KC-135
		[17] = {
			name = "7 ACCS",								--unit name
			type = "E-3A",									--aircraft type
			country = "USA",								--unit country
			livery = "usaf standard",						--unit livery
			base = "Gazipasa",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_awacs, mission_ini.max_skill_blue_awacs),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 3,
		},		
		[18] = {
			name = "801 ARS",							--unit name
			type = "KC-135",							--aircraft type
			country = "USA",							--unit country
			livery = "Standard USAF",					--unit livery
			base = "Gazipasa",						--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {									--unit tasks
				["Refueling"] = true,
			},
			number = 3,
		},
		[19] = {
			name = "R/801 ARS",							--unit name
			inactive = true,
			type = "KC-135",							--aircraft type
			country = "USA",							--unit country
			base = "Reserves",							--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},									--unit tasks
			number = 7,
		},		
		
		-------- end Gazipasa -------------------------

		--------- Hatay -------------------------------
		-- F9							AJS37
		-- 23rd FG						A-10A
		
		[20] = {
			name = "F9",								--unit name
			--player = true,							--player unit
			type = "AJS37",								--aircraft type
			country = "Sweden",							--unit country
			livery = {"#4 Splinter F7 Skaraborgs Flygflottilj 76"},					--unit livery
			base = "Hatay",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = false, -- no loadout
				["Escort"] = false, -- no loadout
				["Fighter Sweep"] = false, -- no loadout
				["Strike"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1.5,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 0.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 0.7,
				["Anti-ship Strike"] = 2,
			},
			number = 12,
		},				
		[21] = {
			name = "R/F9",									--unit name
			inactive = true,
			type = "AJS37",									--aircraft type
			country = "Sweden",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[22] = {
			name = "23rd FG",								--unit name
			type = "A-10A",									--aircraft type
			country = "USA",							--unit country
			livery = "",									--unit livery
			base = "Hatay",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,		
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 1.5,
				["Escort"] = 2,
				["Fighter Sweep"] = 0.2,	
			},
			number = 12,
		},
		[23] = {
			name = "R/23rd FG",							--unit name
			inactive = true,
			type = "A-10A",								--aircraft type
			country = "USA",							--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		--------- end Hatay -------------------------------

		--------- Adana Sakirpasa -------------------------------
		-- Escadron de Chasse 2/5 Ile-de-France				M-2000C
		-- Escadron de Chasse 1/2 Cigognes					Mirage-F1C
		-- Escadron de Chasse 1/5 Vendée					Mirage-F1EE
		
		[24] = {
			name = "Escadron de Chasse 2/5 Ile-de-France",								--unit name
			--player = true,							--player unit
			type = "M-2000C",								--aircraft type
			country = "France",							--unit country
			livery = {""},					--unit livery
			base = "Adana Sakirpasa",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = true, 
				["Escort"] = true,
				["Fighter Sweep"] = true, 
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,				
			},
			number = 6,
		},				
		[25] = {
			name = "R/Escadron de Chasse 2/5 Ile-de-France",									--unit name
			inactive = true,
			type = "M-2000C",									--aircraft type
			country = "France",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[26] = {
			name = "Escadron de Chasse 1/2 Cigognes",								--unit name
			--player = true,							--player unit
			type = "Mirage-F1C",								--aircraft type
			country = "France",							--unit country
			livery = {""},					--unit livery
			base = "Adana Sakirpasa",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = true, 
				["Escort"] = true,
				["Fighter Sweep"] = true, 
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,				
			},
			number = 6,
		},				
		[27] = {
			name = "R/Escadron de Chasse 1/2 Cigognes",									--unit name
			inactive = true,
			type = "Mirage-F1C",									--aircraft type
			country = "France",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[28] = {
			name = "Escadron de Chasse 1/5 Vendée",								--unit name
			--player = true,							--player unit
			type = "Mirage-F1EE",								--aircraft type
			country = "France",							--unit country
			livery = {""},					--unit livery
			base = "Adana Sakirpasa",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = true, 
				["Escort"] = true,
				["Fighter Sweep"] = true, 
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,				
			},
			number = 6,
		},				
		[29] = {
			name = "R/Escadron de Chasse 1/5 Vendéee",									--unit name
			inactive = true,
			type = "Mirage-F1EE",									--aircraft type
			country = "France",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		--------- end Adana Sakirpasa -------------------------------

		---------Larnaca -------------------------------
		-- 122nd Squadron									C-101CC
		-- Jagdbombergeschwader 33							Tornado
		-- "154 Gruppo, 6 Stormo							Tornado
		
		[30] = {
			name = "122nd Squadron",								--unit name
			--player = true,							--player unit
			type = "C-101CC",								--aircraft type
			country = "Spain",							--unit country
			livery = {""},					--unit livery
			base = "Larnaca",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = false, 
				["Escort"] = false,
				["Fighter Sweep"] = false, 
				["Strike"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,				
			},
			number = 6,
		},				
		[31] = {
			name = "R/122nd Squadron",									--unit name
			inactive = true,
			type = "C-101CC",									--aircraft type
			country = "Spain",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[32] = {
			name = "Jagdbombergeschwader 33",								--unit name
			--player = true,							--player unit
			type = "Tornado",								--aircraft type
			country = "Germany",							--unit country
			livery = {""},					--unit livery
			base = "Larnaca",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = true, 
				["Escort"] = true,
				["Fighter Sweep"] = true, 
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,				
			},
			number = 6,
		},				
		[33] = {
			name = "R/Jagdbombergeschwader 33",									--unit name
			inactive = true,
			type = "Tornado",									--aircraft type
			country = "Germany",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[34] = {
			name = "154 Gruppo, 6 Stormo",								--unit name
			--player = true,							--player unit
			type = "Tornado",								--aircraft type
			country = "Italy",							--unit country
			livery = {""},					--unit livery
			base = "Larnaca",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = true, 
				["Escort"] = true,
				["Fighter Sweep"] = true, 
				["Strike"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,				
			},
			number = 6,
		},				
		[35] = {
			name = "R/154 Gruppo, 6 Stormo",									--unit name
			inactive = true,
			type = "Tornado",									--aircraft type
			country = "Italy",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		--------- end Larnaca -------------------------------
		
		
		--------------- CVN-71 Theodore Roosevelt ----------------------
		-- VF-101					F-14A-135-GR
		-- 171 ARW					S-3B Tanker
		-- VS-21					S-3B
		-- VAW-125					E-2C
		[36] = {
			name = "VF-101",								--unit name
			player = true,									--player unit
			type = "F-14A-135-GR",							--aircraft type
			country = "USA",								--unit country
			livery = {"vf-101 grim reapers low vis", "vf-101 dark"},				--unit livery
			liveryModex = {									--unit livery Modex  (optional)
				[100] = "vf-101 red",
				[105] = "vf-101 grim reapers low vis",
				[111] = "vf-101 dark",
				},
			sidenumber = {100, 115},
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.7,								-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,
			},
			number = 12,
		},
		[37] = {
			name = "R/VF-101",								--unit name
			inactive = true,
			type = "F-14A-135-GR",							--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[38] = {
			name = "VAW-125",								--unit name
			type = "E-2C",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {600, 609},						--unit range of sidenumbers (optional)
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_awacs, mission_ini.max_skill_blue_awacs),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 5,
		},
		[39] = {
			name = "R/VAW-125",								--unit name
			inactive = true,
			type = "E-2C",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_awacs, mission_ini.max_skill_blue_awacs),			--unit skill
			tasks = {},										--unit tasks
			number = 5,
		},
		[40] = {
			name = "171 ARW",								--unit name
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 5,
		},
		[41] = {
			name = "R/171 ARW",								--unit name
			inactive = true,
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 5,
		},
		[42] = {
			name = "VS-21",									--unit name
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = true,
			},
			number = 12,
		},
		[43] = {
			name = "R/VS-21",								--unit name
			inactive = true,
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
	
		------------------ CVN-72 Abraham Lincoln --------------------
		-- VF-118/GA				F-14A-135-GR
		-- 177 ARW					S-3B Tanker
		-- VS-22					S-3B
		-- VAW-123					E-2C

		[44] = {
			name = "VF-118/GA",								--unit name
			player = false, 								--player unit
			type = "F-14A-135-GR",							--aircraft type
			country = "USA",								--unit country
			livery = {"vf-101 grim reapers low vis", "vf-101 dark"},				--unit livery
			liveryModex = {									--unit livery Modex  (optional)
				[100] = "vf-101 red",
				[105] = "vf-101 grim reapers low vis",
				[111] = "vf-101 dark",
				},
			sidenumber = {100, 115},
			base = "CVN-72 Abraham Lincoln",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks				
				["CAP"] = false,
				["Intercept"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Strike"] = true,
				["SEAD"] = false,
				["Anti-ship Strike"] = false,
				["Laser Illumination"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.3,							-- coef normal : = 1				
				["Intercept"] = 1.7,
			},
			number = 8,
		},
		[45] = {
			name = "R/VF-118/GA",							--unit name
			inactive = true,
			type = "F-14A-135-GR",							--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[46] = {
			name = "177 ARW",								--unit name
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			sidenumber = {430, 450},						--unit range of sidenumbers (optional)
			base = "CVN-72 Abraham Lincoln",				--unit base base = "CVN-74 John C. Stennis",
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 8,
		},	
		[47] = {
			name = "VS-22",									--unit name
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-72 Abraham Lincoln",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = true,
			},
			number = 12,
		},
		[48] = {
			name = "R/VS-22",								--unit name
			inactive = true,
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[49] = {
			name = "VAW-123",									--unit name
			type = "E-2C",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-72 Abraham Lincoln",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 6,
		},
			---------------- KHASHURI FARP LM84
		[50] = {
			name = "17th Cavalry",							--unit name
			type = "UH-1H",									--aircraft type
			helicopter = true,								--true for helicopter units
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "KHASHURI FARP LM84",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			}, 
			number = 8,
		},
		[51] = {
			name = "R/17th Cavalry",						--unit name
			inactive = true,
			type = "UH-1H",									--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},
			----------------  GORI FARP MM25
		[52] = {
			name = "6th Cavalry",							--unit name
			type = "AH-1W",									--aircraft type
			helicopter = true,								--true for helicopter units
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "GORI FARP MM25",						--unit base
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {
				["Strike"] = true, 
			},
			number = 8,
		},
		[53] = {
			name = "R/6th Cavalry",							--unit name
			inactive = true,
			type = "AH-1W",									--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},			
		---------------- AMBROLAURI FARP LN41
		[54] = {
			name = "GAH 2rd",								--unit name
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Georgia",							--unit country
			livery = "",									--unit livery
			base = "AMBROLAURI FARP LN41",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 8,
		},
		[55] = {
			name = "R/GAH 2rd",								--unit name
			inactive = true,
			type = "Mi-24V",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_helicopter, mission_ini.max_skill_blue_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},
		
	},
	["red"] = {	--side 2		
	-------------------- Damascus -------------------	
		-- 790.IAP							MiG-25PD
		-- 117.IAP							MiG-27K
		-- 113.IAP							MiG-23MLD
		-- 945 Squadron						MiG-21Bis
		-- 3.OSAP							An-26B
		-- 13.OSAP							Il-76MD


		[1] = {
			name = "790.IAP",								--unit name
			type = "MiG-25PD",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional).
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 0.3,
				["Fighter Sweep"] = 1,
			},
			number = 12,
		},
		[2] = {
			name = "117.IAP",							--unit name
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,	
				["Anti-ship Strike"] = 1.5,		
			},		
			number = 12,
		},
		[3] = {
			name = "R/117.IAP",							--unit name
			inactive = true,
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[4] = {
			name = "113.IAP",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = true,				
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.3,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,	
			},
			number = 24,
		},
		[5] = {
			name = "R/113.IAP",							--unit name
			inactive = true,
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},						
		[6] = {
			name = "945 Squadron",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = false,
				["Anti-ship Strike"] = false,			
				["SEAD"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)				
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 0.3,			
				["Strike"] = 0.3,							-- coef normal : = 1
				["SEAD"] = 0.3,
				["Laser Illumination"] = 1,
			},
			number = 24,
		},
		[7] = {
			name = "R/945 Squadron",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},									--unit tasks
			number = 36,
		},

		[14] = {
			name = "3.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = {""},									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 6,
		},

		[22] = {
			name = "13.OSAP",								--unit name
			type = "Il-76MD",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,				
			},
			number = 4,
		},
		[23] = {
			name = "R/13.OSAP",							--unit name
			inactive = true,
			type = "Il-76MD",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},


	-------------------- end Damascus ---------------	


	-------------------- Tabqa ----------------------
		-- 127.IAP					MiG-27K
		-- 123.IAP					MiG-23MLD
		-- 2 Squadron				L-39C
	
		[8] = {
			name = "127.IAP",							--unit name
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1.5,
				["Laser Illumination"] = 1,	
				["Anti-ship Strike"] = 1.5,			
			},
			number = 12,
		},
		[9] = {
			name = "R/127.IAP",							--unit name
			inactive = true,
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[10] = {
			name = "123.IAP",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,				
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 0.7,
				["CAP"] = 1,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.5,	
			},
			number = 12,
		},
		[11] = {
			name = "R/123.IAP",							--unit name
			inactive = true,	
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",	
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,	
		},		
		[12] = {
			name = "2 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,				
				["Strike"] = true,
				["Anti-ship Strike"] = true,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 0.5,
				["Escort"] = 0.5,			
				["Fighter Sweep"] = 0.5,
				["Anti-ship Strike"] = 0.7,			
			},
			number = 12,
		},
		[13] = {
			name = "R/2 Squadron",
			inactive = true,								--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
	-------------------- end Tabqa ------------------
		
	-------------------- Abu al-Duhur ---------------
		-- 945 Squadron			MiG-21Bis
		-- 793.IAP				MiG-25PD
		-- 41.IAP				Su-24M

		[15] = {
			name = "945 Squadron",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Abu al-Duhur",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
				["Strike"] = false,
				["Anti-ship Strike"] = false,			
				["SEAD"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)				
				["Intercept"] = 1.5,
				["CAP"] = 1,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,
				["Anti-ship Strike"] = 0.3,			
				["Strike"] = 0.3,							-- coef normal : = 1
				["SEAD"] = 0.3,
				["Laser Illumination"] = 1,
			},
			number = 18,
		},
		[16] = {
			name = "R/945 Squadron",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[24] = {
			name = "793.IAP",								--unit name
			type = "MiG-25PD",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Abu al-Duhur",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = true,
			},
			tasksCoef = {									
				["Intercept"] = 2, --unit tasks coef (optional)-- coef normal : = 1
				["CAP"] = 1.5,
				["Escort"] = 0.5,
				["Fighter Sweep"] = 1,
			},
			number = 12,
		},
		[25] = {
			name = "41.IAP",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Abu al-Duhur",						--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,								-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1.7,
			},
			number = 12,
		},
		[26] = {
			name = "R/41.IAP",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},		

	-------------------- end Abu al-Duhur -----------

	-------------------- Bassel Al-Assad Airbase -----
		-- 67 Squadron					MiG-23MLD
		-- 3 Squadron					L-39C
		-- 677 Squadron					Su-17M4
		-- 522 Squadron					An-26B

		[34] = {
			name = "67 Squadron",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Strike"] = true,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.3,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1.5,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.3,	
			},
			number = 12,
		},
		[35] = {
			name = "R/67 Squadron",							--unit name
			inactive = true,
			type = "MiG-23MLD",								--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		
		[20] = {
			name = "3 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,				
				["Strike"] = true,
				["Anti-ship Strike"] = true,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 0.5,
				["Escort"] = 0.5,			
				["Fighter Sweep"] = 0.5,
				["Anti-ship Strike"] = 0.7,			
			},
			number = 12,
		},
		[21] = {
			name = "R/3 Squadron",							--unit name
			inactive = true,
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[29] = {
			name = "677 Squadron",							--unit name
			type = "Su-17M4",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",						--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,			
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1.5,
				["Anti-ship Strike"] = 1,
				["Laser Illumination"] = 1,				
			},
			number = 8,
		},
		[30] = {
			name = "R/677 Squadron",							--unit name
			inactive = true,
			type = "Su-17M4",								--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},
		[31] = {
			name = "522 Squadron",							--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 2,
		},
		[32] = {
			name = "R/522 Squadron",							--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},	
	-------------------- end Bassel Al-Assad Airbase -

	-------------------- Hama Airbase ----------------
		-- 368 ShAP						Su-25
		-- 133.IAP						MiG-29A
		-- 81.IAP						Su-24M
		-- 27.OSAP						An-26B

		
		[18] = {
			name = "368 ShAP",							--unit name
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.8,							-- coef normal : = 1
				["SEAD"] = 2,
				["Anti-ship Strike"] = 1,
				["Laser Illumination"] = 1,			
			},
			number = 12,
		},
		[19] = {
			name = "R/368 ShAP",							--unit name
			inactive = true,
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[27] = {
			name = "133.IAP",							--unit name
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
				["Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,							-- coef normal : = 1				
				["Intercept"] = 0.5,
				["CAP"] = 1.3,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.5,	
			},
			number = 12,
		},
		[28] = {
			name = "R/133.IAP",							--unit name
			inactive = true,
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[38] = {
			name = "81.IAP",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			sskill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.3,							-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1.7,
			},
			number = 12,
		},
		[39] = {
			name = "R/81.IAP",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[40] = {
			name = "27.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 1,
		},
		[41] = {
			name = "R/27.OSAP",								--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
	-------------------- end Hama Airbase ----------------

	-------------------- Palmyra Airbase ----------------
		-- 2.OSAP						An-26B
		-- 61.IAP						Tu-22M3
		-- 159.IAP						Su-27				


		[33] = {
			name = "2.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = {""},									--unit livery
			base = "Palmyra",							--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 6,
		},		
		[36] = {
			name = "61.IAP",								--unit name
			type = "Tu-22M3",								--aircraft type
			country = "Russia",								--unit country
			livery = {""},									--unit livery
			base = "Palmyra",								--unit base
			skill = getSkill(mission_ini.min_skill_red_bomber, mission_ini.max_skill_red_bomber),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1				
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 2,
			},
			number = 8,
		},
		[37] = {
			name = "R/61.IAP",								--unit name
			inactive = true,
			type = "Tu-22M3",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_bomber, mission_ini.max_skill_red_bomber),			--unit skill
			tasks = {},										--unit tasks
			number = 8,
		},
		[49] = {
			name = "159.IAP",								--unit name
			type = "Su-27",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Palmyra",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Strike"] = false,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,	
			},
			number = 12,
		},
		[50] = {
			name = "R/159.IAP",								--unit name
			inactive = true,
			type = "Su-27",									--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},	
	-------------------- Palmyra Airbase ----------------









		[17] = {
			name = "2457 SDRLO",							--unit name
			type = "A-50",									--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},									--unit livery
			base = "Nalchik",								--unit base
			skill = getSkill(mission_ini.min_skill_red_awacs, mission_ini.max_skill_red_awacs),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 4,
		},
		
		
			
		
		
		
		[42] = {
			name = "115.IAP",							--unit name
			type = "Su-17M4",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Maykop-Khanskaya",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,			
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1.5,
				["Anti-ship Strike"] = 1,
				["Laser Illumination"] = 1,				
			},
			number = 12,
		},
		[43] = {
			name = "R/115.IAP",							--unit name
			inactive = true,
			type = "Su-17M4",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		--------------------- Anapa-Vityazevo --------------
		[44] = {
			name = "23.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Anapa-Vityazevo",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 2,
		},
		[45] = {
			name = "R/23.OSAP",								--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
		--------------------- Krasnodar-Center --------------
		[46] = {
			name = "2457.I SDRLO",							--unit name
			type = "A-50",									--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = "",									--unit livery
			base = "Krasnodar-Center",						--unit base
			skill = getSkill(mission_ini.min_skill_red_awacs, mission_ini.max_skill_red_awacs),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 4,
		},
		[47] = {
			name = "25.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Krasnodar-Center",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 2,
		},
		[48] = {
			name = "R/25.OSAP",								--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			country = "Russia",							
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
			
		-------------------- NOGIR FARP MN76
		[51] = { 
			name = "1st GHR",								--unit name
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "NOGIR FARP MN76", 						--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 4,
		},
		[52] = {
			name = "R/1st GHR",								--unit name
			inactive = true,
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		-------------------- TSKHINVALI FARP MM27
		[53] = {
			name = "2nd GHR",								--unit name
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "TSKHINVALI FARP MM27",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 4,
		},
		[54] = {
			name = "R/2nd GHR",								--unit name
			inactive = true,
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		-------------------- LENIGORI FARP MN76
		[55] = {
			name = "13th GHR",								--unit name
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "LENIGORI FARP MM56",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 4,
		},
		[56] = {
			name = "R/13th GHR",							--unit name
			inactive = true,
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		---------------- Integration 		
		[57] = {
			name = "O7 SDRLO",								--unit name
			type = "Su-24MR",								--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},			--unit livery
			base = "Krasnodar-Center",						--unit base
			skill = getSkill(mission_ini.min_skill_red_recognition, mission_ini.max_skill_red_recognition),			--unit skill
			tasks = {										--unit tasks				
				["Reconnaissance"] = true,
			},
			number = 5,
		},
		[58] = {
			name = "09 SDRLO",								--unit name
			type = "MiG-25RBT",								--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},									--unit livery
			base = "Krasnodar-Center",						--unit base
			skill = getSkill(mission_ini.min_skill_red_recognition, mission_ini.max_skill_red_recognition),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
				["Reconnaissance"] = true,
			},
			number = 5,
		},

	















		------------ post 1975	
		--[[	
		[40] = {
			name = "17.IAP",								--unit name
			type = "Su-25T",								--aircraft type
			country = "Russia",								--unit country
			livery = "",						--unit livery
			base = "Mozdok",						--unit base
			skill = "High",
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1.5,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 1,
				["Escort"] = 1,
				["Fighter Sweep"] = 1,
			},
			number = 12,
		},
		[41] = {
			name = "2./17.IAP",								--unit name
			inactive = true,
			type = "Su-25T",								--aircraft type
			base = "Reserves",
			skill = "High",								--unit skill
			tasks = {},									--unit tasks
			number = 24,
		},
		[42] = {
			name = "31.IAP",								--unit name
			type = "Su-27",								--aircraft type
			country = "Russia",						--unit country
			livery = "",			--unit livery
			base = "Mineralnye-Vody",							--unit base
			skill = "High",								--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = true,
				["Escort"] = true,
				["Fighter Sweep"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["SEAD"] = 1,
				["Laser Illumination"] = 1,
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,
			},
			number = 10,
		},
		[43] = {
			name = "3./31.IAP",								--unit name
			inactive = true,
			type = "Su-27",								--aircraft type
			base = "Reserves",
			skill = "High",								--unit skill
			tasks = {},									--unit tasks
			number = 24,
		},
		]]
	}
}
