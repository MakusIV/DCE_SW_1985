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

INSERISCI ["Laser Illumination"] = true, NEI TASK SU-25

]]-----------------------------------------------------------------------------------------------------

oob_air = {

	["blue"] = { --side 1

	-- Aircraft

	-- F: 36
	-- F/A: 72+36+84+60+30+48+20+36 = 386
	-- A: 72+30+72 = 174
	-- B:26+24+24+12 = 86
	-- AW: 3+6+3 = 12
	-- T: 6 (incrementare di 30)
	-- R: 6+3+10+10 = 29
	-- H: 70+40+68+68 = 246 

	-- F+F/A: 422 ()
	-- A+B: 370 (-)


	-------------------- Incirlik (LimitedParkNb = 120) -------------------------
		-- 111th Squadron Panther		F-4E			12+24			Turkey			Strike-CAS, SEAD
		-- 151th Squadron Bronze		F-5E-3			12+24			Turkey			Escort
		-- 315th Air Division 			C-130			2+4				USA				Transport
		-- 69 BS 						B-52H			2+22			USA				Strike-Structure
		-- 171 ARW 						KC135MPRS		6				USA				Refueling
		-- 4450th Tactical Group		F-117A			2+20			USA				Strike-Structure

		-- 72 F/A, 46 B, 6 T, 6 R

		[1] = {
			name = "111th Squadron Panther",								--unit name			
			type = "F-4E",									--aircraft type
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
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
			name = "R/111th Squadron Panther",							--unit name
			inactive = true,
			type = "F-4E",									--aircraft type
			country = "Turkey",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[3] = {
			name = "151th Squadron Bronze",								--unit name
			--player = true,								--player unit
			type = "F-5E-3",								--aircraft type
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
				["Intercept"] = false,
				["Strike"] = false,
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
			name = "R/151th Squadron Bronze",							--unit name
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
			number = 2,
		},
		[6] = {
			name = "R/315th Air Division",					--unit name
			inactive = true,
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_transport, mission_ini.max_skill_blue_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
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
			number = 2,
		},
		[8] = {
			name = "R/69 BS",								--unit name
			inactive = true,
			type = "B-52H",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_bomber, mission_ini.max_skill_blue_bomber),			--unit skill
			tasks = {},										--unit tasks
			number = 22,
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
			number = 6,
		},		
		[11] = {
			name = "4450th Tactical Group",								--unit name
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Incirlik",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
			},
			number = 2,
		},
		[12] = {
			name = "R/4450th Tactical Group",								--unit name
			inactive = true,
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},		
	-------------------- end Incirlik ---------------------	

	-------------------- Gaziantep (LimitedParkNb = 12) --------
		-- 56th Operations Group		F-16A		12+24			USA			CAP, Fighter Sweep
		-- 173rd Fighter Group			F-15C		12+24			USA			CAP, Intercept

		-- 36 F, 36 F/A

		[13] = { 
			name = "56th Operations Group",					--unit name
			type = "F-16A",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Gaziantep",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {		
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = true,
				["Intercept"] = false,								--unit tasks
				["Strike"] = false,
				["Anti-ship Strike"] = false,
				["SEAD"] = false,
			},
			tasksCoef = {	
				["CAP"] = 2,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,
				["Intercept"] = 1,								--unit tasks coef (optional)
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
			number = 24,
		},
		[15] = { 
			name = "173rd Fighter Group",					--unit name
			type = "F-15C",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Gaziantep",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Intercept"] = true,	
			},
			tasksCoef = {									--unit tasks coef (optional)
				["CAP"] = 2,
				["Escort"] = 1.5,
				["Fighter Sweep"] = 2,
				["Intercept"] = 2,			
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
			number = 24,
		},
				
	-------------------- end Gaziantep --------	
		
	-------------------- Gazipasa (LimitedParkNb = 6) -------------------------
		-- 7 ACCS					E-3A			3			USA			
		-- 801 ARS					KC-135			3			USA

		-- 3 AW, 3 R

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
		
	-------------------- end Gazipasa -------------------------

	-------------------- Hatay (LimitedParkNb = 10) -------------------------------
		-- F6 Karlsborg					AJS37			12+24			Sweden			Anti-ship Strike, SEAD
		-- 23rd FG						A-10A			12+36			USA				Strike CAS

		-- 84 A
		
		[20] = {
			name = "F6 Karlsborg",								--unit name
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
				["Intercept"] = false, -- doubt on loadout
				["SEAD"] = true,
				["Strike"] = false,
				["Anti-ship Strike"] = true,
				["Escort Jammer"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1.5,						-- coef normal : = 1
				["SEAD"] = 1.5,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 0.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 0.7,
				["Anti-ship Strike"] = 2,
				["Escort Jammer"] = 2,
			},
			number = 12,
		},				
		[21] = {
			name = "R/F6 Karlsborg",									--unit name
			inactive = true,
			type = "AJS37",									--aircraft type
			country = "Sweden",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[22] = {
			name = "23rd FG",								--unit name
			type = "A-10A",									--aircraft type
			country = "USA",							--unit country
			livery = "",									--unit livery
			base = "Hatay",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks				
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["Laser Illumination"] = 1,				
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
	-------------------- end Hatay -------------------------------------

	-------------------- Adana Sakirpasa (LimitedParkNb = 39) -------------------------------
		-- Escadron de Chasse 2/5 Ile-de-France				M-2000C				6+18			France			Escort Bomber		
		-- Escadron de Chasse 1/2 Cigognes					Mirage-F1C			6+24			France			Escort Attacker
		-- Escadron de Chasse 1/5 Vendée					Mirage-F1EE			6+24			France			Escort Attacker

		-- 84 F/A
		
		[24] = {
			name = "Escadron de Chasse 2/5 Ile-de-France",								--unit name
			--player = true,							--player unit
			type = "M-2000C",								--aircraft type
			country = "France",							--unit country
			livery = {""},					--unit livery
			base = "Adana Sakirpasa",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = false, 
				["Escort"] = true,
				["Fighter Sweep"] = false, 
				["Intercept"] = false,
				["Strike"] = false,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
				["Laser Illumination"] = 1,
				["Intercept"] = 1.7,
				["CAP"] = 1.7,
				["Escort"] = 1.5,
				["Fighter Sweep"] = 1.7,				
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
			number = 18,
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
				["CAP"] = false, 
				["Escort"] = true,
				["Fighter Sweep"] = false, 
				["Intercept"] = false,
				["Strike"] = false,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1,						-- coef normal : = 1
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
			number = 24,
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
				["CAP"] = false, 
				["Escort"] = true,
				["Fighter Sweep"] = false, 
				["Intercept"] = false,
				["Strike"] = false,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1.3,						-- coef normal : = 1
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
			number = 24,
		},
	-------------------- end Adana Sakirpasa -------------------------------

	---------------------Larnaca (LimitedParkNb = 94) --------------------------------------------
		-- 122nd Squadron									C-101CC				6+36			Spain			Strike CAS, Antiship Strike
		-- Jagdbombergeschwader 33							Tornado IDS			6+24			Germany			Strike Structure, Antiship Strike, SEAD
		-- 154 Gruppo, 6 Stormo								Tornado IDS			6+24			Italy			Strike Structure, Antiship Strike, SEAD

		-- 60 F/A, 42 A
		
		[30] = {
			name = "122nd Squadron",					--unit name
			--player = true,							--player unit
			type = "C-101CC",							--aircraft type
			country = "Spain",							--unit country
			livery = {""},								--unit livery
			base = "Larnaca",							--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1.3,						-- coef normal : = 1
				["Laser Illumination"] = 1,	
				["Anti-ship Strike"] = 1.6			
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
			number = 36,
		},
		[32] = {
			name = "Jagdbombergeschwader 33",								--unit name							--player unit
			type = "Tornado IDS",								--aircraft type
			country = "Germany",							--unit country
			livery = {""},					--unit livery
			base = "Larnaca",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {																							--unit tasks
				["Anti-ship Strike"] = true,							
				["Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Anti-ship Strike"] = 2,
				["Strike"] = 2,						-- coef normal : = 1
				["SEAD"] = 2,			
			},
			number = 6,
		},				
		[33] = {
			name = "R/Jagdbombergeschwader 33",									--unit name
			inactive = true,
			type = "Tornado IDS",									--aircraft type
			country = "Germany",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[34] = {
			name = "154 Gruppo, 6 Stormo",								--unit name
			type = "Tornado IDS",								--aircraft type
			country = "Italy",							--unit country
			livery = {""},					--unit livery
			base = "Larnaca",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks			
				["Anti-ship Strike"] = true,	
				["Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {
				["Anti-ship Strike"] = 2,								--unit tasks coef (optional)
				["Strike"] = 2,						-- coef normal : = 1
				["SEAD"] = 2,				
			},
			number = 6,
		},				
		[35] = {
			name = "R/154 Gruppo, 6 Stormo",									--unit name
			inactive = true,
			type = "Tornado IDS",									--aircraft type
			country = "Italy",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
	-------------------- end Larnaca -------------------------------

	-------------------- Paphos (LimitedParkNb = 49) -------------------------
		-- 152th Squadron Iron			F-5E-3			12+24			Turkey			Escort
		-- 326th Air Division 			C-130			2+4				USA				Transport
		-- 4453th Tactical Group		F-117A			2+20			USA				Strike Structure

		-- 36 F/A, 22 B, 6 T

		
		[36] = {
			name = "152th Squadron Iron",								--unit name
			--player = true,								--player unit
			type = "F-5E-3",								--aircraft type
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Paphos",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
				["Intercept"] = false,
				["Strike"] = false,
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
		[37] = {
			name = "R/152th Squadron Iron",							--unit name
			inactive = true,
			type = "F-5E-3",								--aircraft type
			country = "Turkey",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},
		[38] = {
			name = "326th Air Division",					--unit name
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Paphos",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_transport, mission_ini.max_skill_blue_transport),			--unit skill
			tasks = {										--unit tasks
				["Transport"] = true,
			},
			number = 2,
		},
		[39] = {
			name = "R/326th Air Division",					--unit name
			inactive = true,
			type = "C-130",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_transport, mission_ini.max_skill_blue_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
		[40] = {
			name = "4453th Tactical Group",								--unit name
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Paphos",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
			},
			number = 2,
		},
		[41] = {
			name = "R/4453th Tactical Group",								--unit name
			inactive = true,
			type = "F-117A",								--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},		
	-------------------- end Paphos ---------------------	

	-------------------- Ramat David (LimitedParkNb = 42) -------------------------------
		-- F17 Kallinge					AJS37					12+24			Sweden			Anti-ship Strike, SEAD		
		-- 27rd FG						A-10A					12+36			USA				Strike CAS
		-- 12 Gruppo, 36 Stormo			Tornado IDS				6+24			Italy			Strike Structure, Antiship Strike, SEAD

		-- 36 F/A, 78 A
		
		[42] = {
			name = "F17 Kallinge",								--unit name
			--player = true,							--player unit
			type = "AJS37",								--aircraft type
			country = "Sweden",							--unit country
			livery = {"#4 Splinter F7 Skaraborgs Flygflottilj 76"},					--unit livery
			base = "Ramat David",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["CAP"] = false, -- no loadout
				["Escort"] = false, -- no loadout
				["Fighter Sweep"] = false, -- no loadout
				["Intercept"] = false, -- doubt on loadout
				["SEAD"] = true,
				["Strike"] = false,
				["Anti-ship Strike"] = true,
				["Escort Jammer"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 1.5,						-- coef normal : = 1
				["SEAD"] = 1.5,
				["Laser Illumination"] = 1,
				["Intercept"] = 1,
				["CAP"] = 0.5,
				["Escort"] = 1,
				["Fighter Sweep"] = 0.7,
				["Anti-ship Strike"] = 2,
				["Escort Jammer"] = 2,
			},
			number = 12,
		},				
		[43] = {
			name = "R/F17 Kallinge",									--unit name
			inactive = true,
			type = "AJS37",									--aircraft type
			country = "Sweden",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[44] = {
			name = "27rd FG",								--unit name
			type = "A-10A",									--aircraft type
			country = "USA",							--unit country
			livery = "",									--unit livery
			base = "Ramat David",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {										--unit tasks				
				["Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["Laser Illumination"] = 1,				
			},
			number = 12,
		},
		[45] = {
			name = "R/27rd FG",							--unit name
			inactive = true,
			type = "A-10A",								--aircraft type
			country = "USA",							--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[46] = {
			name = "12 Gruppo, 36 Stormo",								--unit name
			type = "Tornado IDS",								--aircraft type
			country = "Italy",							--unit country
			livery = {""},					--unit livery
			base = "Ramat David",					--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {									--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
				["SEAD"] = true,
			},
			tasksCoef = {								--unit tasks coef (optional)
				["Strike"] = 2,						-- coef normal : = 1
				["Anti-ship Strike"] = 2,
				["SEAD"] = 2,				
			},
			number = 6,
		},				
		[47] = {
			name = "R/12 Gruppo, 36 Stormo",									--unit name
			inactive = true,
			type = "Tornado IDS",									--aircraft type
			country = "Italy",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
	-------------------- end Ramat David -------------------------------------
			
	-------------------- CVN-71 Theodore Roosevelt ----------------------
		-- VF-101					F-14A-135-GR			12+36			USA				Intercept, CAP, Escort, Fighter Sweep, Strike
		-- VS-29					S-3B Tanker				2+8				USA				Refueling
		-- VS-21					S-3B					4+20			USA				Anti-ship Strike
		-- VAW-125					E-2C					2+4				USA				AWACS

		-- 48 F/A, 40 B, 10 R, 6 AW

		[48] = {
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
				["Intercept"] = 3,
				["CAP"] = 1,
				["Escort"] = 3,
				["Fighter Sweep"] = 2,
			},
			number = 12,
		},
		[49] = {
			name = "R/VF-101",								--unit name
			inactive = true,
			type = "F-14A-135-GR",							--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[50] = {
			name = "VS-29",								--unit name
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 4,
		},
		[51] = {
			name = "R/VS-29",								--unit name
			inactive = true,
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {},										--unit tasks
			number = 5,
		},
		[52] = {
			name = "VS-21",									--unit name
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-71 Theodore Roosevelt",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = false,
				["SEAD"] = false,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,								-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["SEAD"] = 1,
				["Anti-ship Strike"] = 1.7,
			},
			number = 4,
		},
		[53] = {
			name = "R/VS-21",								--unit name
			inactive = true,
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[54] = {
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
			number = 2,
		},
		[55] = {
			name = "R/VAW-125",								--unit name
			inactive = true,
			type = "E-2C",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_awacs, mission_ini.max_skill_blue_awacs),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
	-------------------- end CVN-71 Theodore Roosevelt ----------------------
	
	-------------------- CVN-72 Abraham Lincoln --------------------
		-- VF-118/GA				F-14A-135-GR			4+16			USA			Intercept
		-- VS-31					S-3B Tanker				2+8				USA			Refueling
		-- VS-22					S-3B					4+36			USA			Anti-ship Strike
		-- VAW-123					E-2C					3				USA			AWACS

		-- 20 F/A, 40 B, 10 R, 3 AW

		[56] = {
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
				["Strike"] = false,
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
		[57] = {
			name = "R/VF-118/GA",							--unit name
			inactive = true,
			type = "F-14A-135-GR",							--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_blue_fighter, mission_ini.max_skill_blue_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[58] = {
			name = "VS-31",								--unit name
			type = "S-3B Tanker",							--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			sidenumber = {430, 450},						--unit range of sidenumbers (optional)
			base = "CVN-72 Abraham Lincoln",				--unit base base = "CVN-74 John C. Stennis",
			skill = getSkill(mission_ini.min_skill_blue_refuelling, mission_ini.max_skill_blue_refuelling),			--unit skill
			tasks = {										--unit tasks
				["Refueling"] = true,
			},
			number = 2,
		},	
		[59] = {
			name = "VS-22",									--unit name
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			livery = "",									--unit livery
			--sidenumber = {400, 429},						--unit range of sidenumbers (optional)
			base = "CVN-72 Abraham Lincoln",				--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = false,
				["SEAD"] = false,
				["Anti-ship Strike"] = true,
			},
			number = 4,
		},
		[60] = {
			name = "R/VS-22",								--unit name
			inactive = true,
			type = "S-3B",									--aircraft type
			country = "USA",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_blue_attacker, mission_ini.max_skill_blue_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 36,
		},
		[61] = {
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
			number = 3,
		},
	-------------------- end CVN-72 Abraham Lincoln --------------------

	-------------------- Naqoura Helibase (LimitedParkNb = 9) ----------------		
		-- 1th Army Aviation Regiment	CH-47D			4+32			Turkey				Transport
		-- HMLA-167						AH-1W			8+40			USA					Strike CAS
		-- 17th Cavalry Regiment		OH-58D			8+40			UK					Strike CAS Soft
		

		-- 126 H

		[62] = {
			name = "1th Army Aviation Regiment",								--unit name
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Naqoura",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 4,
		},
		[63] = {
			name = "R/1th Army Aviation Regiment",			--unit name
			inactive = true,
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 32,
		},	
		[64] = {
			name = "HMLA-167",								--unit name
			type = "AH-1W",									--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Naqoura",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Strike"] = true,
			},
			number = 8,
		},
		[65] = {
			name = "R/HMLA-167",							--unit name
			inactive = true,
			type = "AH-1W",									--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 40,
		},	
		[66] = {
			name = "17th Cavalry Regiment",					--unit name
			type = "OH-58D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "UK",									--unit country
			livery = "",									--unit livery
			base = "Naqoura",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Strike"] = true,
			},
			number = 8,
		},
		[67] = {
			name = "R/17th Cavalry Regiment",				--unit name
			inactive = true,
			type = "OH-58D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 40,
		},	
		
	-------------------- end Naquora Airbase ----------------		

	-------------------- Silifke Storage FARP (LimitedParkNb = 4) -----------------
		-- 4th Army Aviation Regiment			CH-47D			4+16			Turkey				Transport			
		-- HS-6 Indians							SH-60B			4+16			USA					Transport

		-- 40 H

		[68] = {
			name = "4th Army Aviation Regiment",								--unit name
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "Silifke Storage FARP",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 4,
		},
		[69] = {
			name = "R/4th Army Aviation Regiment",			--unit name
			inactive = true,
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},		
		[70] = {
			name = "HS-6 Indians",							--unit name
			type = "SH-60B",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "USA",								--unit country
			livery = "",									--unit livery
			base = "Silifke Storage FARP",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 4,
		},
		[71] = {
			name = "R/HS-6 Indians",						--unit name
			inactive = true,
			type = "SH-60B",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},


	-------------------- end Silifke Storage FARP -----------------

	-------------------- Hatay FARP 1 (LimitedParkNb = 4) -----------------
		-- 14th Army Aviation Regiment			CH-47D			4+16			Turkey				Transport
		-- HMLA-177								AH-1W			8+40			USA					Strike CAS

		-- 68 H

		[72] = {
			name = "14th Army Aviation Regiment",								--unit name
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "FARP-Hatay FARP 1",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 4,
		},
		[73] = {
			name = "R/14th Army Aviation Regiment",			--unit name
			inactive = true,
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},		
		[74] = {
			name = "HMLA-177",								--unit name
			type = "AH-1W",									--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "FARP-Hatay FARP 1",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Strike"] = true,
			},
			number = 8,
		},
		[75] = {
			name = "R/HMLA-177",							--unit name
			inactive = true,
			type = "AH-1W",									--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 40,
		},	


	-------------------- end Silifke Storage FARP -----------------

	-------------------- Hatay FARP 2 (LimitedParkNb = 4) -----------------
		-- 11th Army Aviation Regiment			CH-47D			4+16			Turkey				Transport
		-- 18th Cavalry Regiment				OH-58D			8+40			USA					Strike CAS Soft

		-- 68 H

		[76] = {
			name = "11th Army Aviation Regiment",								--unit name
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Turkey",								--unit country
			livery = "",									--unit livery
			base = "FARP-Hatay FARP 2",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 4,
		},
		[77] = {
			name = "R/11th Army Aviation Regiment",			--unit name
			inactive = true,
			type = "CH-47D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},		
		[78] = {
			name = "18th Cavalry Regiment",					--unit name
			type = "OH-58D",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "UK",									--unit country
			livery = "",									--unit livery
			base = "FARP-Hatay FARP 2",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Strike"] = true,
			},
			number = 8,
		},
		[79] = {
			name = "R/18th Cavalry Regiment",				--unit name
			inactive = true,
			type = "OH-58D",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 40,
		},	


	-------------------- end Silifke Storage FARP -----------------
	},

	

	["red"] = {	--side 2		

	-- Aircraft

	-- F: 8+8+16+32+12+24+58 = 158
	-- F/A:72+36+36+72+32+36 = 284
	-- A:36+72+32+68+36+30+30+32+32 = 348
	-- B:31+18+10+30 = 88
	-- AWACS:4 (incrementare di 4)
	-- T: 10+4+6+6+4+6 = 36
	-- R:4 (incrementare di 25 serve?)
	-- H: 75+60+100 = 235

	-- F+F/A: 442
	-- A+B: 488 


	-------------------- Damascus (LimitedParkNb = 90) -------------------	
		-- 790.IAP							MiG-25PD		8		Russia			Intercept
		-- 117.IAP							MiG-27K			12+24	Russia			Strike CAS, Anti-ship Strike 
		-- 113.IAP							MiG-23MLD		12+24	Russia			Escort
		-- 945 Squadron						MiG-21Bis		12+24	Syria			Escort
		-- 3.OSAP							An-26B			6		Russia			Transport
		-- 13.OSAP							Il-76MD			4		Russia			Transport

		-- 8 F, 72 F/A, 36 A, 10 T


		[1] = {
			name = "790.IAP",								--unit name
			type = "MiG-25PD",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional).
				["Intercept"] = 2,
				["CAP"] = 1.5,
				["Escort"] = 0.3,
				["Fighter Sweep"] = 1,
			},
			number = 8,
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
				["SEAD"] = false,
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
			number = 24,
		},
		[4] = {
			name = "113.IAP",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
				["Strike"] = false,				
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.2,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 1.5,
				["CAP"] = 1.5,
				["Escort"] = 2,
				["Fighter Sweep"] = 1,	
			},
			number = 12,
		},
		[5] = {
			name = "R/113.IAP",							--unit name
			inactive = true,
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},						
		[6] = {
			name = "945 Squadron",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Damascus",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,
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
				["Strike"] = 1,							-- coef normal : = 1
				["SEAD"] = 0.3,
			},
			number = 12,
		},
		[7] = {
			name = "R/945 Squadron",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},									--unit tasks
			number = 24,
		},

		[8] = {
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

		[9] = {
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
	


	-------------------- end Damascus ---------------	

	-------------------- Tabqa (LimitedParkNb = 27) ----------------------
		-- 127.IAP					MiG-27K			12+24	Russia				Strike CAS, Anti-ship Strike 
		-- 123.IAP					MiG-23MLD		12+24	Russia				Escort
		-- 2 Squadron				L-39C			12+24	Syria				Strike CAS soft

		-- 36 F/A, 72 A
	
		[10] = {
			name = "127.IAP",							--unit name
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = false,
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
		[11] = {
			name = "R/127.IAP",							--unit name
			inactive = true,
			type = "MiG-27K",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[12] = {
			name = "123.IAP",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,				
				["Strike"] = false,
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
		[13] = {
			name = "R/123.IAP",							--unit name
			inactive = true,	
			type = "MiG-23MLD",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",	
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,	
		},		
		[14] = {
			name = "2 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Tabqa",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,				
				["Strike"] = true,
				["Anti-ship Strike"] = false,			
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
		[15] = {
			name = "R/2 Squadron",
			inactive = true,								--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
	-------------------- end Tabqa ------------------
		
	-------------------- Abu al-Duhur (LimitedParkNb = 36) ---------------
		-- 946 Squadron							MiG-21Bis			12+24	Syria				Escort
		-- 793.IAP								MiG-25PD			8		Russia				Intercept
		-- 2 Guards BAP 21 th BAA				Su-24M				8+24	Russia				Strike Structure-armor, SEAD

		-- 8 F, 36 F/A, 32 A

		[16] = {
			name = "946 Squadron",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Abu al-Duhur",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
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
			number = 12,
		},
		[17] = {
			name = "R/946 Squadron",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[18] = {
			name = "793.IAP",								--unit name
			type = "MiG-25PD",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Abu al-Duhur",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,
			},
			tasksCoef = {									
				["Intercept"] = 2, --unit tasks coef (optional)-- coef normal : = 1
				["CAP"] = 1.5,
				["Escort"] = 0.5,
				["Fighter Sweep"] = 1,
			},
			number = 8,
		},
		[19] = {
			name = "2 Guards BAP 21 th BAA",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Abu al-Duhur",						--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,								-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1.7,
			},
			number = 8,
		},
		[20] = {
			name = "R/2 Guards BAP 21 th BAA",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		

	-------------------- end Abu al-Duhur -----------

	-------------------- Beirut-Rafic Hariri (LimitedParkNb = 34) ---------------
		-- 948 Squadron							MiG-21Bis			12+24	Syria				Escort
		-- 3 Guards BAP 21 th BAA				Su-24M				8+24	Russia				Strike Structure-armor, SEAD

		-- 36 F/A, 32 A

		[21] = {
			name = "948 Squadron",								--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Beirut-Rafic Hariri",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
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
			number = 12,
		},
		[22] = {
			name = "R/948 Squadron",								--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[23] = {
			name = "3 Guards BAP 21 th BAA",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Beirut-Rafic Hariri",						--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,								-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1.7,
			},
			number = 8,
		},
		[24] = {
			name = "R/3 Guards BAP 21 th BAA",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		

	-------------------- end Beirut-Rafic Hariri -----------

	-------------------- Bassel Al-Assad Airbase (LimitedParkNb = 53) -----
		-- 67 Squadron					MiG-23MLD			12+24	Russia						Escort
		-- 3 Squadron					L-39C				12+24	Syria						Strike CAS soft
		-- 677 Squadron					Su-17M4				8+24	Syria						Strike Structure, SEAD
		-- 522 Squadron					An-26B				4		Russia						Transport

		-- 72 F/A, 31 B, 4 T

		[25] = {
			name = "67 Squadron",							--unit name
			type = "MiG-23MLD",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = true,
				["Strike"] = false,			
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
		[26] = {
			name = "R/67 Squadron",							--unit name
			inactive = true,
			type = "MiG-23MLD",								--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		
		[27] = {
			name = "3 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Bassel Al-Assad",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,				
				["Strike"] = true,
				["Anti-ship Strike"] = false,			
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
		[28] = {
			name = "R/3 Squadron",							--unit name
			inactive = true,
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
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
				["Anti-ship Strike"] = false,			
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
			number = 24,
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
			number = 4,
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

	-------------------- Hama Airbase (LimitedParkNb = 46) ----------------
		-- 368 ShAP						Su-25			12+24		Russia					Strike CAS, SEAD
		-- 133.IAP						MiG-29A			4+12		Russia					CAP
		-- 3 BAP 149th BAA				Su-24M			8+24 		Russia					Strike Structure-armor, SEAD
		-- 27.OSAP						An-26B			6			Russia					Transport

		-- 16 F, 68 A, 6 T
		
		[33] = {
			name = "368 ShAP",							--unit name
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Flare Illumination"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.8,							-- coef normal : = 1
				["SEAD"] = 2,
				["Anti-ship Strike"] = 1,
				["Flare Illumination"] = 1,			
			},
			number = 12,
		},
		[34] = {
			name = "R/368 ShAP",							--unit name
			inactive = true,
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[35] = {
			name = "133.IAP",							--unit name
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,							-- coef normal : = 1				
				["Intercept"] = 0.5,
				["CAP"] = 1.3,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.5,	
			},
			number = 4,
		},
		[36] = {
			name = "R/133.IAP",							--unit name
			inactive = true,
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[37] = {
			name = "3 BAP 149th BAA",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			sskill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.3,							-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1.7,
			},
			number = 8,
		},
		[38] = {
			name = "R/3 BAP 149th BAA",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[39] = {
			name = "27.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Hama",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 6,
		},
		
	-------------------- end Hama Airbase ----------------

	-------------------- Palmyra Airbase (LimitedParkNb = 22)----------------
		-- 2.OSAP									An-26B		6			Russia				Transport
		-- 402nd Heavy Bomber Aviation Regiment		Tu-22M3		3+15 		Russia				Strike Structure, Anti-ship Strike
		-- 159.IAP									Su-27		8+24 		Russia				CAP, Fighter Sweep				

		-- 32 F, 18 B, 6 T

		[40] = {
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
		[41] = {
			name = "402nd Heavy Bomber Aviation Regiment",								--unit name
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
				["Strike"] = 1.5,								-- coef normal : = 1								
				["Anti-ship Strike"] = 2,
			},
			number = 3,
		},
		[42] = {
			name = "R/402nd Heavy Bomber Aviation Regiment",								--unit name
			inactive = true,
			type = "Tu-22M3",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_bomber, mission_ini.max_skill_red_bomber),			--unit skill
			tasks = {},										--unit tasks
			number = 15,
		},
		[43] = {
			name = "159.IAP",								--unit name
			type = "Su-27",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Palmyra",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Fighter Sweep"] = true,
				["Escort"] = false,
				["Strike"] = false,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["Intercept"] = 2,
				["CAP"] = 2,
				["Escort"] = 1,
				["Fighter Sweep"] = 1.5,	
			},
			number = 8,
		},
		[44] = {
			name = "R/159.IAP",								--unit name
			inactive = true,
			type = "Su-27",									--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},	
	-------------------- end Palmyra Airbase ----------------

	-------------------- An Nasiriyah Airbase (LimitedParkNb = 20) ----------------
		-- 373 ShAP						Su-25			12+24 		Russia					Strike CAS, SEAD
		-- 764.IAP						MiG-31			2+10 		Russia					Intercept

		-- 12 F, 36 A

		[45] = {
			name = "373 ShAP",							    --unit name
			type = "Su-25",									--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "An Nasiriyah",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = false,			
				["SEAD"] = true,
				["Flare Illumination"] = true
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 1.5,
				["Anti-ship Strike"] = 1,
				["Flare Illumination"] = 1,				
			},
			number = 12,
		},
		[46] = {
			name = "R/373 ShAP",							--unit name
			inactive = true,
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[47] = {
			name = "764.IAP",								--unit name
			type = "MiG-31",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "An Nasiriyah",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = true,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = false,
			},
			tasksCoef = {									
				["Intercept"] = 2, --unit tasks coef (optional)-- coef normal : = 1
				["CAP"] = 1.5,
				["Escort"] = 0.5,
				["Fighter Sweep"] = 1,
			},
			number = 2,
		},
		[48] = {
			name = "R/764.IAP",								--unit name
			type = "MiG-31",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			inactive = true,
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},			
			number = 8,
		},
	-------------------- end An Nasiriyah Airbase ------------

	-------------------- Deir ez-Zor Airbase (LimitedParkNb = 90)----------------
		-- 132nd Heavy Bomber Aviation Regiment		Tu-22M3			2+8 		Russia				Strike Structure, Anti-ship Strike
		-- 797.IAP									Su-27			6+18 		Russia				CAP, Fighter Sweep
		-- 2457 SDRLO								A-50			4 			Russia				AWACS
		-- O7 SDRLO									Su-24MR			4 			Russia				Recognition
		-- 4 Guards BAP 132nd BAA					Su-24M			6+24		Russia				Strike Structure-armor, SEAD
		-- 23.OSAP									An-26B			1+3 		Russia				Transport

		-- 24 F, 30 A, 10 B, 4 R, 4 AW, 1+3 T

		[49] = {
			name = "132nd Heavy Bomber Aviation Regiment",								--unit name
			type = "Tu-22M3",								--aircraft type
			country = "Russia",								--unit country
			livery = {""},									--unit livery
			base = "Deir ez-Zor",								--unit base
			skill = getSkill(mission_ini.min_skill_red_bomber, mission_ini.max_skill_red_bomber),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["Anti-ship Strike"] = true,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1							
				["Anti-ship Strike"] = 2,
			},
			number = 2,
		},
		[50] = {
			name = "R/132nd Heavy Bomber Aviation Regiment",								--unit name
			inactive = true,
			type = "Tu-22M3",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_bomber, mission_ini.max_skill_red_bomber),			--unit skill
			tasks = {},										--unit tasks
			number = 8,
		},
		[51] = {
			name = "797.IAP",								--unit name
			type = "Su-27",								--aircraft type
			country = "Russia",								--unit country
			livery = "af standard",							--unit livery
			base = "Deir ez-Zor",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Fighter Sweep"] = true,
				["Escort"] = false,
				["Strike"] = false,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1,								-- coef normal : = 1
				["Intercept"] = 1.5,
				["CAP"] = 2,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.5,	
			},
			number = 6,
		},
		[52] = {
			name = "R/797.IAP",								--unit name
			type = "Su-27",								--aircraft type
			country = "Russia",
			inactive = true,								--unit country
			livery = "af standard",							--unit livery
			base = "Reserves",								--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},			
			number = 18,
		},
		[53] = {
			name = "2457 SDRLO",							--unit name
			type = "A-50",									--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},									--unit livery
			base = "Deir ez-Zor",							--unit base
			skill = getSkill(mission_ini.min_skill_red_awacs, mission_ini.max_skill_red_awacs),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
			},
			number = 4,
		},
		[54] = {
			name = "O7 SDRLO",								--unit name
			type = "Su-24MR",								--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},			--unit livery
			base = "Deir ez-Zor",						--unit base
			skill = getSkill(mission_ini.min_skill_red_recognition, mission_ini.max_skill_red_recognition),			--unit skill
			tasks = {										--unit tasks				
				["Reconnaissance"] = true,
			},
			number = 5,
		},
		[55] = {
			name = "4 Guards BAP 132nd BAA",								--unit name
			type = "Su-24M",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Deir ez-Zor",						--unit base
			sskill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {
				["Strike"] = true,
				["SEAD"] = true,
				["Laser Illumination"] = true,
				["Anti-ship Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,								-- coef normal : = 1
				["SEAD"] = 2,
				["Laser Illumination"] = 1,				
				["Anti-ship Strike"] = 1,
			},
			number = 6,
		},
		[56] = {
			name = "R/4 Guards BAP 132nd BAA",								--unit name
			inactive = true,
			type = "Su-24M",								--aircraft type
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[57] = {
			name = "23.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Deir ez-Zor",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 1,
		},
		[58] = {
			name = "R/23.OSAP",								--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 3,
		},
	-------------------- end Deir ez-Zor Airbase ----------------

	-------------------- Sayqal Airbase/Helibase (LimitedParkNb = 59) ----------------
		-- 267 ShAP						Su-25				6+24			Russia				Strike CAS, SEAD
		-- 133.IAP						MiG-29A				6+24 			Russia				CAP
		-- 27.OSAP						An-26B				1+4				Russia				Transport
		-- 09 SDRLO						MiG-25RBT			4				Russia				Recognition, AWACS
		-- 81st TFS						F-14A				4+24			Iran				Intercept
		-- 1st GHR						Mi-8MT				6+24			Russia				Strike CAS Soft
		-- 3rd GHR						Mi-26				3+12			Russia				Transport
		-- 15th Squadron				SA342M				6+24			Lebanon				Strike CAS Soft

		-- 58 F, 30 A, 1+5 T, 75 H

		
		[59] = {
			name = "267 ShAP",							--unit name
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Sayqal",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Strike"] = true,
				["SEAD"] = true,
				["Anti-ship Strike"] = false,
				["Flare Illumination"] = true
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 2,							-- coef normal : = 1
				["SEAD"] = 2,
				["Anti-ship Strike"] = 1,
				["Flare Illumination"] = 2,			
			},
			number = 6,
		},
		[60] = {
			name = "R/267 ShAP",							--unit name
			inactive = true,
			type = "Su-25",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[61] = {
			name = "137.IAP",							--unit name
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Sayqal",						--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = true,
				["Escort"] = false,
				["Fighter Sweep"] = false,
				["Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,							-- coef normal : = 1				
				["Intercept"] = 2,
				["CAP"] = 1.8,
				["Escort"] = 1.3,
				["Fighter Sweep"] = 1.8,	
			},
			number = 6,
		},
		[62] = {
			name = "R/13.IAP",							--unit name
			inactive = true,
			type = "MiG-29A",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[63] = {
			name = "27.OSAP",								--unit name
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Sayqal",						--unit base
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 1,
		},
		[64] = {
			name = "R/27.OSAP",								--unit name
			inactive = true,
			type = "An-26B",								--aircraft type
			country = "Russia",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_transport, mission_ini.max_skill_red_transport),			--unit skill
			tasks = {},										--unit tasks
			number = 4,
		},
		[65] = {
			name = "09 SDRLO",								--unit name
			type = "MiG-25RBT",								--aircraft type
			country = "Russia",								--unit country
			--sidenumber = {800, 805},						--unit range of sidenumbers (optional)
			livery = {""},									--unit livery
			base = "Sayqal",								--unit base
			skill = getSkill(mission_ini.min_skill_red_recognition, mission_ini.max_skill_red_recognition),			--unit skill
			tasks = {										--unit tasks
				["AWACS"] = true,
				["Reconnaissance"] = true,
			},
			number = 4,
		},
		[66] = {
			name = "81st TFS",							--unit name
			type = "F-14A",								--aircraft type
			country = "Iran",							--unit country
			livery = "",								--unit livery
			base = "Sayqal",							--unit base
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {									--unit tasks
				["Intercept"] = true,
				["CAP"] = false,
				["Escort"] = false,
				["Fighter Sweep"] = true,
				["Strike"] = false,
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 0.5,							-- coef normal : = 1				
				["Intercept"] = 2,
				["CAP"] = 2,
				["Escort"] = 1.3,
				["Fighter Sweep"] = 2,	
			},
			number = 4,
		},
		[67] = {
			name = "R/81st TFS",							--unit name
			inactive = true,
			type = "F-14A",								--aircraft type
			country = "Iran",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[68] = { 
			name = "1st GHR",								--unit name
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Sayqal", 						--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 6,
		},
		[69] = {
			name = "R/1st GHR",								--unit name
			inactive = true,
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},				
		[70] = { 
			name = "3rd GHR",								--unit name
			type = "Mi-26",									--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Sayqal", 								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
			},
			number = 3,
		},
		[71] = {
			name = "R/3rd GHR",								--unit name
			inactive = true,
			type = "Mi-26",									--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 12,
		},
		[72] = {
			name = "15th Squadron",							--unit name
			type = "SA342M",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Lebanon",							--unit country
			livery = "",									--unit livery
			base = "Sayqal",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 6,
		},
		[73] = {
			name = "R/15th Squadron",						--unit name
			inactive = true,
			type = "SA342M",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
	-------------------- end Sayqal Airbase ----------------

	-------------------- Khalkhalah Airbase/Helibase (LimitedParkNb = 35) -----
		-- 7 Squadron					L-39C			8+24			Syria
		-- 637 Squadron					Su-17M4			6+24			Syria
		-- 9th GHR						Mi-8MT			6+24			Russia
		-- 17th GHR						Mi-24P			6+24			Russia

		-- 32 A, 30 B, 60 H

		[74] = {
			name = "7 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Khalkhalah",								--unit base
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
			number = 8,
		},
		[75] = {
			name = "R/7 Squadron",							--unit name
			inactive = true,
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
		[76] = {
			name = "637 Squadron",							--unit name
			type = "Su-17M4",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Khalkhalah",						--unit base
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
			number = 6,
		},
		[77] = {
			name = "R/637 Squadron",							--unit name
			inactive = true,
			type = "Su-17M4",								--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 20,
		},		

		[78] = { 
			name = "9th GHR",								--unit name
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Khalkhalah", 						--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 6,
		},
		[79] = {
			name = "R/9th GHR",								--unit name
			inactive = true,
			type = "Mi-8MT",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},	
		[80] = {
			name = "17th GHR",								--unit name
			type = "Mi-24P",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Khalkhalah",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 6,
		},
		[81] = {
			name = "R/17th GHR",							--unit name
			inactive = true,
			type = "Mi-24P",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
	-------------------- end Khalkhalah Airbase -------------------------

	-------------------- Mezzeh Airbase (LimitedParkNb = 28) -----
		-- 37 Squadron					MiG-21Bis		8+24			Syria
		-- 11 Squadron					L-39C			8+24			Syria

		-- 32 F/A, 32 A

		[82] = {
			name = "37 Squadron",							--unit name
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Mezzeh",						--unit base
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
				["Intercept"] = 1.5,
				["CAP"] = 1.3,
				["Escort"] = 2,
				["Fighter Sweep"] = 1.3,	
			},
			number = 8,
		},
		[83] = {
			name = "R/37 Squadron",							--unit name
			inactive = true,
			type = "MiG-21Bis",								--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_fighter, mission_ini.max_skill_red_fighter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		
		[84] = {
			name = "11 Squadron",							--unit name
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			livery = "",									--unit livery
			base = "Mezzeh",								--unit base
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {										--unit tasks
				["Intercept"] = false,
				["CAP"] = false,
				["Escort"] = true,
				["Fighter Sweep"] = false,				
				["Strike"] = true,
				["Anti-ship Strike"] = true,			
			},
			tasksCoef = {									--unit tasks coef (optional)
				["Strike"] = 1.5,							-- coef normal : = 1				
				["Laser Illumination"] = 1,
				["Intercept"] = 0.5,
				["CAP"] = 0.5,
				["Escort"] = 1,			
				["Fighter Sweep"] = 0.5,
				["Anti-ship Strike"] = 0.7,			
			},
			number = 8,
		},
		[85] = {
			name = "R/11 Squadron",							--unit name
			inactive = true,
			type = "L-39C",									--aircraft type
			country = "Syria",								--unit country
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_attacker, mission_ini.max_skill_red_attacker),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},
			
	-------------------- end Mezzeh Airbase -------------------------

	-------------------- Taftanaz Helibase (LimitedParkNb = 48) ----------------		
		-- 13th GHR						Mi-24P			6+24			Russia
		-- 2nd GHR						Mi-24V			6+24			Russia
		-- 16th Squadron				SA342Minigun	4+16			Lebanon
		-- 14th Squadron				SA342Mistral	4+16			Lebanon

		-- 100 H

		[86] = {
			name = "13th GHR",								--unit name
			type = "Mi-24P",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Taftanaz",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 6,
		},
		[87] = {
			name = "R/13th GHR",							--unit name
			inactive = true,
			type = "Mi-24P",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},		
		[88] = {
			name = "2nd GHR",								--unit name
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Russia",								--unit country
			livery = "",									--unit livery
			base = "Taftanaz",					--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = true,
				["Strike"] = true,
			},
			number = 6,
		},
		[89] = {
			name = "R/2nd GHR",								--unit name
			inactive = true,
			type = "Mi-24V",								--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 24,
		},	
		[90] = {
			name = "16th Squadron",							--unit name
			type = "SA342Minigun",							--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Lebanon",							--unit country
			livery = "",									--unit livery
			base = "Taftanaz",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 4,
		},
		[91] = {
			name = "R/16th Squadron",						--unit name
			inactive = true,
			type = "SA342Minigun",							--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},
		[92] = {
			name = "14th Squadron",							--unit name
			type = "SA342Mistral",							--aircraft type
			helicopter = true,								--true for helicopter units
			country = "Lebanon",							--unit country
			livery = "",									--unit livery
			base = "Taftanaz",								--unit base
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {
				["Transport"] = false,
				["Strike"] = true,
			},
			number = 4,
		},
		[93] = {
			name = "R/14th Squadron",						--unit name
			inactive = true,
			type = "SA342Mistral",							--aircraft type
			helicopter = true,								--true for helicopter units
			base = "Reserves",
			skill = getSkill(mission_ini.min_skill_red_helicopter, mission_ini.max_skill_red_helicopter),			--unit skill
			tasks = {},										--unit tasks
			number = 16,
		},
		
		
	-------------------- end Taftanaz Airbase ----------------
			
	}
}
