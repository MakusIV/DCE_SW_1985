--Loadouts database SYRIA 1984


---------------------------------------------------------------------------------------------------------
-- Old_Boy rev. OB.1.0.0: first implementation
-------------------------------------------------------------------------------------------------------


--[[ Loadout Entry Example ----------------------------------------------------------------------------

["MiG-21Bis"] = {														--String, aircraft type
	["Strike"] = {														--String, task
		["Custom Loadout Name"] = {										--String, custom loadout name
			support = {													--Table, list of tasks that can support this loadout (nil = is never added, true = is added when available)
				["Escort"] = true,										--Fighter escort
				["SEAD"] = true,										--SEAD	escort
				["Escort Jammer"] = true,								--Jammer escort
				["Flare Illumination"] = true,							--Target area flare illumination (mandatory support for loadout to be eligible)
				["Laser Illumination"] = true,							--Target laser illumination (mandatory support for loadout to be eligible)
			},
			attributes = {												--Array, custom loadout attributes. Only used by A-G tasks. Any target attribute must be matched in this array for the loadout to be eligible for the target.
				[1] = "Anti-tank",										--String, custom attribute to be matched for target attribute
				[2] = "Stand-off Missile",								--String, custom attribute to be matched for target attribute
			},
			weaponType = "Bombs",										--String, type of ordinance of loadout. Only used by A-G taks. Options: "Cannon", "Rockets", "Bombs", "Guided bombs", "ASM". A-G weapon types cannot be mixed.
			expend = "All",												--String, quantity of wapons expended per attack. Only used by A-G tasks. Options: "Auto", "All", "Half", "Two".
			day = true,													--Boolean, loadout is day capable
			night = true,												--Boolean, loadout is night capable
			not_ewr = true												--Boolean, doesn't care about ewr detection 
			adverseWeather = true,										--Boolean, loadout is adverse weather capable
			range = 900000,												--Number, range radius in meters
			capability = 10,											--Number, how good is the aircraft with this loadout. The higher the better
			firepower = 10,												--Number, how much firepower has this loadout. The higher the better  (note: task: Intercept, CAP, level threat = capability * firepower * one third of ready aircraft)
			vCruise = 225,												--Number, cruise speed in m/s
			vAttack = 280,												--Number, attack speed in m/s
			hCruise = 6000,												--Number, cruise altitude in m
			hAttack = 100,												--Number, attack altitude in m
			standoff = 5000,											--Number, attack distance from target in m. Determines attack waypoint distance for A-G with missiles (for Bombss use nil) and engage distance for A-A tasks
			tStation = 1200,											--Number, seconds the aircraft can remain on station. Only used by CAP, AWACS and Refuelling tasks
			LDSD = true,												--Boolean, aircraft is Look-Down/Shoot-Down capable. Only used by CAP and Intercept tasks
			self_escort = false,										--Boolean, aircraft can defend itself against fighters. Only used by A-G tasks
			sortie_rate = 6,											--Number, average amount of sorties that aircraft flies per day
			stores = {													--Table, loadout table for DCS
				["pylons"] =
				{
					[1] =
					{
						["CLSID"] = "{R-60M 2L}",
					},
					[2] =
					{
						["CLSID"] = "{R-3R}",
					},
					[3] =
					{
						["CLSID"] = "{PTB_800_MIG21}",
					},
					[4] =
					{
						["CLSID"] = "{R-3R}",
					},
					[5] =
					{
						["CLSID"] = "{R-60M 2R}",
					},
					[6] =
					{
						["CLSID"] = "{ASO-2}",
					},
				},
				["fuel"] = 2280,
				["flare"] = 32,
				["ammo_type"] = 1,
				["chaff"] = 32,
				["gun"] = 100,
			},
		},
	},
},

-- nota: bomber veloci trovano una scorta veloce iterando nelle unit quindi non devi necessariemente vincolare tutte le v dei fighter, alcuni possono essere fissate più alte in modo da essere utilizzati solo con quei standoff range > 15000m, optimal egrees should be in direction of home base, egress starts from attack point, egress_distance: 
-- [escort_high_speed_loadout] = ....
--> escort_num = aircraft_availability[unit[n].name].available 


]]-----------------------------------------------------------------------------------------------------


db_loadouts = {


	-- NOTA: riporta i nuovi inserimenti in miz: Mig-21Bis flare illumination, Su-24M SEAD Kh-58, L-39ZA, C-101CC, F-16A Laser Illumination, OH-58D

	-- VERIFICA:
	-- F-15 e F-16A possono effettuare SEAD con AGM-88 Harm
	-- F-16A, F-4E possono effettuare Laser Illumination
	-- AJS 37 Viggen: Laser, Flare Illumination e SEAD con altro missile idoneo
	-- S-3B Laser, SEAD
	-- F-5E, Mig-21, Su-17, Mig-27, Mig-19, L-39C Laser, Flare
	-- INSERIRE C-101
	-- Verifica se Mig-25PD ha altri missili
	-- verifica altre versioni L-39
	-- riverifica armamento Tu-142
	-- RIVERIFICA IL LOADOUT DEL F-15c CAP, ESCORT, ... AIM-7M*4, AIM-7MH*3 E AIM-9*2? 

	-- verifica/inserisci se presente role="attacker", "bomber"
	-- inserisci weapon = []
	-- verifica/ridefinisci attribute = {}
	-- VERIFICA SE E COME VIENE GESTITA PER I LOADOUT LA PROPRIETA' coalition = "red", "blue"
	-- inserisci qui il loadout del IRAN F-14A (no il 135-GR)


	-- UH-60 --1974 (primo volo) 1978 (entrata in servizio)
	-- SA-342 Gazelle (1978-2000 (sistemi d'arma)?)
	-- Harrier AV-8B 1985 SI
	-- F-18? NO
	-- A-10A II 1977 SI
	-- A_10C NO 2004 NO
	-- A-10C II 2004 NO
	
	-- Tornado IDS	1979 SI
	-- F-16A 1978 SI
	-- F-16C Block 50/52 1991 NO
	-- Mirage 2000C 1983 SI
	-- Mirage 2000-5 19992 NO
	-- F-14B 1987-91 NO
	-- F-15C - 1976 SI
	-- F-15E Strike Eagle - 1986 NO
	-- C101 Aviojet 1980
	-- OH-58D 1983 si
	-- F-117A 1983
	-- CH-47D 1979

	-- AGM-88 1985 SI
	-- GBU-31 NO
	-- AIM-120B, C NO
	-- AIM-120 (uso1988, primo lancio e prblemi produzione 1984)
	-- AIM-9R 1986 si
	-- AN/ALQ-131 1970? SI
	-- GBU-27 1987 SI
	-- GBU-16 1976 SI
	-- AN/AAQ 28 NO
	-- AIM-54A Mk47, Mk60 1974, 1975SI
	-- AIM-54C Mk47, Mk60 1986 SI
	-- AN/ASQ-T50 boh?  SI
	-- Lantirn Pod 1987 SI
	-- AGM-114 Hellfire 1984 SI
	-- RB 15F (RBS-15 Antiship) 1985 SI
	-- GBU-27 Paveway II 1985/87 SI
	-- GBU-24 Paveway I 1983 SI
	-- GBU-38 1991 NO
	-- AGM-122 antiradar 1986 SI


    -- Nato
	["Tornado IDS"] = {-- 1971  SI  
		
		["Anti-ship Strike"] = {

			["Antiship Strike - Kormoran*2, AIM-9M*2, 2*Fuel role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["Kormoran"] = 2,									
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = true,
				range = 500000,
				capability = 8,
				firepower = 8,
				vCruise = 240,
				vAttack = 216,
				hCruise = 200,
				hAttack = nil,
				standoff = nil, -- rb04 32km
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{7210496B-7B81-4B52-80D6-8529ECF847CD}",
							}, -- end of [4]
							[11] = 
							{
								["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [10]
							[9] = 
							{
								["CLSID"] = "{7210496B-7B81-4B52-80D6-8529ECF847CD}",
							}, -- end of [9]
							[12] = 
							{
								["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = "4663",
					["flare"] = 45,
					["chaff"] = 90,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["Pinpoint Strike - GBU-16*2, AIM-9M*2, 2*Fuel - FT role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"Bridge", "Structure"},
				weapons = { -- task dedicated weapons
					["GBU-16"] = 2,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = 2,
				vCruise = 200,
				vAttack = 140,
				hCruise = 2000,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
						}, -- end of [4]
						[11] = 
						{
							["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
						}, -- end of [11]
						[10] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [10]
						[9] = 
						{
							["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
						}, -- end of [9]
						[12] = 
						{
							["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
						}, -- end of [12]
					}, -- end of ["pylons"]
					["fuel"] = "4663",
					["flare"] = 45,
					["chaff"] = 90,
					["gun"] = 100,
				},
			},
			["Strike - Mk-82*4, AIM-9M*2, 2*Fuel - FT role: ATTACKER @ NORMAL ALT"] = { --
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 4,																		
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = true,
				range = 500000,
				capability = 8,
				firepower = 2,
				vCruise = 230, 
				vAttack = 140,
				hCruise = 4000,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [10]
						[11] = 
						{
							["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
						}, -- end of [11]
						[12] = 
						{
							["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
						}, -- end of [12]
					}, -- end of ["pylons"]
					["fuel"] = "4663",
					["flare"] = 45,
					["chaff"] = 90,
					["gun"] = 100,
				},
			},
		},
		["SEAD"] = {		
			["SEAD Long Range - AGM-88*2, AIM-9M*2, ECM, 2*Fuel role: SEAD ESCORT FOR BOMBER @ NORMAL ALT"] = {
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["AGM-88"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = nil, -- DC_Firepower calculation --6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation -- 6000
				standoff = nil, -- DC_Firepower calculation -- 1000
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [4]
							[11] = 
							{
								["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [10]
							[9] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [9]
							[12] = 
							{
								["CLSID"] = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = "4663",
					["flare"] = 45,
					["chaff"] = 90,
					["gun"] = 100,
				},
			},
			["SEAD - AGM-88*4, AIM-9M*2, ECM role: SEAD ESCORT FOR ATTACKER @ NORMAL ALT"] = {
				role = "escort_sead_attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["AGM-88"] = 4,										
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability = 7,
				firepower = nil, -- DC_Firepower calculation --6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation -- 6000
				standoff = nil, -- DC_Firepower calculation -- 1000
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [4]
							[11] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [10]
							[9] = 
							{
								["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
							}, -- end of [9]
							[12] = 
							{
								["CLSID"] = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = "4663",
					["flare"] = 45,
					["chaff"] = 90,
					["gun"] = 100,
				},
			},
		},
	},
	
	["AV8BNA"] = {-- 1985
		["Anti-ship Strike"] = {
			
		},
		["Strike"] = {
			
		},		
		["SEAD"] = {
			
		},
	},

	["A-10A"] = {-- 1977

		["Strike"] = {

			["CAS ASM AGM-65D *4, AIM-9*2, ECM"] = {
				minscore = 0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"armor", "SAM"},
				weapons = { -- task dedicated weapons
					["AGM-65D"] = 4,										
					["AIM-9M"] = 2,										
				},
				role = "attacker",
				role_altitude = "normal",
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 8,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 6706,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
							}, -- end of [1]
							[11] = 
							{
								["CLSID"] = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}",
							}, -- end of [11]
							[9] = 
							{
								["CLSID"] = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}",
							}, -- end of [9]
							[3] = 
							{
								["CLSID"] = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}",
							}, -- end of [3]
						}, -- end of ["pylons"]
						["fuel"] = 5029,
						["flare"] = 120,
						["ammo_type"] = 1,
						["chaff"] = 240,
						["gun"] = 100,
				},
			},

			["CAS Cluster Bombs Mk20*6, AIM-9*2, ECM"] = {
				minscore = 0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft","Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 6,										
					["AIM-9M"] = 2,										
				},
				role = "attacker",
				role_altitude = "normal",
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 7,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 6706,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [2]
							[7] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [10]
							[5] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [5]
							[4] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [4]
							[9] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [9]
							[3] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [3]
						}, -- end of ["pylons"]
						["fuel"] = 5029,
						["flare"] = 120,
						["ammo_type"] = 1,
						["chaff"] = 240,
						["gun"] = 100,
				},
			},

			["CAS Cluster Bombs Mk20*8, AIM-9*2"] = {
				minscore = 0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 8,									
					["AIM-9M"] = 2,										
				},
				role = "attacker",
				role_altitude = "normal",
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 7,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 6706,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [8]
							[11] = 
							{
								["CLSID"] = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}",
							}, -- end of [11]
							[9] = 
							{
								["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
							}, -- end of [9]
						}, -- end of ["pylons"]
						["fuel"] = 5029,
						["flare"] = 120,
						["ammo_type"] = 1,
						["chaff"] = 240,
						["gun"] = 100,
				},
			},

			["CAS Rockets LAU-68-MK5 *6"] = {
				minscore = 0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"armor", "SAM"},
				weapons = { -- task dedicated weapons
					["Hydra-70MK5"] = 6,									
					["AIM-9M"] = 2,										
				},
				role = "attacker",
				role_altitude = "normal",
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 9,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 6706,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [4]
							[8] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [10]
							[9] = 
							{
								["CLSID"] = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
							}, -- end of [9]
						}, -- end of ["pylons"]
						["fuel"] = 5029,
						["flare"] = 120,
						["ammo_type"] = 1,
						["chaff"] = 240,
						["gun"] = 100,
				},
			},

			["Strike Bomb, Mk-82*6, Mk-84*2"] = {
				minscore = 0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 6,									
					["Mk-84"] = 2,										
				},
				role = "attacker",
				role_altitude = "normal",
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 7,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 6706,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [2]
							[7] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [10]
							[5] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [5]
							[4] = 
							{
								["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
							}, -- end of [4]
							[9] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [9]
							[3] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [3]
						}, -- end of ["pylons"]
						["fuel"] = 5029,
						["flare"] = 120,
						["ammo_type"] = 1,
						["chaff"] = 240,
						["gun"] = 100,
				},
			},
		},		
	},

	["M-2000C"] = { -- 1983 SI -> OK <- 
		["Intercept"] = {
			["Day, MagicII*2, S-530D*2, FT*1"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["R-530EM"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 400000,
				capability = 1,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[9] = 
						{
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = 
						{
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = 
						{
							["CLSID"] = "{Matra_S530D}",
							["num"] = 8,
						},
						[2] = 
						{
							["CLSID"] = "{Matra_S530D}",
							["num"] = 2,
						},
						[5] = 
						{
							["CLSID"] = "{M2KC_RPL_522}",
							["num"] = 5,
						},
						[10] = {
						["CLSID"] = "{Eclair}",
						["num"] = 10,
						},					
					},
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["Day, MagicII*2, S-530D*2, FT*1"] = {
				attributes = {"Air Forces"},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["R-530EM"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 450000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[9] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 9,
					},
					[1] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 1,
					},
					[8] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 8,
					},
					[2] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 2,
					},
					[5] = 
					{
						["CLSID"] = "{M2KC_RPL_522}",
						["num"] = 5,
					},
					[10] = {
					["CLSID"] = "{Eclair}",
					["num"] = 10,
					},					
				},
				["fuel"] = 3165,
				["flare"] = 48,
				["chaff"] = 112,
				["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["MagicII*2, S-530D*2, FT*1"] = {
				attributes = {},
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["R-530M"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 270,
				-- vAttack = 270,
				-- hCruise = 7011,
				-- hAttack = 7011,
				standoff = 27000,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[9] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 9,
					},
					[1] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 1,
					},
					[8] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 8,
					},
					[2] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 2,
					},
					[5] = 
					{
						["CLSID"] = "{M2KC_RPL_522}",
						["num"] = 5,
					},
					[10] = {
					["CLSID"] = "{Eclair}",
					["num"] = 10,
					},					
				},
				["fuel"] = 3165,
				["flare"] = 48,
				["chaff"] = 112,
				["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["MagicII*2, S-530D*2, FT*1"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["R-530M"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[9] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 9,
					},
					[1] = 
					{
						["CLSID"] = "{MMagicII}",
						["num"] = 1,
					},
					[8] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 8,
					},
					[2] = 
					{
						["CLSID"] = "{Matra_S530D}",
						["num"] = 2,
					},
					[5] = 
					{
						["CLSID"] = "{M2KC_RPL_522}",
						["num"] = 5,
					},
					[10] = {
					["CLSID"] = "{Eclair}",
					["num"] = 10,
					},					
				},
				["fuel"] = 3165,
				["flare"] = 48,
				["chaff"] = 112,
				["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["GBU-16*1, MagicII*2, FT*2"] = {
			 	minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				 support = {
					["Escort"] = true,
					["SEAD"] = true,
					["Laser Illumination"] = true,
				},
				attributes = {"Bridge", "Structure"},
				weaponType = "Guided bombs",
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["GBU-16"] = 1,					
				},
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 7924.8,
				hAttack = 7315.2,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_08_RPL541}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_02_RPL541}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
							["num"] = 5,
						},
					}, -- end of ["pylons"]
						["fuel"] = 3165,
						["flare"] = 48,
						["chaff"] = 112,
						["gun"] = 100,
				},
			},
			["GBU-12*4, MagicII*2, FT*2"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
					["Laser Illumination"] = true,
				},
				attributes = {"Bridge"},
				weaponType = "Guided bombs",
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["GBU-12"] = 4,					
				},
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 7924.8,
				hAttack = 7315.2,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_08_RPL541}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_02_RPL541}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
							["num"] = 5,
						},
					}, -- end of ["pylons"]
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},			
			["MR, Mk-82*4, MagicII*2, FT*2"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["Mk-82"] = 4,					
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_08_RPL541}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_02_RPL541}",
							["num"] = 2,
						},
						[7] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 7,
						},
						[3] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 6,
						},
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
					}, -- end of ["pylons"]
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},
			["SR, Mk-82*8, MagicII*2, FT*1"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["Mk-82"] = 8,					
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 130000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 4876.8,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_RAFAUT_MK82}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_RAFAUT_MK82}",
							["num"] = 2,
						},
						[7] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 7,
						},
						[3] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 6,
						},
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
						[5] = {
							["CLSID"] = "{M2KC_RPL_522}",
							["num"] = 5,
						},
					}, -- end of ["pylons"]
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},
			["OCA, MR, Mk-82*4, MagicII*2, FT*2"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Parked Aircraft"},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["Mk-82"] = 4,					
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 3048,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_08_RPL541}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_02_RPL541}",
							["num"] = 2,
						},
						[7] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 7,
						},
						[3] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 6,
						},
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
					}, -- end of ["pylons"]
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},
			["Mk-82*4, MagicII*2, FT*2"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Bridge"},
				weapons = {-- task dedicated weapons
					["R-550"] = 2,
					["Mk-82"] = 4,					
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[9] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 9,
						},
						[1] = {
							["CLSID"] = "{MMagicII}",
							["num"] = 1,
						},
						[8] = {
							["CLSID"] = "{M2KC_08_RPL541}",
							["num"] = 8,
						},
						[2] = {
							["CLSID"] = "{M2KC_02_RPL541}",
							["num"] = 2,
						},
						[7] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 7,
						},
						[3] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							["num"] = 6,
						},
						[10] = {
							["CLSID"] = "{Eclair}",
							["num"] = 10,
						},
					}, -- end of ["pylons"]
					["fuel"] = 3165,
					["flare"] = 48,
					["chaff"] = 112,
					["gun"] = 100,
				},
			},
		},
	},

	["F-15C"] = { -- 1976 SI -> OK <- 
		["Intercept"] = {
			--[[["AIM-9M*4, AIM-120B*4, Fuel*1"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				-- vCruise = 270,
				-- vAttack = 270,
				-- hCruise = 6096,
				-- hAttack = 6096,
				-- standoff = 45000,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [9]
						[11] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [11]
					}, -- end of ["pylons"]
					["fuel"] = "6103",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},]]
			["Intercept AIM-7M*2, AIM-7MH*2, AIM-9M*4, Fuel*1"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-7M"] = 2,
					["AIM-7MH"] = 2,					
					["AIM-9M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				-- vCruise = 270,
				-- vAttack = 270,
				-- hCruise = 6096,
				-- hAttack = 6096,
				-- standoff = 45000,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [9]
						[11] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [11]
					}, -- end of ["pylons"]
					["fuel"] = "6103",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},		
		["CAP"] = {
			--[[
			["AIM-9M*4, AIM-120B*4, Fuel*3"] = {
				attributes = {"Air Forces"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = 7200,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [10]					
					[11] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
				},
			},]]
			["CAP-Escort AIM-7MH*4, AIM-9M*2, Fuel*3"] = {
				attributes = {"Air Forces"},
				weapons = {-- task dedicated weapons
					["AIM-7MH"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = 7200,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [10]
						[11] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [11]
					}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			--[[["AIM-9M*4, AIM-120B*4, Fuel*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				-- vAttack = 265.83333333333,
				-- hCruise = 9753.6,
				-- hAttack = 9753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [10]					
					[11] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
				},
			},]]
			["CAP-Escort AIM-7MH*4, AIM-9M*2, Fuel*3"] = {
				attributes = {"Air Forces"},
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-7MH"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = 7200,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [10]
						[11] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [11]
					}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
				},
			},
		},		
		["Fighter Sweep"] = {
			--[[["AIM-9M*4, AIM-120B*4, Fuel*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
					}, -- end of [8]
					[9] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [9]
					[10] = 
					{
						["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
					}, -- end of [10]					
					[11] = 
					{
						["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					}, -- end of [11]
				}, -- end of ["pylons"]
				["fuel"] = "6103",
				["flare"] = 60,
				["chaff"] = 120,
				["gun"] = 100,
				},
			},]]
			["CAP-Escort AIM-7MH*4, AIM-9M, Fuel*3"] = {
				attributes = {"Air Forces"},
				weapons = {-- task dedicated weapons
					["AIM-7MH"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = 7200,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{AIM-7H}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
						}, -- end of [10]
						[11] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [11]
					}, -- end of ["pylons"]
					["fuel"] = "6103",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},		
	},

	["F-16A"] = { --1978 SI -> OK <-  
		["Intercept"] = {
			["Intercept AIM-9P5*4, AIM-9M*2, ECM"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-9P5"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				-- vCruise = 270,
				-- vAttack = 270,
				-- hCruise = 6096,
				-- hAttack = 6096,
				-- standoff = 45000,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[8] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["CAP-Escort AIM-9P5*4, AIM-9M*2, ECM, Fuel*2"] = {
				attributes = {"Air Forces"},
				weapons = {-- task dedicated weapons
					["AIM-9P5"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = 7200,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["CAP-Escort AIM-9P5*4, AIM-9M*2, ECM, Fuel*2"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-9P5"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				-- vAttack = 265.83333333333,
				-- hCruise = 9753.6,
				-- hAttack = 9753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},		
		["Fighter Sweep"] = {
			["CAP-Escort AIM-9P5*4, AIM-9M*2, ECM, Fuel*2"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-9P5"] = 4,					
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{AIM-9P5}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},				
		["Strike"] = {
			["Strike AIM-9P*2, Mk-82*6, ECM, Fuel*2"] = {
				minscore = 0.2,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = {-- task dedicated weapons
					["AIM-9P"] = 2,					
					["Mk-82"] = 6,
				},
					weaponType = "Guided bombs",
					expend = "Auto",
					day = true,
					night = false,
					adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 7000,
				hAttack = 7100,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 8,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike Bombs AIM-9M*2, Mk-84*2, ECM, Fuel*2"] = {
				minscore = 0.2,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = {-- task dedicated weapons
					["AIM-9M"] = 2,					
					["Mk-84"] = 2,
				},
					weaponType = "Guided bombs",
					expend = "Auto",
					day = true,
					night = false,
					adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 7000,
				hAttack = 7100,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 8,
				stores = {
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},	
			["Pinpoint Strike, bombs, AIM-9P*2, GBU-10*2, ECM, Lantirn, Fuel*2"] = {
				minscore = 0.2,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				weapons = {-- task dedicated weapons
					["AIM-9P"] = 2,					
					["GBU-10"] = 2,
				},
				attributes = {"Structure", "Bridge"},
					weaponType = "Guided bombs",
					expend = "Auto",
					day = true,
					night = false,
					adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 7000,
				hAttack = 7100,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 8,
				stores = {
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{CAAC1CFD-6745-416B-AFA4-CB57414856D0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "3104",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},		
		},
	},

	["F-117A"] = { --1983 SI -> OK <-  
		["Strike"] = {
			["Pinpoint Strike  GBU-10*2"] = {
				minscore = 0.3,
				role = "bomber",
				role_altitude = "low",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = {-- task dedicated weapons				
					["GBU-10"] = 2,
				},
				weaponType = "Guided bombs",
				expend = "All",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 120,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 8534.4,
				hAttack = 8534.4,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- end of [2]
					}, -- end of ["pylons"]
					["fuel"] = "8255",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["Pinpoint Hard Strike  GBU-27*2"] = { --GBU-27 1987
				minscore = 0.3,
				role = "bomber",
				role_altitude = "low",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = {-- task dedicated weapons				
					["GBU-27"] = 2, --1987 (deriva dalla BLU-109 del 1985)
				},
				weaponType = "Guided bombs",
				expend = "All",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 120,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 8534.4,
				hAttack = 8534.4,
				standoff = 15000,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}",
						}, -- end of [2]
					}, -- end of ["pylons"]
					["fuel"] = 8007,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},

	["E-3A"] = { -- 1977 SI -> OK <-  
		["AWACS"] = {
			["Default"] = {
				role = "AWACS",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {"Sentry"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				vCruise = 231.25,
				vAttack = 231.25,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = nil,
				tStation = 36000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
					}, -- --end of ["pylons"]
					["fuel"] = "65000",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},		
	},

	["E-2C"] = {  --- 1973 SI -> OK <-  
		["AWACS"] = {
			["Default"] = {
				role = "AWACS",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 1,
				vCruise = 138.889,
				vAttack = 138.889,
				hCruise = 7315.2,
				hAttack = 7315.2,
				tStation = 14400,
				sortie_rate = 5,
				stores = {
					["pylons"] = {}, -- --end of ["pylons"]
					["fuel"] = "65000",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},	
	},

	["F-14A-135-GR"] = { --1974 with AIM-54C (1982) SI -> OK <-    anche IRAN
		["Intercept"] = {
			["TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2, --cambia in F se possibile
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft =
					{
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
					},
			},
			["Intercept AIM-54C-Mk47*4, AIM-7MH*2, AIM-9M*1, Fuel *2"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-54C-MK47"] = 4,
					["AIM-7MH"] = 2,
					["AIM-9M"] = 1,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 8, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7MH}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{SHOULDER AIM-7MH}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["IRAN TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				coalition = "red",
				weapons = {-- task dedicated weapons
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2, --cambia in F se possibile
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft =
					{
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
					},
			},
		},
		["CAP"] = {
			["TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft =
				{
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},			
			["CAP-Escort AIM-54C-Mk47*4, AIM-7P*2, AIM-9M*1, ACMI Pod, Fuel *2"] = {
				attributes = {},
				role = "escort_attacker",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-54C-MK47"] = 4,
					["AIM-7P"] = 2,
					["AIM-9M"] = 1,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - TCTS R}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["IRAN-TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				coalition = "red",
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft =
				{
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
		},
		["Escort"] = {
			["TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2 role: ESCORT BOMBER @ NORMAL ALT"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = {
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, --  = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = 200,
				hCruise = 7000,
				standoff = 80300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},			
			["TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2 role: ESCORT ATTACKER @ NORMAL ALT"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = {
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, --  = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = 200,
				hCruise = 7000,
				standoff = 80300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["CAP-Escort AIM-54C-Mk47*4, AIM-7P*2, AIM-9M*1, ACMI Pod, Fuel *2"] = {
				attributes = {},
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-54C-MK47"] = 4,
					["AIM-7P"] = 2,
					["AIM-9M"] = 1,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 8, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - TCTS R}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["IRAN-TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2 role: ESCORT BOMBER @ NORMAL ALT"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = {
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, --  = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = 200,
				hCruise = 7000,
				standoff = 80300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
		},
		["Fighter Sweep"] = {
			["TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weapons = {
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, --  = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) solo BVR
				vCruise = 255.83333333333,
				vAttack = 315.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 100300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				--preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		--fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				--preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["IRAN-TF-Old-AIM-54A-MK60*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weapons = {
					["AIM-54A-MK60"] = 4,
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,
				},
				coalition = "red",
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 8, --8, --  = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) solo BVR
				vCruise = 255.83333333333,
				vAttack = 315.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 100300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 9,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				--preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		--fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				--preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["CAP-Escort AIM-54C-Mk47*4, AIM-7P*2, AIM-9M*1, ACMI Pod, Fuel *2"] = {
				attributes = {},
				weapons = {-- task dedicated weapons
					["AIM-54C-MK47"] = 4,
					["AIM-7P"] = 2,
					["AIM-9M"] = 1,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 8, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{AIM_54C_Mk47}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{SHOULDER AIM-7P}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - TCTS R}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				----preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		----fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				----preset TACAN channel
					["LGB1000"] = 1,
				},
			},
		},
		["Strike"] = {
			["CAS Guided boms, GBU-12, AIM-7M, AIM-9M*2, Lantirn, Fuel *2"] = { -- lantirn 1980 (sviluppo)  1987 (in servizio) NO
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["GBU-12"] = 1,		
					["AIM-7M"] = 1,
					["AIM-9M"] = 2,								
				},
				weaponType = "Guided bombs",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = false,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 6572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] =     {
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{BRU-32 GBU-12}",
						}, -- end of [4]
						[7] = 
						{
							["CLSID"] = "{BRU-32 GBU-12}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [10]
						[9] = 
						{
							["CLSID"] = "{F14-LANTIRN-TP}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				--preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		--fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				--preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["CAS Guided boms, GBU-24, AIM-7M, AIM-9M*2, Lantirn, Fuel *2"] = {
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["GBU-24"] = 1,		
					["AIM-7M"] = 1,
					["AIM-9M"] = 2,								
				},
				weaponType = "Guided bombs",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = false,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 6572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SHOULDER AIM-7M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{BRU-32 GBU-24}",
						}, -- end of [4]
						[8] = 
						{
							["CLSID"] = "{F14-300gal}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{F14-LANTIRN-TP}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				--preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		--fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				--preset TACAN channel
					["LGB1000"] = 1,
				}, -- lantirn 1980 (sviluppo)  1987 (in servizio) NO
			},			
			["Strike TF GBU-10*2, AIM-54C*2, AIM-9M*2, AIM-7M*1,Lantirn, FT*2"] = { 
				minscore = 0.3,
				role = "attacker",
				role_altitude = "normal",
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["GBU-10"] = 2,		
					["AIM-54C"] = 2,
					["AIM-9M"] = 2,								
				},
				weaponType = "Guided bombs",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = false,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 6572,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
						[9] = {
							["CLSID"] = "{F14-LANTIRN-TP}",
							["num"] = 9,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7M}",
							["num"] = 2,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[7] = {
							["CLSID"] = "{BRU-32 GBU-10}",
							["num"] = 7,
						},
						[4] = {
							["CLSID"] = "{BRU-32 GBU-10}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 5,
						},
					}, ----end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				--preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		--fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				--preset TACAN channel
					["LGB1000"] = 1,
				},
			},		
			["Strike AIM-9*2 AIM-7*2 FUEL*2 Mk 82*10 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.2,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 10,		
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,			
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 650000,
				capability = 5,
				firepower = 1, 
				vCruise = 140,
				vAttack = 140,
				hCruise = 100,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[7] = {
							["CLSID"] = "{MAK79_MK82 4}",
							["num"] = 7,
						},
						[4] = {
							["CLSID"] = "{MAK79_MK82 4}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{MAK79_MK82 3R}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{MAK79_MK82 3L}",
							["num"] = 5,
						},
					}, -- --end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
						["LGB100"] = 6,
						["M61BURST"] = 0,
						["IlsChannel"] = 11,				-- --preset ILS channel
						["LGB1"] = 8,
						["KY28Key"] = 1,
						["TacanBand"] = 0,
						["ALE39Loadout"] = 3,
						["UseLAU138"] = true,
						["LGB10"] = 8,
						["INSAlignmentStored"] = true,		-- --fast alignment, remember to modify also the value: "startup_time_player" in this file
						["TacanChannel"] = 37,				-- --preset TACAN channel
						["LGB1000"] = 1,
				},
			},
			["Strike AIM-9*2 AIM-7*2 AIM-54A*2 FUEL*2 Mk 84*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["Mk-84"] = 2,	
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,									
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 650000,
				capability = 5,
				firepower = 5,
				vCruise = 140,
				vAttack = 140,
				hCruise = 5000,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[7] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 7,
						},
						[4] = {
							["CLSID"] = "{AIM_54A_Mk60}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BRU-32 MK-84}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{BRU-32 MK-84}",
							["num"] = 5,
						},
					}, -- --end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
						["LGB100"] = 6,
						["M61BURST"] = 0,
						["IlsChannel"] = 11,				-- --preset ILS channel
						["LGB1"] = 8,
						["KY28Key"] = 1,
						["TacanBand"] = 0,
						["ALE39Loadout"] = 3,
						["UseLAU138"] = true,
						["LGB10"] = 8,
						["INSAlignmentStored"] = true,		-- --fast alignment, remember to modify also the value: "startup_time_player" in this file
						["TacanChannel"] = 37,				-- --preset TACAN channel
						["LGB1000"] = 1,
					},
			},
			["Strike AIM-9*2 AIM-7*2 Fuel*2 Mk 20 *4 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 2,		
					["AIM-7M"] = 2,
					["AIM-9M"] = 2,								
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 650000,
				capability = 5,
				firepower = 8,
				vCruise = 140,
				vAttack = 140,
				hCruise = 5000,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[10] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 10,
						},
						[1] = {
							["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							["num"] = 1,
						},
						[9] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 9,
						},
						[2] = {
							["CLSID"] = "{SHOULDER AIM-7MH}",
							["num"] = 2,
						},
						[8] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 8,
						},
						[3] = {
							["CLSID"] = "{F14-300gal}",
							["num"] = 3,
						},
						[7] = {
							["CLSID"] = "{BRU-32 MK-20}",
							["num"] = 7,
						},
						[4] = {
							["CLSID"] = "{BRU-32 MK-20}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{BRU-32 MK-20}",
							["num"] = 6,
						},
						[5] = {
							["CLSID"] = "{BRU-32 MK-20}",
							["num"] = 5,
						},
					}, -- --end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				-- --preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		-- --fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				-- --preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["CAS Cluster Bombs, Mk-20*2, AIM-54C, AIM-7M, AIM-9M*2, Lantirn, Fuel *2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 2,		
					["AIM-7M"] = 1,
					["AIM-54C-MK47"] = 1,
					["AIM-9M"] = 2,								
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 650000,
				capability = 5,
				firepower = 8,
				vCruise = 140,
				vAttack = 140,
				hCruise = 5000,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{SHOULDER AIM_54C_Mk47 L}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{F14-300gal}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{BRU-32 MK-20}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{BELLY AIM-7M}",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{BRU-32 MK-20}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{F14-300gal}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{F14-LANTIRN-TP}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{LAU-138 wtip - AIM-9M}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = 7348,
						["flare"] = 60,
						["ammo_type"] = 1,
						["chaff"] = 140,
						["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				-- --preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		-- --fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				-- --preset TACAN channel
					["LGB1000"] = 1,
				},
			},
			["CAS Rockets short range, Zuni*28 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Zuni-Mk71"] = 28,							
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 650000,
				capability = 5,
				firepower = 8,
				vCruise = 140,
				vAttack = 140,
				hCruise = 5000,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
						[9] = 
						{
							["CLSID"] = "{PHXBRU3242_2*LAU10 RS}",
						}, -- end of [9]
						[2] = 
						{
							["CLSID"] = "{PHXBRU3242_2*LAU10 LS}",
						}, -- end of [2]
						[7] = 
						{
							["CLSID"] = "{BRU3242_LAU10}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{BRU3242_2*LAU10 R}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 60,
					["ammo_type"] = 1,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = {
					["LGB100"] = 6,
					["M61BURST"] = 0,
					["IlsChannel"] = 11,				-- --preset ILS channel
					["LGB1"] = 8,
					["KY28Key"] = 1,
					["TacanBand"] = 0,
					["ALE39Loadout"] = 3,
					["UseLAU138"] = true,
					["LGB10"] = 8,
					["INSAlignmentStored"] = true,		-- --fast alignment, remember to modify also the value: "startup_time_player" in this file
					["TacanChannel"] = 37,				-- --preset TACAN channel
					["LGB1000"] = 1,
				},
			},
		},
	},

	["KC-135"] = { --1957 SI -> OK <-  
		["Refueling"] = {
			["Default"] = {
				role = "refueler",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {"KC135"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 140,
				vAttack = 217,
				hCruise = 7000,
				hAttack = 7000,
				standoff = nil,
				tStation = 21600,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
					}, ----end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},

	["KC135MPRS"] = { --1957 SI -> OK <-  
		["Refueling"] = {
			["Default"] = {
				role = "refueler",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {"KC135"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 200,
				vAttack = 217,
				hCruise = 7000,
				hAttack = 7000,
				standoff = nil,
				tStation = 21600,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
					}, ----end of ["pylons"]
					["fuel"] = 90700,
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},

	["AJS37"] = {-- 1971  SI  
		["Intercept"] = {
			["Intercept RB-05A*2 RB-74*2 FUEL"] = { -- verificare
				minscore = 0.0,				
				attributes = {},
				weapons = { -- task dedicated weapons
					["RB-05A"] = 2,	
					["RB-74"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{Robot05}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{Robot05}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
		},
		["Anti-ship Strike"] = {

			["Antiship - RB 15F*2(antiship) - RB-74J*2(aim9) - RB-24J*2(aim9) - FT"] = {--RB-15 dal 1985
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["RB-15F"] = 2,	
					["RB-74"] = 2,	
					["RB-24J"] = 2,								
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 7,
				vCruise = 250.83333333333,
				vAttack = 215.5,
				hCruise = 3500,
				hAttack = 1000,
				standoff = 35000,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[4] = {
							["CLSID"] = "{VIGGEN_X-TANK}",
							["num"] = 4,
						},
						[7] = {
							["CLSID"] = "{Robot24J}",
							["num"] = 7,
						},
						[1] = {
							["CLSID"] = "{Robot24J}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{Rb15}",
							["num"] = 6,
						},
						[2] = {
							["CLSID"] = "{Rb15}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{Robot74}",
							["num"] = 5,
						},
						[3] = {
							["CLSID"] = "{Robot74}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 36,
					["chaff"] = 105,
					["gun"] = 100,
				},
			},

			["Antiship RB-04R*2 RB-74*2, FUEL role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["RB-04E"] = 2,	
					["RB-74"] = 2,									
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = true,
				range = 500000,
				capability = 8,
				firepower = 8,
				vCruise = 240,
				vAttack = 216,
				hCruise = 200,
				hAttack = nil,
				standoff = nil, -- rb04 32km
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{Rb04}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{Rb04}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
			
			["Antiship RB-75T*4 FUEL role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 4,										
				},
				weapons_cost = 0,
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 6,
				firepower = 6,
				vCruise = 230,
				vAttack = 215,
				hCruise = 300,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["CAS - Bomb M/71*8 - ECM*2 - RB-24J*2 - FT role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["M/71"] = 8,	
					["RB-24J"] = 2,									
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = 2,
				vCruise = 200,
				vAttack = 140,
				hCruise = 2000,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
				["pylons"] = {
					[4] = {
						["CLSID"] = "{VIGGEN_X-TANK}",
						["num"] = 4,
					},
					[7] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 7,
					},
					[1] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 1,
					},
					[6] = {
						["CLSID"] = "{U22A}",
						["num"] = 6,
					},
					[2] = {
						["CLSID"] = "{KB}",
						["num"] = 2,
					},
					[5] = {
						["CLSID"] = "{M71BOMB}",
						["num"] = 5,
					},
					[3] = {
						["CLSID"] = "{M71BOMB}",
						["num"] = 3,
					},
				}, ----end of ["pylons"]
				["fuel"] = 4476,
				["flare"] = 36,
				["chaff"] = 105,
				["gun"] = 100,
				},
			},
			["CAS - Bomb M/71 chute*8 - ECM*2 - RB-24J*2 - FT role: ATTACKER @ NORMAL ALT"] = { -- , U25 ECM Pod
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["M/71"] = 8,	
					["RB-24J"] = 2,																		
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = true,
				range = 500000,
				capability = 8,
				firepower = 2,
				vCruise = 230, 
				vAttack = 140,
				hCruise = 4000,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 4,
				stores = {
				["pylons"] = {
					[4] = {
						["CLSID"] = "{VIGGEN_X-TANK}",
						["num"] = 4,
					},
					[7] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 7,
					},
					[1] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 1,
					},
					[6] = {
						["CLSID"] = "{U22A}",
						["num"] = 6,
					},
					[2] = {
						["CLSID"] = "{KB}",
						["num"] = 2,
					},
					[5] = {
						["CLSID"] = "{M71BOMBD}",
						["num"] = 5,
					},
					[3] = {
						["CLSID"] = "{M71BOMBD}",
						["num"] = 3,
					},
				}, ----end of ["pylons"]
				["fuel"] = 4476,
				["flare"] = 36,
				["chaff"] = 105,
				["gun"] = 100,
				},
			},
			["CAS Hard - RB-75T*2 - ECM*2 - RB-24J*2 - FT role: ATTACKER @ NORMAL ALT"] = { --RB_75T == AGM-65D Maverick Electro-Optical guide, U25 ECM Pod
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 2,	
					["RB-24J"] = 2,																		
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = nil, -- DC_Firepower calculation
				vCruise = 200, 
				vAttack = 250,
				hCruise = 5000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
				["pylons"] = {
					[4] = {
						["CLSID"] = "{VIGGEN_X-TANK}",
						["num"] = 4,
					},
					[7] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 7,
					},
					[1] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 1,
					},
					[6] = {
						["CLSID"] = "{U22A}",
						["num"] = 6,
					},
					[2] = {
						["CLSID"] = "{KB}",
						["num"] = 2,
					},
					[5] = {
						["CLSID"] = "{RB75T}",
						["num"] = 5,
					},
					[3] = {
						["CLSID"] = "{RB75T}",
						["num"] = 3,
					},
				}, ----end of ["pylons"]
				["fuel"] = 4476,
				["flare"] = 36,
				["chaff"] = 105,
				["gun"] = 100,
				},
			},
			--[[["CAS Cluster- BK90 (MJ1)*2 - ECM*2 - RB-24J*2 - XT"] = { -- 1990
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["BK-90MJ1"] = 2,	
					["RB-24J"] = 2,																		
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = true,
				range = 500000,
				capability = 8,
				firepower = 6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 1000,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
				["pylons"] = {
					[2] = {
						["CLSID"] = "{KB}",
						["num"] = 2,
					},
					[6] = {
						["CLSID"] = "{U22A}",
						["num"] = 6,
					},
					[4] = {
						["CLSID"] = "{VIGGEN_X-TANK}",
						["num"] = 4,
					},
					[5] = {
						["CLSID"] = "{BK90}",
						["num"] = 5,
					},
					[3] = {
						["CLSID"] = "{BK90}",
						["num"] = 3,
					},
					[7] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 7,
					},
					[1] = {
						["CLSID"] = "{Robot24J}",
						["num"] = 1,
					},
				}, ----end of ["pylons"]
				["fuel"] = 4476,
				["flare"] = 36,
				["chaff"] = 105,
				["gun"] = 100,
				},
			},]]
			["ASM hard RB-75T*4 TV Guided Rb-24 Fuel role: ATTACKER @ NORMAL ALT"] = {--RB_75T == AGM-65D Maverick Electro-Optical guide
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 4,		
					["RB-24J"] = 2,																	
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = nil, -- DC_Firepower calculation
				vCruise = 240,
				vAttack = 250,
				hCruise = 6000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{Robot24}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{RB75B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{RB75}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{RB75}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{RB75B}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{Robot24}",
						}, -- end of [7]
					},
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
			["ASM ECM U25pod KBpod RB-75T*2 FUEL role: ATTACKER @ NORMAL ALT"] = {--RB_75T == AGM-65D Maverick Electro-Optical guide, U25 ECM Pod
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 6000,
				hAttack = nil, -- DC_Firepower calculation -- 6000
				standoff = nil, -- DC_Firepower calculation -- 1000
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
						[2] = 
						{
							["CLSID"] = "{KB}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{U22}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
		},
		["SEAD"] = {		
			["ASM SEAD ECM U25pod KBpod RB-75T*2 FUEL role: SEAD ESCORT FOR BOMBER @ NORMAL ALT"] = {
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = nil, -- DC_Firepower calculation --6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation -- 6000
				standoff = nil, -- DC_Firepower calculation -- 1000
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
						[2] = 
						{
							["CLSID"] = "{KB}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{U22}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
			["ASM SEAD ECM U25pod KBpod RB-75T*2 FUEL role: SEAD ESCORT FOR ATTACKER @ NORMAL ALT"] = {
				role = "escort_sead_attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["RB-75T"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = nil, -- DC_Firepower calculation --6,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation -- 6000
				standoff = nil, -- DC_Firepower calculation -- 1000
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
						[2] = 
						{
							["CLSID"] = "{KB}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{RB75T}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{U22}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
		},
		["Escort Jammer"] = {
			["Antiship ECM Escort KB pod RB-04R*1RB-74*2, FUEL role: ATTACKER @ LOW ALT"] = {
				role = "escort_jammer_bomber",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["RB-04E"] = 1,		
					["RB-74"] = 2,								
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = 7,
				vCruise = 215,
				vAttack = 215,
				hCruise = 400,
				hAttack = nil,
				standoff = nil, --rb04 range: 32000 
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{Rb04}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{KB}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
			["ECM Escort KB pod RB-04R*1RB-74*2, FUEL role: ATTACKER @ NORMAL ALT"] = {
				role = "escort_jammer_attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["RB-04E"] = 1,		
					["RB-74"] = 2,								
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				avoid_EWR = false,
				range = 500000,
				capability = 8,
				firepower = 7,
				vCruise = 215,
				vAttack = 215,
				hCruise = 200,
				hAttack = nil,
				standoff = nil, --rb04 range: 32000 
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{Rb04}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{VIGGEN_X-TANK}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{Robot74}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{KB}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 4476,
					["flare"] = 72,
					["chaff"] = 210,
					["gun"] = 100,
				},
			},
		},
	},

	["B-52H"] = { --1955 SI -> OK <-  
		["Strike"] = {
			["Strike Mk-84*18 role: BOMBER @ HIGH ALT"] = {
				role = "bomber",
				role_altitude = "high",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge", "hard"},
				weapons = { -- task dedicated weapons
					["Mk-84"] = 18,															
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 30,
				vCruise = 140,
				vAttack = 130,
				hCruise = 8000,
				hAttack = 8000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}",
						}, --end of [1]
						[3] =
						{
							["CLSID"] = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}",
						}, --end of [3]
					}, ----end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
				},
			},
			["Strike Mk-20 Cluster Bombs role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 20, -- verificare															
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 30,
				vCruise = 130,
				vAttack = 130,
				hCruise = 8000,
				hAttack = 8000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{4CD2BB0F-5493-44EF-A927-9760350F7BA1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{4CD2BB0F-5493-44EF-A927-9760350F7BA1}",
						}, -- end of [3]
					}, ----end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
				},
			},
			--[[
			["Strike TF  AGM-86C*20"] = { --1986
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Base", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1.5,
				vCruise = 231.25,
				vAttack = 256.94444444444,
				hCruise = 8315.2,
				hAttack = 8315.2,
				standoff = 130000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{8DCAF3A3-7FCF-41B8-BB88-58DEDA878EDE}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{45447F82-01B5-4029-A572-9AAD28AF0275}",
							["num"] = 3,
						},
						[1] = {
							["CLSID"] = "{45447F82-01B5-4029-A572-9AAD28AF0275}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
					},
				},
				},
			]]
			--[[
			["Strike TF medium  AGM-86C*20"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Base", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1.5,
				vCruise = 231.25,
				vAttack = 256.94444444444,
				hCruise = 7315.2,
				hAttack = 7315.2,
				standoff = 130000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{8DCAF3A3-7FCF-41B8-BB88-58DEDA878EDE}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{45447F82-01B5-4029-A572-9AAD28AF0275}",
							["num"] = 3,
						},
						[1] = {
							["CLSID"] = "{45447F82-01B5-4029-A572-9AAD28AF0275}",
							["num"] = 1,
						},
					}, ----end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
			},
			]]
		},
	},

	["S-3B Tanker"] = { --1974 SI -> OK <-  
		["Refueling"] = {
			["Low Track"] = {	
				role = "refueler",
				role_altitude = "normal",
				coalition = "blue",			
				attributes = {"low"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 8,
				firepower = 1,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7000,
				hAttack = 7000,
				tStation = 10800,
				sortie_rate = 3,
				stores = {
					["pylons"] = {},
					["fuel"] = 7813,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["Medium Track"] = {
				role = "refueler",
				role_altitude = "normal",
				coalition = "blue",			
				attributes = {"medium"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 8,
				firepower = 1,
				vCruise = 200,
				vAttack = 150,
				hCruise = 10000,
				hAttack = 10000,
				tStation = 10800,
				sortie_rate = 3,
				stores = {
					["pylons"] = {},
					["fuel"] = 7813,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},

	["S-3B"] = { --1974 SI -> OK <-  

		["Anti-ship Strike"] = {

			["ANTISHIP AGM-84A*2  role: BOMBER @ NORMAL ALT"] = {--
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons						
					["AGM-84A"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",
				taskWeaponInfo = {
					[1] = {
						["name"] = "AGM-84A",
						["quantity"] = 2,
					},							
				},
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 8,
				firepower = 7, --getWeaponFirepower("blue", "Anti-ship Strike", "ship", {  [1] = { ["name"] = "AGM-84A",	["quantity"] = 2, }, }	), -- 7,
				vCruise = 4000,
				vAttack = 200,
				hCruise = 200,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}",
						}, -- end of [1]
						[6] = 
						{
							["CLSID"] = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},		

		["Strike"] = {

			["GA MK-84*2, MK-82*4 role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["Mk-84"] = 2,										
					["Mk-82"] = 4,										
				},
				weaponType = "Bombs",
				expend = "All",				
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 8, --getWeaponFirepower("blue", "Anti-ship Strike", "ship", {  [1] = { ["name"] = "Mk-84",	["quantity"] = 2, }, [2] = { ["name"] = "Mk-82",	["quantity"] = 4, },}	), --8,
				vCruise = 130,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
                        {
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["GA MK-82*10 role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons						
					["Mk-82"] = 10,										
				},
				weaponType = "Bombs",
				expend = "All",				
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 130,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["CAS Cluster MK-20*4 role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 4,										
				},
				weaponType = "Bombs",
				expend = "All",				
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 8,
				vCruise = 130,
				vAttack = 130,
				hCruise = 4000,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[5] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [5]
						[2] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [2]
						[4] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [4]
						[3] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [3]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["CAS Rockets Cluster Zuni-Mk71*9 MK-20*2 role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Zuni-Mk71"] = 9,										
					["Mk-20"] = 2,										
				},
				weaponType = "Bombs",
				expend = "All",
				taskWeaponInfo = {
					[1] = {
						["name"] = "Mk-20",
						["quantity"] = 2,
					},	
					[2] = {
						["name"] = "Zuni-Mk71",
						["quantity"] = 9,
					},												
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 130,
				vAttack = 130,
				hCruise = 1000,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["CAS AGM-65D-K*2 role: BOMBER @ NORMAL ALT"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"SAM", "armor"},
				weapons = { -- task dedicated weapons
					["AGM-65D"] = 2,										
					["AGM-65K"] = 2,										
				},
				weaponType = "ASM",
				expend = "Auto",				
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 6,
				firepower = 6,
				vCruise = 200,
				vAttack = 200,
				hCruise = 4000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{444BA8AE-82A7-4345-842E-76154EFCCA46}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},

		["SEAD"] = {

			["SEAD AGM-65D-K*2 role: SEAD ESCORT FOR BOMBER @ NORMAL ALT"] = {
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "Auto",
				weapons = { -- task dedicated weapons
					["AGM-65D"] = 2,										
					["AGM-65K"] = 2,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 4,
				firepower = 6,
				vCruise = 200,
				vAttack = 200,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{444BA8AE-82A7-4345-842E-76154EFCCA46}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["SEAD AGM-65D-K*2 SEAD ESCORT FOR ATTACKER @ NORMAL ALT"] = {
				role = "escort_sead_attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "Auto",
				weapons = { -- task dedicated weapons
					["AGM-65D"] = 2,										
					["AGM-65K"] = 2,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 4,
				firepower = 6,
				vCruise = 200,
				vAttack = 200,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{444BA8AE-82A7-4345-842E-76154EFCCA46}",
						}, -- end of [6]
					}, -- --end of ["pylons"]
					["fuel"] = 7000,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},

	["F-5E-3"] = {--1972 SI -> OK <-  
		["Strike"] = {
			["GTA CAS1/STRIKE Mk-82SE*4,AIM-9P*2,Fuel 2750 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 4, -- Mk-82 == Mk-82SE == Mk-82AIR	
					["AIM-9P"] = 2,																
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 360000,
				capability = 4,
				firepower = 1,
				vCruise = 130,
				vAttack = 130,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = {
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{Mk82SNAKEYE}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{Mk82SNAKEYE}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
							["num"] = 4,
						},
						[5] = {
							["CLSID"] = "{Mk82SNAKEYE}",
							["num"] = 5,
						},
						[6] = {
							["CLSID"] = "{Mk82SNAKEYE}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							["num"] = 7,
						}, -- --end of [7]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["GTA CAS2/STRIKE CBU-52B*4,AIM-9P*2,Fuel 2750 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["CBU-52B"] = 4,	
					["AIM-9P"] = 2,																
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = false,
				range = 360000,
				capability = 4,
				firepower = 8,
				vCruise = 130,
				vAttack = 130,
				hCruise = 500,
				hAttack = 500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] = {
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							["num"] = 1,
					},
						[4] = {
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
							["num"] = 4,
					},
						[7] = {
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							["num"] = 7,
					},
						[5] = {
							["CLSID"] = "{CBU-52B}",
							["num"] = 5,
					},
						[3] = {
							["CLSID"] = "{CBU-52B}",
							["num"] = 3,
					},
						[6] = {
							["CLSID"] = "{CBU-52B}",
							["num"] = 6,
					},
						[2] = {
							["CLSID"] = "{CBU-52B}",
							["num"] = 2,
						},
						}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["MR, Mk-82*4, AIM-9P*2, Fuel_275*1 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 4,	
					["AIM-9P"] = 2,																
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 4,
				firepower = 1,
				vCruise = 130,
				vAttack = 130,
				hCruise = 1500,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
						[5] =
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- --end of [5]
						[6] =
						{
							["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["SR, Mk-82*5, AIM-9P*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"soft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 5,			
					["AIM-9P"] = 2,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 330000,
				capability = 4,
				firepower = 1,
				vCruise = 130,
				vAttack = 130,
				hCruise = 1500,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{MER-5E_MK82x5}",
						}, -- --end of [4]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["OCA, Mk-83*2, AIM-9P*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["Mk-83"] = 2,	
					["AIM-9P"] = 2,																
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 1500,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[3] =
						{
							["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
						[5] =
						{
							["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
						}, -- --end of [5]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["Mk-84*1, AIM-9P*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["Mk-84"] = 1,			
					["AIM-9P"] = 2,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 1500,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- --end of [4]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["MR, CBU-52*4, AIM-9P*2, Fuel_275*1 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.2,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["CBU-52B"] = 4,
					["AIM-9P"] = 2,																	
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 4,
				firepower = 8,
				vCruise = 130,
				vAttack = 130,
				hCruise = 100,
				hAttack = 500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{CBU-52B}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{CBU-52B}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
						[5] =
						{
							["CLSID"] = "{CBU-52B}",
						}, -- --end of [5]
						[6] =
						{
							["CLSID"] = "{CBU-52B}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Intercept"] = {
			["Day, AIM-9P*2, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9P"] = 2,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 350000,
				capability = 2,
				firepower = 1,
				LDSD = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
					}, -- --end of ["pylons"]
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["Day, AIM-9P*2, Fuel_275*3"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9P"] = 2,										
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 270000,
				capability = 2,
				firepower = 1,
				vCruise = 216,
				vAttack = 250,
				hCruise = 17000,
				hAttack = 17000,
				standoff = 3600,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			}
		},
		["Escort"] = {
			["AIM-9P*2, Fuel_275*1 role: ESCORT ATTACKER @ NORMAL ALTITUDE"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9P"] = 2,										
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 2,
				firepower = 1,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7000,
				hAttack = 7000,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["AIM-9P*2, Fuel_275*1"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9P"] = 2,										
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 1,
				firepower = 1,
				vCruise = 216,
				vAttack = 216,
				hCruise = 19000,
				hAttack = 17000,
				standoff = 27000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [1]
						[7] =
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- --end of [7]
						[4] =
						{
							["CLSID"] = "{0395076D-2F77-4420-9D33-087A4398130B}",
						}, -- --end of [4]
					},
					["fuel"] = 2046,
					["flare"] = 15,
					["ammo_type"] = 1,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},	
    -- < --- REVISIONE hattack, hcruise, vattack, vcruise, standoff, sortie_rate 
	["Mirage-F1C"] = {--

		["Strike"] = {

			["MirageF1C_GA_8xSAMP400kg_2xR550 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["SAMP-400LD"] = 2, -- 	
					["R-550"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 400,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
                    	{
							[1] = 
							{
								["CLSID"] = "{R550_Magic_1}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "PTB-1200-F1",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{CLB4_SAMP400LD}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "PTB-1200-F1",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{R550_Magic_1}",
							}, -- end of [7]
						}, -- end of ["pylons"]
						["fuel"] = 3356,
						["flare"] = 0,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},
			["MirageF1C_GA_4x18xSNEB256_HE_DEFR_1xFuel role: LOW @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["SNEB-256"] = 72, -- 
					["R-550"] = 2, 														
				},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = false,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 300,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil, 
				LDSD = false,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT256}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT256}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT256}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT256}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			
			["MirageF1C_GA_4x18xSNEB253_HEAT_1xFuel role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["SNEB-253"] = 72, -- 
					["R-550"] = 2, 														
				},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 130000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 300,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{MATRA_F4_SNEBT253}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{MATRA_F4_SNEBT253}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{MATRA_F4_SNEBT253}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{MATRA_F4_SNEBT253}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["MirageF1C_GA_4xSAMP250kgHD_2xR550_2xFuel-1 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["SAMP-250HD"] = 2, -- 
					["R-550"] = 2, 														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 100,
				hAttack = 700, 
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{SAMP250HD}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{SAMP250HD}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{CLB4_SAMP250LD}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{SAMP250HD}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{SAMP250HD}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Intercept"] = {
			["MirageF1C_GI_2xR550_1xR530IR"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530IR"] = 1, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 7,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
						[4] = 
						{
							["CLSID"] = "{R530F_IR}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["MirageF1C_CAP_2xR550_2xR530EM_1xFuel"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},					
		},
		["Escort"] = {
			["MirageF1C_CAP_2xR550_2xR530EM_1xFuel ESCORT BOMBER @ NORMAL ALTITUDE"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 250,
				vAttack = 246.66666666667,
				hCruise = 7000,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},			
		},
		["Fighter Sweep"] = {
			["MirageF1C_CAP_2xR550_2xR530EM_1xFuel"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R530F_EM}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},			
		},
	},	

	["Mirage-F1EE"] = {--

		["Strike"] = {

			["CAS Bombs, SAMP-400*4, AIM-9P*2, Fuel*2 role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["SAMP-400LD"] = 4, -- 	
					["AIM-9P"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 400,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{CLB4_SAMP400LD}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3356,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["CAS Rockets, Matra-F1*4 (144 Matra Rockets), R550-Magic, Fuel role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["SNEB-253"] = 144, -- 	
					["R-550"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 400,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT253}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT253}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT253}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{MATRA_F1_SNEBT253}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},	
			["CAS Anti-Runway Bombs, SAMP-400Chute*4, AIM-9P*2, Fuel*2, Fuel role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["SAMP-400LD"] = 2, -- 	
					["R-550"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 360000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 400,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{CLB4_SAMP400HD}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},		
		},
		["Intercept"] = {
			["Intercept, S-530F-IR*2, R-550-Magic IR*2, Fuel"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530IR"] = 1, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 7,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{R550_Magic_1}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "{R530F_IR}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "PTB-1200-F1",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{R530F_IR}",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{R550_Magic_1}",
							}, -- end of [7]
						}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["CAP-Escort, S-530F*2, R-550-Magic IR*2, ECM, Fuel"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "BARAX_ECM",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},					
		},
		["Escort"] = {
			["CAP-Escort, S-530F*2, R-550-Magic IR*2, ECM, Fuel"] = {
				attributes = {},
				role = "escort_attacker",
				role_altitude = "normal",
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "BARAX_ECM",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},			
		},
		["Fighter Sweep"] = {
			["CAP-Escort, S-530F*2, R-550-Magic IR*2, ECM, Fuel"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons
					["R-550"] = 2, -- 														
					["R-530EM"] = 2, -- 
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 270000,
				capability = 5,
				firepower = 2,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 36000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "PTB-1200-F1",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{S530F}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "BARAX_ECM",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{R550_Magic_1}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = 3246,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},		
		},
	},	

	["F-4E"] = {--1960 SI -> OK <-  
		["Intercept"] = {
			["GTA AIR/AIR AIM-9*4,AIM-7*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 400000,
				capability = 6,
				firepower = 5,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- --self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 8,
						},
					},
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["AIM-7E*4, AIM-9P*4, Fuel*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				day = true,
				night = true,
				adverseWeather = true,
				range = 350000,
				capability = 6,
				firepower = 5,
				LDSD = false,
				sortie_rate = 12,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{AIM-7E}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{AIM-7E}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{AIM-7E}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{AIM-7E}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["AIM-9P*4, AIM-7M*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9P"] = 4, --  verifica probabile 2														
					["AIM-7M"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 6,
				firepower = 7,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["GTA AIR/AIR AIM-9*4,AIM-7*4"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 6,
				firepower = 5,
				vCruise = 260,
				-- vAttack = 265.83333333333,
				hCruise = 9000,
				-- hAttack = 9753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 8,
						},
					},
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Day, AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 360000,
				capability = 6,
				firepower = 5,
				vCruise = 250,
				vAttack = 270,
				hCruise =  6000,
				hAttack = 6096,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Night, AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 6,
				firepower = 5,
				vCruise = 260,
				vAttack = 270,
				hCruise = 7000,
				hAttack = 6096,
				standoff = 28000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["GTA AIR/AIR AIM-9*4,AIM-7*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 6,
				firepower = 5,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 2753.6,
				hAttack = 2753.6,
				standoff = 46300,
				tStation = nil,
				LDSD = true,
				--self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 8,
						},
					},
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 360000,
				capability = 6,
				firepower = 5,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 37000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["GTA AIR/AIR Medium AIM-9*4,AIM-7*4"] = {
				attributes = {"medium"},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 450000,
				capability = 6,
				firepower = 5,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 4000,
				hAttack = 4000,
				standoff = 36000,
				tStation = 1800,
				LDSD = true,
				--self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 8,
						},
					},
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GTA AIR/AIR Low AIM-9*4,AIM-7*4"] = {
				attributes = {"low"},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 450000,
				capability = 6,
				firepower = 5,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 2000,
				hAttack = 2000,
				standoff = 36000,
				tStation = 1800,
				LDSD = true,
				--self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[7] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}",
							["num"] = 8,
						},
					},
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAP, AIM-9P*4, AIM-7M*4, Fuel*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["AIM-9B"] = 4, -- 														
					["AIM-7E"] = 4, -- 
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 200000,
				capability = 6,
				firepower = 5,
				vCruise = 215.83333333333,
				vAttack = 246.66666666667,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 55500,
				tStation = 7200,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["GTA CAS1 AGM-65K*4,AIM-7*2,Fuel*2,ECM role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.2,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"armor", "SAM"},
				weapons = { -- task dedicated weapons										
					["AGM-65K"] = 4,	
					["AIM-7E"] = 2, -- 									
				},
				weaponType = "ASM",
				expend = "Auto",				
				adverseWeather = true,
				range = 500000,
				capability = 6,
				firepower = 12,
				day = true,
				night = false,
				vCruise = 200,
				vAttack = 277,
				hCruise = 6000,
				hAttack = nil, -- DC_Firepower calculation --2572,
				standoff = nil, -- DC_Firepower calculation --6000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB28}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[8] = {
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB27}",
							["num"] = 8,
						},
						[9] = {
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
							["num"] = 9,
						},
						}, -- --end of ["pylons"]
							["fuel"] = "4864",
							["flare"] = 30,
							["chaff"] = 60,
							["gun"] = 100,
						},
			},
			["GTA strike Mk-82*6,AIM-7*2,Fuel*2,ECM role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"SAM", "soft", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 6,	
					["AIM-7E"] = 2, -- 														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 6,
				firepower = 2,				
				vCruise = 200,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = {
						["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[8] = {
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
							["num"] = 8,
						},
						[9] = {
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
							["num"] = 9,
						},
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GTA CAS2 Mk20*6,AIM-7*2,Fuel*2,ECM role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["Mk-20"] = 6,	
					["AIM-7E"] = 2, -- 														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 6,
				firepower = 12,
				vCruise = 200,
				vAttack = 130,
				hCruise = 700,
				hAttack = 700,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				--self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							["num"] = 6,
						},
						[8] = {
							["CLSID"] = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}",
							["num"] = 8,
						},
						[9] = {
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
							["num"] = 9,
						},
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Mk-82*6, AIM-7M*3, ECM*1, Fuel*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 6,	
					["AIM-7M"] = 3,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 6,
				firepower = 2,
				vCruise = 200,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Mk-82*12, AIM-7M*3, ECM*1, Fuel*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 12,	
					["AIM-7M"] = 3, -- 														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 6,
				firepower = 3,
				vCruise = 200,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Mk-84*2 AIM-7*2 ECM role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"hard", "Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["Mk-84"] = 2,	
					["AIM-7E"] = 2,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 6,
				firepower = 6,
				vCruise = 200,
				vAttack = 130,
				hCruise = 2000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [4]
						[6] = 
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- end of [6]
						[9] = 
						{
							["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
						}, -- end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GBU-10*2, AIM-7M*3, ECM*1, Fuel*2 role: ATTACKER @ NORMAL ALT"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,	
					["Laser Illumination"] = true,				
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons
					["GBU-10"] = 2,	
					["AIM-7M"] = 3,														
				},
				weaponType = "Guided bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 6,
				firepower = 5,
				vCruise = 200,
				vAttack = 130,
				hCruise = 4500,
				hAttack = 4572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},			
			["ASN AGM-65D*4 AIM-7E ECM Fuel role: ATTACKER @ LOW ALT"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons
					["AGM-65D"] = 4,	
					["AIM-7E"] = 2,													
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 360000,
				capability = 6,
				firepower = 12,
				vCruise = 200,
				vAttack = 200,
				hCruise = 100,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB28}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{D7670BC7-881B-4094-906C-73879CF7EB27}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},			
		},
		["SEAD"] = {
			["AGM-45*2, AIM-7M*3, ECM*1, Fuel*2 role: SEAD ESCORT FOR BOMBER @ NORMAL ALT"] = { -- verifica sono gli stessi si differenziano solo per day, night puoi lasciarne solo l'ultimo con  day e night true
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["AGM-45"] = 2,	
					["AIM-7M"] = 3,														
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 10,
				firepower = 5,
				vCruise = 250,
				vAttack = 270,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation2, 4096,
				standoff = nil, -- DC_Firepower calculation, 13000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] =
					{
						[1] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [1]
						[2] =
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- --end of [2]
						[3] =
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- --end of [3]
						[4] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [4]
						[6] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [6]
						[7] =
						{
							["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
						}, -- --end of [7]
						[8] =
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- --end of [8]
						[9] =
						{
							["CLSID"] = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
						}, -- --end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},			
			["ASM SEAD AGM-45*4 AIM-7E EMC Fuel SEAD ESCORT FOR ATTACKER @ NORMAL ALT"] = {
				role = "escort_sead_attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.3,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["AGM-45"] = 4,		
					["AIM-7E"] = 2,													
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 10,
				firepower = 12,
				vCruise = 250,
				vAttack = 270,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation, 4096,
				standoff = nil, -- DC_Firepower calculation, 13000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{AGM_45A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM-7E}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM-7E}",
						}, -- end of [6]
						[8] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AGM_45A}",
						}, -- end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["ASM SEAD AGM-45*4 AIM-7E EMC Fuel role: SEAD ESCORT FOR ATTACKER @ LOW ALT"] = {
				role = "escort_sead_attacker",
				role_altitude = "low",
				coalition = "blue",
				minscore = 0.3,
				attributes = {"SAM"},
				weapons = { -- task dedicated weapons
					["AGM-45"] = 4,		
					["AIM-7E"] = 2,													
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 360000,
				capability = 10,
				firepower = 12,
				vCruise = 250,
				vAttack = 270,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation, 4096,
				standoff = nil, -- DC_Firepower calculation, 13000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] =
					{
						[1] = 
						{
							["CLSID"] = "{AGM_45A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{AIM-7E}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{AIM-7E}",
						}, -- end of [6]
						[8] = 
						{
							["CLSID"] = "{3E6B632D-65EB-44D2-9501-1C2D04515405}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{AGM_45A}",
						}, -- end of [9]
					}, -- --end of ["pylons"]
					["fuel"] = "4864",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},

	["C-130"] = {--1957 SI -> OK <-  
		["Transport"] = {
			["Default"] = {
				role = "transporter",
				role_altitude = "normal",
				coalition = "blue",
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 154.16666666667,
				vAttack = 154.16666666667,
				hCruise = 2572,
				hAttack = 2572,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
					}, -- --end of ["pylons"]
					["fuel"] = "20830",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},

	["C-101CC"] = {--

		["Strike"] = {

			["CAS Cluster Bombs, Belouga*2, AIM-9M, Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["BLG66"] = 2, -- 	
					["AIM-9M"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = true,
				avoid_EWR = true,
				range = 250000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 400,
				hAttack = 400,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{BLG66_BELOUGA}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "BIN_200",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{AN-M3}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "BIN_200",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{BLG66_BELOUGA}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [7]
						}, -- end of ["pylons"]
					["fuel"] = 1508.64,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},

			["CAS Rockets-Bombs, Mk-82*2, Lau-68*2(14 Hydra Rockets"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "SAM"},
				weapons = { -- task dedicated weapons
					["Hydra-70MK1"] = 14, -- 	
					["AIM-9M"] = 2, 
					["Mk-82"] = 2, 												
				},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = false,
				range = 260000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 300,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil, 
				LDSD = false,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{C-101-DEFA553}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [7]
						}, -- end of ["pylons"]
					["fuel"] = 1508.64,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			
			["CAS Bombs, Br-25*2, Mk-82*2, AIM-9P*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft"},
				weapons = { -- task dedicated weapons
					["Mk-82"] = 2, -- 	
					["AIM-9P"] = 2, 												
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 250000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 300,
				hAttack = 490, 
				standoff = nil, 
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "BR_250",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{C-101-DEFA553}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "BR_250",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							}, -- end of [7]
						}, -- end of ["pylons"]
						["fuel"] = 1508.64,
						["flare"] = 0,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},

			["CAS Cluster Bombs, Belouga*2, AIM-9P*2, DEFA 553 Cannon  95% Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weapons = { -- task dedicated weapons
					["BLG66"] = 2, -- 	
					["AIM-9P"] = 2, 													
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				avoid_EWR = true,
				range = 250000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 300,
				hAttack = 400, 
				standoff = nil, 
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "{BLG66_BELOUGA}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{C-101-DEFA553}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{BLG66_BELOUGA}",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
							}, -- end of [7]
						}, -- end of ["pylons"]
					["fuel"] = 1706,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},

		["Anti-ship Strike"] = {

			["Anti-ship Strike, Sea Eagle*2, AIM-9P*2, DEFA-553 Cannon, 84% fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "blue",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons
					["Sea Eagle"] = 2, -- 	
					["AIM-9P"] = 2, 													
				},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 250000,
				capability = 4,
				firepower = 3,
				vCruise = 200,
				vAttack = 200,
				hCruise = 100,
				hAttack = 700, 
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{1461CD18-429A-42A9-A21F-4C621ECD4573}",
							}, -- end of [2]
							[4] = 
							{
								["CLSID"] = "{C-101-DEFA553}",
							}, -- end of [4]
							[6] = 
							{
								["CLSID"] = "{1461CD18-429A-42A9-A21F-4C621ECD4573}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
							}, -- end of [7]
						}, -- end of ["pylons"]
						["fuel"] = 1508.64,
						["flare"] = 0,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},		
		},
	},	

	["UH-1H"] = {-- 1956 SI -> OK <-  
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 1,
				vCruise = 40,
				vAttack = 40,
				hCruise = 500,
				hAttack = 500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] =
					{
					}, -- --end of ["pylons"]
					["fuel"] = "631",
					["flare"] = 60,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["Rockets Hydra-70MK5*14 Minigun"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "armor", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK5"] = 14,	-- 2xM158 see pylons									
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 15,
				firepower = 3,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "M134_L",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "XM158_MK5",
					}, -- end of [2]
					[5] = 
					{
						["CLSID"] = "XM158_MK5",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "M134_R",
					}, -- end of [6]
				}, -- --end of ["pylons"]
                ["fuel"] = "631",
				["flare"] = 60,
				["chaff"] = 0,
				["gun"] = 100,
				},
			},
		},
	},

	["AH-1W"] = {-- 1973 SI -> OK <-  
		["Strike"] = {
			["Rockets Hard Hydra-70MK5*28"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK5"] = 28,	-- 4xM260(7 rockets/launcher) see pylons									
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [4]
				}, -- --end of ["pylons"]
                ["fuel"] = 1163,
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
				},
			},
			["BGM-71*8 HYDRA-70*38 40perc Fuel"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK1"] = 38,	-- 4xM260(7 rockets/launcher) see pylons									
					["BGM-71"] = 8,
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 32000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] =  {
					[1] = 
					{
						["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
					}, -- end of [4]
				}, -- end of ["pylons"]
                ["fuel"] = 1163,
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
				},
			},
			["BGM-71*8 HYDRA-70*14 fuel 70perc"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK1"] = 14,	-- 4xM260(7 rockets/launcher) see pylons									
					["BGM-71"] = 8,
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 56000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "M260_HYDRA",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "M260_HYDRA",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 1163,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["HYDRA-70*76 fuel 44 perc"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK1"] = 76,	-- 4xM260(7 rockets/launcher) see pylons									
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 35000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =  {
						[1] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 1163,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["HYDRA-70*38 fuel 82perc"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK1"] = 38,	-- 4xM260(7 rockets/launcher) see pylons									
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 64000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =  {
						[1] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 1163,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["ASM BGM-71D * 8"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["BGM-71D"] = 8,	-- 4xM260(7 rockets/launcher) see pylons									
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 10,
				firepower = 5,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
					}, -- end of [1]
					[4] = 
					{
						["CLSID"] = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
					}, -- end of [4]
				}, -- --end of ["pylons"]
                ["fuel"] = 1125,
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},			
			["ASM AGM-114*8"] = {--1982
				minscore = 0.3,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["AGM-114"] = 8,	-- 4xM260(7 rockets/launcher) see pylons									
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 6,
				firepower = 8,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
					}, -- end of [1]
					[4] = 
					{
						["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
					}, -- end of [4]
				}, -- --end of ["pylons"]
                ["fuel"] = 1250,
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
				},
			},
			["AGM-114*8 HYDRA-70*14 fuel 72perc"] = {--1982
				minscore = 0.3,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["AGM-114"] = 8,	-- 4xM260(7 rockets/launcher) see pylons					
					["Hydra-70MK1"] = 14,					
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 6,
				firepower = 8,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = 
					{
						["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "M260_HYDRA",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
					}, -- end of [4]
				}, -- end of ["pylons"]
                ["fuel"] = 1250,
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
				},
			},
			["AGM-114*8 HYDRA-70*38 fuel 45 perc"] = {--1982
				minscore = 0.3,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["AGM-114"] = 8,	-- 4xM260(7 rockets/launcher) see pylons					
					["Hydra-70MK1"] = 38,					
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 6,
				firepower = 8,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] =  {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 563,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				}, -- end of ["payload"]
                ["fuel"] = 1250,
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
				},
			},
		},
	},

	["SH-60B"] = {--1984 SI -> OK <-  
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 100000,
				capability = 1,
				firepower = 1,
				vCruise = 40,
				vAttack = 40,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] = {}, --end of [1]
					}, ----end of ["pylons"]
					["fuel"] = "1100",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["ASW Patrol"] = {
				attributes = {"Seahawk"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 100000,
				capability = 0,
				firepower = 1,
				vCruise = 59.7222,
				vAttack = 40.2778,
				hCruise = 304.8,
				hAttack = 91.44,
				tStation = 7200,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] = {}, --end of [1]
					}, ----end of ["pylons"]
					["fuel"] = "1100",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},

	["OH-58D"] = {-- 1973 SI -> OK <-  
		
		["Strike"] = {
			
			["CAS ASM AGM-114*4"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["AGM-114"] = 4,									
				},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 6,
				firepower = 8,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "AGM114x2_OH_58",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "AGM114x2_OH_58",
							}, -- end of [2]
						}, -- end of ["pylons"]
					["fuel"] = 445,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},

			["CAS Rockets, Hydra-70*14"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons										
					["Hydra-70MK1"] = 14, -- 										
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 6,
				firepower = 8,
				vCruise = 55,
				vAttack = 55,
				hCruise = 50,
				hAttack = 50,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "M260_HYDRA_WP",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "M260_HYDRA_WP",
							}, -- end of [2]
						}, -- end of ["pylons"]
					["fuel"] = "454",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},

	["CH-47D"] = { --1979 SI -> OK <- 
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 40,
				vAttack = 40,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "3600",
					["flare"] = 120,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},

	


    -- URSS
	-- F-14A Iran SI
	-- Mig-29 1983 SI
	-- Su-27 1984 SI
	-- Su-33 1987 NO
	-- Su-25 1981 SI
	-- Su-25T 1991 NO
	-- Mig-31 1982 SI
	-- Ka-50 1995 NO
	-- Tu-142 1980 NO (ha solo il Kh-35 Antiship del 2003)
	-- Tu-160 1993 NO
	-- Mi-26 1983 SI

	-- Kh-31P Krypton 1988 NO (antiradar)
	-- Kh-31A Krypton 1988 SI (antinave)
	-- Kh-35 2003(?) NO
	-- Kh-65 NO
	-- Kh-55 1983 SI
	-- Kh-58 1978 SI
	-- Kh-59 1991 NO

	["F-14A"] = { -- -> OK <-    anche IRAN

		["Intercept"] = {
			
			["Interceptor - AIM-54C*4 , AIM-7M*2, AIM-9M*2"] = {
				attributes = {},
				coalition = "red",
				weapons = {-- task dedicated weapons
					["AIM-54C-MK47"] = 4,
					["AIM-7M"] = 2, --cambia in F se possibile
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 300000,
				capability = 7,
				firepower = 1, --8, -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) + evaluate_weapon_firepower(weapon = "AIM-9M", quantity = 2)
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [2]
							[4] = 
							{
								["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
							}, -- end of [5]
							[8] = 
							{
								["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
							}, -- end of [8]
							[11] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [11]
							[9] = 
							{
								["CLSID"] = "{7575BA0B-7294-4844-857B-031A144B2595}",
							}, -- end of [9]
							[12] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		
		["CAP"] = {
			
			["CAP - AIM-7M*4, AIM-9M*2, Fuel*2"] = {
				attributes = {},
				coalition = "red",
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-7M"] = 4,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 1, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [3]
							[6] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [7]
							[11] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [10]
							[12] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		
		["Escort"] = {
			
			["CAP - AIM-7M*4, AIM-9M*2, Fuel*2"] = {
				attributes = {},
				coalition = "red",
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-7M"] = 4,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 1, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [3]
							[6] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [7]
							[11] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [10]
							[12] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			
		},
		
		["Fighter Sweep"] = {
			
			["CAP - AIM-7M*4, AIM-9M*2, Fuel*2"] = {
				attributes = {},
				coalition = "red",
				role = "escort_bomber",
				role_altitude = "normal",
				weapons = {-- task dedicated weapons
					["AIM-7M"] = 4,
					["AIM-9M"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 7,
				firepower = 1, --8,  -- = evaluate_weapon_firepower(weapon = "AIM-54A-MK60", quantity = 4) + evaluate_weapon_firepower(weapon = "AIM-7M", quantity = 2) -- solo BVR(?)
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 10000,
				hAttack = 10000,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 2,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [3]
							[6] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [7]
							[11] = 
							{
								["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
							}, -- end of [11]
							[10] = 
							{
								["CLSID"] = "{82364E69-5564-4043-A866-E13032926C3E}",
							}, -- end of [10]
							[12] = 
							{
								["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
							}, -- end of [12]
						}, -- end of ["pylons"]
					["fuel"] = 7348,
					["flare"] = 15,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},

	["SA342M"] = { -- 1973 Syria -> OK <-  
		["Strike"] = {
			["Strike Hot3x4, IR Deflector"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"armor", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				weapons = { -- task dedicated weapons											
					["Hot-3"] = 4, --rockets hard target											
				},
				expend = "Auto",
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 80000,
				capability = 3,
				firepower = 1,
				vCruise = 40,
				vAttack = 55,
				hCruise = 200,
				hAttack = 100,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				-- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{HOT3D}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{HOT3G}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{HOT3D}",
							["num"] = 3,
						},
						[4] = {
							["CLSID"] = "{HOT3G}",
							["num"] = 4,
						},
						[6] = {
							["CLSID"] = "{IR_Deflector}",
							["num"] = 6,
						},
				}, -- end of ["pylons"]
                ["fuel"] = 275,
                ["flare"] = 32,
                ["chaff"] = 0,
                ["gun"] = 100,
				},
			},			
		},
	},

	["SA342Minigun"] = { -- 1973 Syria -> OK <-  
		["Strike"] = {			
			["SA342Minigun"] = {
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "Parked Aircraft"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons											
					["UPK-23"] = 2, --cannon soft target											
				},
				expend = "Auto",
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 80000,
				capability = 1,
				firepower = 1,
				vCruise = 40,
				vAttack = 55,
				hCruise = 200,
				hAttack = 100,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				-- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
							[6] = 
							{
								["CLSID"] = "{IR_Deflector}",
							}, -- end of [6]
							[5] = 
							{
								["CLSID"] = "{FAS}",
							}, -- end of [5]
					}, -- end of ["pylons"]
					["fuel"] = 416.33,
					["flare"] = 32,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},			
		},
	},

	["SA342Mistral"] = { -- 1973 Syria -> OK <-  
		["Strike"] = {			
			["CAS Rockets Mistral *4"] = {
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				weapons = { -- task dedicated weapons											
					["Mistral"] = 2, --cannon soft target											
				},
				expend = "Auto",
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 80000,
				capability = 1,
				firepower = 1,
				vCruise = 40,
				vAttack = 55,
				hCruise = 200,
				hAttack = 100,
				standoff = 4000,
				tStation = nil,
				LDSD = false,
				-- self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
							[6] = 
							{
								["CLSID"] = "{IR_Deflector}",
							}, -- end of [6]
							[5] = 
							{
								["CLSID"] = "{FAS}",
							}, -- end of [5]
					}, -- end of ["pylons"]
					["fuel"] = 416.33,
					["flare"] = 32,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},

	["MiG-31"] = { -- 1982 -> OK <-  
		["Intercept"] = {
			["Intercept High R-40R *2, R-33*4"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-33"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "15500",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["Intercept High R-40T *2, R-33*4"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-40T"] = 2,
					["R-33"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
				stores = {
					
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "15500",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["Intercept Normal R-33 *4, R-60*4"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-60"] = 4,
					["R-33"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
				stores = {
					
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "15500",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},	
		["Fighter Sweep"] = {
			["Intercept High R-40R *2, R-33*4"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-33"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 315.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 27000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "15500",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},		
		["CAP"] = {
			["Intercept Normal R-33 *4, R-60*4"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-60"] = 4,
					["R-33"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
				stores = {
					
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "15500",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},	

	["MiG-29A"] = { --1983 -> OK <-
		["Intercept"] = {
			["R-27R*2, R-60M*4, Fuel*1"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 2,
					["R-60M"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 1,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = "3380",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["Intercept R-73*2 R-60*2 R-27R*2 Fuel 1500"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-73"] = 2,
					["R-27R"] = 2,
					["R-60"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 1,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = "3376",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["R-27R*2, R-60M*4, Fuel*1"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 2,
					["R-60M"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 700000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				-- vAttack = 265.83333333333,
				-- hCruise = 7011,
				-- hAttack = 7011,
				standoff = 27000,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},
			["CAP R-73*2 R-60*2 R-27R*2 Fuel 1500"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-73"] = 2,
					["R-27R"] = 2,
					["R-60"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = "3376",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["R-27R*2, R-60M*4, Fuel*1"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 2,
					["R-60M"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},
			["CAP R-73*2 R-60*2 R-27R*2 Fuel 1500"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-73"] = 2,
					["R-27R"] = 2,
					["R-60"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = "3376",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["R-27R*2, R-60M*4, Fuel*1"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 2,
					["R-60M"] = 4,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 1,
				firepower = 1,
				vCruise = 255.83333333333,
				vAttack = 265.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = nil,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 10,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [2]
					[3] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [3]
					[4] = 
					{
						["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					}, -- end of [4]
					[5] = 
					{
						["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
					}, -- end of [5]
					[6] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [6]
					[7] = 
					{
						["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
					}, -- end of [7]
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},
			["CAP R-73*2 R-60*2 R-27R*2 Fuel 1500"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-73"] = 2,
					["R-27R"] = 2,
					["R-60"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 215.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 27000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
					}, -- end of ["pylons"]
					["fuel"] = "3376",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},	
		},		
	},	

	["Su-27"] = { -- 1984 -> OK <-
		["Intercept"] = {
			["Intercept Normal R-73*2 R-27ER*4 R-27ET*2"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27ER"] = 4,
					["R-27ET"] = 2,
					["R-73"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 1,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- --- self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = 5590.18,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},	
		},	
		["Fighter Sweep"] = {
			["CAP Normal R-73*2 R-27R*4 R-27T*2"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 4,
					["R-27T"] = 2,
					["R-73"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  5,
				firepower = 1,
				vCruise = 222.222,
				vAttack = 250.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 27000,
				tStation = 3700,
				LDSD = false,
				--- self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = 5590.18,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			--[[["R-40R*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 255.222,
				vAttack = 265.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 45000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = true,
				sortie_rate = 2,
				stores = {
				["pylons"] = {
					[1] = {
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
						["num"] = 1,
					},
					[2] = {
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 2,
					},
					[3] = {
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						["num"] = 3,
					},
					[4] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 4,
					},
					[5] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 5,
					},
					[6] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 6,
					},
					[7] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 7,
					},
					[8] = {
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						["num"] = 8,
					},
					[9] = {
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 9,
					},
					[10] = {
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
						["num"] = 10,
					},
				},
				["fuel"] = 9400,
				["flare"] = 96,
				["ammo_type"] = 1,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},]]
		},
		["Escort"] = {
			["CAP Normal R-73*2 R-27E*4 R-27E*2"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 4,
					["R-27T"] = 2,
					["R-73"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  5,
				firepower = 1,
				vCruise = 222.222,
				vAttack = 250.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 45000,
				tStation = 3700,
				LDSD = false,
				--- self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = 5590.18,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			--[[["R-40R*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 255.222,
				-- vAttack = 265.555,
				-- hCruise = 7500,
				-- hAttack = 5500,
				standoff = 45000,
				tStation = 2700,
				LDSD = true,
				--- self_escort = false,
				sortie_rate = 2,
				stores = {
				["pylons"] = {
					[1] = {
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
						["num"] = 1,
					},
					[2] = {
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 2,
					},
					[3] = {
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						["num"] = 3,
					},
					[4] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 4,
					},
					[5] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 5,
					},
					[6] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 6,
					},
					[7] = {
						["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						["num"] = 7,
					},
					[8] = {
						["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						["num"] = 8,
					},
					[9] = {
						["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 9,
					},
					[10] = {
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
						["num"] = 10,
					},
				},
				["fuel"] = 9400,
				["flare"] = 96,
				["ammo_type"] = 1,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},]]
		},		
		["CAP"] = {
			["CAP High R-73*2 R-27ER*4 R-27ET*2 ECM"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27ER"] = 4,
					["R-27ET"] = 2,
					["R-73"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  5,
				firepower = 1,
				vCruise = 222.222,
				vAttack = 250.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 45000,
				tStation = 3700,
				LDSD = false,
				--- self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = 5590.18,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			["CAP Normal R-73*2 R-27E*4 R-27E*2"] = {
				attributes = {},
				weaponType = nil,
				weapons = { -- task dedicated weapons				
					["R-27R"] = 4,
					["R-27T"] = 2,
					["R-73"] = 2,
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  5,
				firepower = 1,
				vCruise = 222.222,
				vAttack = 250.555,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 45000,
				tStation = 3700,
				LDSD = false,
				--- self_escort = true,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{88DAC840-9F75-4531-8689-B46E64E42E53}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = 5590.18,
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			--[[
			["R-40R*4"] = {
			attributes = {},
			weaponType = nil,
			expend = nil,
			day = true,
			night = true,
			adverseWeather = true,
			range = 600000,
			capability =  5,
			firepower = 1,
			vCruise = 222.222,
			vAttack = 250.555,
			hCruise = 7500,
			hAttack = 5500,
			standoff = 45000,
			tStation = 3700,
			LDSD = false,
			--- self_escort = true,
			sortie_rate = 3,
			stores = {
			["pylons"] = {
				[1] = {
					["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 7,
				},
				[8] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 8,
				},
				[9] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 9,
				},
				[10] = {
					["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
					["num"] = 10,
				},
			},
			["fuel"] = 9400,
			["flare"] = 96,
			["ammo_type"] = 1,
			["chaff"] = 96,
			["gun"] = 100,
			},
			},
			]]
		},
		
	},

	["Su-25"] = { --1981 -> OK <-
		["SEAD"] = {
			["ARM, Fuel*2, ECM"] = {
				attributes = {},
				weaponType = "ASM",
				weapons = { -- task dedicated weapons						
					["Kh-58"] = 2,	--?? or Kh-25MPU or Kh-25M??????
					["R-60"] = 4,																		
				},
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 10,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 2,
				stores = {
				["pylons"] = 
				{
					[1] = 
					{
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
						["num"] = 1,
					},
					[2] = 
					{
						["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 2,
					},
					[3] = 
					{
						["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						["num"] = 3,
					},
					[4] = 
					{
						["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						["num"] = 4,
					},
					[5] = 
					{
						["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						["num"] = 5,
					},
					[6] = 
					{
						["CLSID"] = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",
						["num"] = 6,
					},
					[7] = 
					{
						["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						["num"] = 7,
					},
					[8] = 
					{
						["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						["num"] = 8,
					},
					[9] = 
					{
						["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						["num"] = 9,
					},
					[10] = 
					{
						["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
						["num"] = 10,
					},
					[11] = 
					{
						["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82C}",
						["num"] = 11,
					},
				}, -- end of ["pylons"]
                ["fuel"] = "3790",
                ["flare"] = 128,
                ["chaff"] = 128,
                ["gun"] = 100,
				},
			},	
		},
		["Strike"] = {
			["GA Rockets R-60*2 B-8M1*2"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
				},
				attributes = {"SAM", "armor"},
				weapons = { -- task dedicated weapons, Rockets 80 mm antitank hard target, launcher B-8MI (qty: 20)				
					["S-8 KOM"] = 40,	
					["R-60"] = 2,										
				},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [3]
						[8] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
						[9] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
					["restricted"] = 
					{
					}, -- end of ["restricted"]
				},
			},
			["GA Rockets R-60*2 S-25OFM*6"] = {
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
				},
				attributes = {"SAM", "armor", "Structure"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons, Rockets 340 mm hard target (antitank), 250OFM,   Launcher O-25 (qty: 1)	
					["S-25L"] = 6,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [4]
							[7] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
							[9] = 
							{
								["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
							}, -- end of [9]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["GA Rockets R-60*2 S-25L*6 UB-13*2"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"SAM", "armor", "soft"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons, Rockets 340 mm hard target (antitank), 250OFM,   Launcher O-25 (qty: 1) Rockets 122 mm soft target, launcher UB-13 (qty: 5)	
					["S-25L"] = 6,
					["S-13"] = 10,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{0180F983-C14A-11d8-9897-000476191836}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},
			["GA Bombs R-60*2 RBK-250*8"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"SAM", "soft", "Parked Aircraft"},				
				weaponType = "Bombs",
				weapons = { 
					["RBK-250AO"] = 8,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 8,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["GA Bombs R-60*2 RBK-500AO*6"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"SAM", "soft", "Parked Aircraft"},
				weaponType = "Bombs",
				weapons = { 
					["RBK-500AO"] = 6,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 8,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [4]
						[7] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
						[9] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},
			["Strike Bombs Long Range R-60*2 FAB-100*16 Fuel*2"] = {
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"SAM", "soft", "Parked Aircraft"},
				weaponType = "Bombs",
				weapons = {
					["FAB-100"] = 16,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 6,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "{29A828E2-C6BB-11d8-9897-000476191836}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{29A828E2-C6BB-11d8-9897-000476191836}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{29A828E2-C6BB-11d8-9897-000476191836}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{29A828E2-C6BB-11d8-9897-000476191836}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["Runway Strike Bombs Long Range R-60*2 BetAB-500*6 Fuel*2"] = {
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weaponType = "Bombs",
				weapons = { -- 
					["BetAB-500"] = 6,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 6,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["Runway Strike Bombs R-60*2 BetAB-500ShP*8"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weaponType = "Bombs",
				weapons = { -- 
					["BetAB-500"] = 8,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 6,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},
			["GA Rockets, R-60*2, B-13L*6"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"SAM", "soft"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons Rockets 122 mm soft target, launcher UB-13 (qty: 5)	
					["S-13"] = 30,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [4]
						[7] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
						[9] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [9]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},
			["Strike Bombs  Long Range R-60*2 FAB-500*6"] = {
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weaponType = "Bombs",
				weapons = {
					["FAB-500M62"] = 6,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 6,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["Strike Bombs  Long Range R-60*2 FAB-250*6"] = {
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weaponType = "Bombs",
				weapons = {
					["FAB-250M54"] = 6,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 6,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [8]
						[9] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [9]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},
			["Pinpoint Strike SM Long Range R-60*2 Kh-25ML*4"] = {
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge", "armor"},
				weaponType = "ASM",
				weapons = {
					["Kh-25ML"] = 4,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[3] = 
							{
								["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
							}, -- end of [8]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["Pinpoint Strike SM R-60*2 Kh-25ML*4 Kh-29L*2"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge", "armor"},
				weaponType = "ASM",
				weapons = {
					["Kh-25ML"] = 4,
					["Kh-29L"] = 2,	
					["R-60"] = 2,										
				},
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 9,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[3] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [8]
						[10] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [10]
					}, -- end of ["pylons"]
					["fuel"] = "2835",
					["flare"] = 128,
					["chaff"] = 128,
					["gun"] = 100,
				},
			},			
			-- ["Rockets, R-60M*4, Fuel"] = {
					-- support = {
						-- ["Escort"] = true,
						-- ["SEAD"] = true,
					-- },
				-- attributes = {"soft", "Parked Aircraft", "SAM"},
				-- weaponType = "Rockets",
				-- expend = "All",
				-- day = true,
				-- night = true,
				-- adverseWeather = true,
				-- range = 800000,
				-- capability = 1,
				-- firepower = 1,
				-- vCruise = 230,
				-- vAttack = 250,
				-- hCruise = 500,
				-- hAttack = 100,
				-- standoff = nil,
				-- tStation = nil,
				-- LDSD = false,
				-- --- self_escort = false,
				-- sortie_rate = 2,
				-- stores = {
				-- ["pylons"] = 
				-- {
					-- [1] = 
					-- {
						-- ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						-- ["num"] = 1,
					-- },
					-- [2] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 2,
					-- },
					-- [3] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 3,
					-- },
					-- [4] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 4,
					-- },
					-- [5] = 
					-- {
						-- ["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						-- ["num"] = 5,
					-- },
					-- [7] = 
					-- {
						-- ["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
						-- ["num"] = 7,
					-- },
					-- [8] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 8,
					-- },
					-- [9] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 9,
					-- },
					-- [10] = 
					-- {
						-- ["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						-- ["num"] = 10,
					-- },
					-- [11] = 
					-- {
						-- ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						-- ["num"] = 11,
					-- },
				-- }, -- end of ["pylons"]
                -- ["fuel"] = "3790",
                -- ["flare"] = 128,
                -- ["chaff"] = 128,
                -- ["gun"] = 100,
				-- },
			-- },
		},	
		["Flare Illumination"] = {
			["CAS Illumination Bombs R-60*2 SAB-100 * 8"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge", "soft", "armor", "SAM"},
				weaponType = "Bombs",				
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 2,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
			["CAS Illumination Bombs R-60*2 SAB-100 * 8 SPPU-22-1 Autocannon"] = {
				minscore = 0.0,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge", "soft", "armor", "SAM"},
				weaponType = "Bombs",				
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 1,
				firepower = 1,
				vCruise = 230,
				vAttack = 250,
				hCruise = 500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [3]
							[5] = 
							{
								["CLSID"] = "{E92CBFE5-C153-11d8-9897-000476191836}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{E92CBFE5-C153-11d8-9897-000476191836}",
							}, -- end of [6]
							[8] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [8]
							[9] = 
							{
								["CLSID"] = "{0511E528-EA28-4caf-A212-00D1408DF10A}",
							}, -- end of [9]
							[10] = 
							{
								["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
							}, -- end of [10]
						}, -- end of ["pylons"]
						["fuel"] = "2835",
						["flare"] = 128,
						["chaff"] = 128,
						["gun"] = 100,
				},
			},
		},
	},

	["Mi-26"] = {--1977 (primo volo) 1983 (entrata in servizio) -> OK <- 
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 10,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
					}, ----end of ["pylons"]
					["fuel"] = "9600",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},

	["Mi-24P"] = {--1980 (primo volo) (entrata in servizio) -> OK <-
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 10,
				firepower = 1,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = {
						["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
							["num"] = 5,
						},
						[6] = {
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							["num"] = 6,
						},
					}, ----end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {			
			["CAS Rockets Hard S-13*10 9M114*4"] = {
				minscore = 0.0,
				attributes = {"soft", "armor", "Structure"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-13"] = 10, --rockets hard target
					["9M114"] = 4, --asm hard target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 5,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [2]
						[5] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "1414",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},			
			["CAS Rockets S-8KOM*20 9M114*4"] = {
				minscore = 0.0,
				attributes = {"soft", "armor"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-8 KOM"] = 20, --rockets hard target		
					["9M114"] = 4, --asm hard target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["CAS Cluster Bombs RBK-250*2 9M114*4"] = {
				minscore = 0.0,
				attributes = {"soft"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["RBK-250AO"] = 2, --cluster bombs soft target		
					["9M114"] = 4, --rockets soft target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 300,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = 1208,
					["flare"] = 192,
					["ammo_type"] = 1,
					["chaff"] = 0,
					["gun"] = 100,
					["restricted"] = 
					{
					}, -- end of ["restricted"]
				},
			},				
		},
	},

	["Mi-24V"] = {--1969 (primo volo) 1972 (entrata in servizio) -> OK <- --Syria
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 10,
				firepower = 1,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = {
						["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
							["num"] = 5,
						},
						[6] = {
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							["num"] = 6,
						},
					}, ----end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			
			["CAS Cannon Soft UPK-23*4 9M114*4"] = {
				minscore = 0.1,
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["9M114"] = 4, --rockets CAS Rockets Hard S-13*10 9M114*4 target	
					["UPK-23"] = 4,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 2,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["CAS Rockets Hard S-13*10"] = {
				minscore = 0.0,
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-13"] = 10, --rockets soft target											
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[3] = 
							{
								["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							}, -- end of [4]
						}, -- end of ["pylons"]
						["fuel"] = 1346,
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},	
			["CAS Rockets Soft S-5KO*128"] = {
				minscore = 0.0,
				attributes = {"soft", "Parked Aircraft"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-5 KO"] = 128, --rockets soft target															
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[2] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [5]
					}, -- end of ["pylons"]
					["fuel"] = 1193,
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["CAS Rockets S-8KOM*40"] = {
				minscore = 0.0,
				attributes = {"armor", "SAM"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-8 KOM"] = 40, --rockets hard target												
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[3] = 
							{
								["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
							}, -- end of [4]
						}, -- end of ["pylons"]
						["fuel"] = 1636,
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},		
			["CAS Rockets Hard S-13OF*10 84%Fuel"] = { --??
				minscore = 0.0,
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-13"] = 10, --Rockets 122 mm soft target, launcher UB-13 (qty: 5)
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 60000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[3] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [4]
					}, -- end of ["pylons"]
					["fuel"] = 1431,
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
					["restricted"] = 
					{
					}, -- end of ["restricted"]
				},
			},	
			["CAS Rockets S-5KO*128 80%Fuel"] = {
				minscore = 0.0,
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["S-5 KO"] = 128, --rockets soft target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 60000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
							}, -- end of [5]
						}, -- end of ["pylons"]
						["fuel"] = 1363,
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},	
			["CAS Rockets 9M114*8"] = {
				minscore = 0.0,
				attributes = {"armor", "SAM", "Parked Aircraft"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons																	
					["9M114"] = 8, --rockets soft target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							}, -- end of [2]
							[5] = 
							{
								["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
							}, -- end of [6]
						}, -- end of ["pylons"]
						["fuel"] = "1704",
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},	
			["GA Bombs KMGU-2 *2 53% Fuel"] = { -- 
				minscore = 0.0,
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["KGBU-2PTAB"] = 2, --KGMU (for armor) same weight of KGBU-2PTAB bombs armor target										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 40000,
				capability = 3,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 300,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[3] = 
							{
								["CLSID"] = "{96A7F676-F956-404A-AD04-F33FB2C74884}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{96A7F676-F956-404A-AD04-F33FB2C74884}",
							}, -- end of [4]
						}, -- end of ["pylons"]
						["fuel"] = 903,
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},	
			["GA Bombs FAB-500 *2 85% Fuel"] = {
				minscore = 0.0,
				attributes = {"Structure", "Bridge"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons											
					["FAB-500M62"] = 2, 										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 67000,
				capability = 1,
				firepower = 4,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 300,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[3] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							}, -- end of [4]
						}, -- end of ["pylons"]
						["fuel"] = 1448,
						["flare"] = 192,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},	
		},
	},

	["Mi-8MT"] = {--1961 (primo volo) 1967 (entrata in servizio) -> OK <-
		["Transport"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 1,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[8] = {
						["CLSID"] = "PKT_7_62",
						["num"] = 8,
						},
						[7] = {
						["CLSID"] = "KORD_12_7",
						["num"] = 7,
						},
					}, ----end of ["pylons"]
					["fuel"] = "1929",
					["flare"] = 128,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = { --verify loadout miz
			["Rockets S-8KOM*80"] = {
				minscore = 0.0,
				attributes = {"armor", "SAM"},
				weapons = { -- task dedicated weapons											
					["S-8 KOM"] = 80, --rockets soft target										
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 6,
				firepower = 7,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [5]
						[2] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [2]
						[4] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [4]
						[3] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [3]
					}, -- end of ["pylons"]
					["fuel"] = "1929",
					["flare"] = 128,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["S-8KOM*20-Gsh-23L Autocannon*2"] = {
				minscore = 0.0,
				attributes = {"armor", "SAM"},
				weapons = { -- task dedicated weapons											
					["S-8 KOM"] = 20, --rockets soft target		
					["Gsh-23L"] = 2, --rockets soft target									
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 13,
				firepower = 7,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =  {
						[5] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [5]
						[2] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [2]
						[4] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [4]
						[3] = 
						{
							["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
						}, -- end of [3]
					}, -- end of ["pylons"]
					["fuel"] = "1929",
					["flare"] = 128,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["Gsh-23L Autocannon*2"] = {
				minscore = 0.0,
				attributes = {"soft", "Parked Aircraft"},
				weapons = { -- task dedicated weapons											
					["Gsh-23L"] = 2, --rockets soft target													
				},
				weaponType = "Rockets",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 3,
				firepower = 7,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 50,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =  {
						[5] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [5]
						[2] = 
						{
							["CLSID"] = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
						}, -- end of [2]
					}, -- end of ["pylons"]
					["fuel"] = "1929",
					["flare"] = 128,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},	
			["Bombs Fab-100*6"] = {
				minscore = 0.0,
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weapons = { -- task dedicated weapons											
					["FAB-100"] = 6, --rockets soft target									
				},
				weaponType = "Bombs",
				expend = "Auto",
				day = true,
				night = false,
				adverseWeather = false,
				range = 80000,
				capability = 3,
				firepower = 7,
				vCruise = 100,
				vAttack = 100,
				hCruise = 100,
				hAttack = 250,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{FB3CE165-BF07-4979-887C-92B87F13276B}",
							}, -- end of [6]
						}, -- end of ["pylons"]
						["fuel"] = "1929",
						["flare"] = 128,
						["chaff"] = 0,
						["gun"] = 100,
				},
			},			
		},
	},	

	["Tu-22M3"] = { --1969 (primo volo) 1972 (entrata in servizio) -> OK <-
		["Strike"] = {
			["BAI FAB-500*33 FAB -250*36"] = {
				role = "bomber",
				role_altitude = "high",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge", "hard", "SAM", "armor"},
				weapons = { -- task dedicated weapons						
					["FAB-500M62"] = 33,										
					["FAB-250M54"] = 36,										
				},
				weaponType = "Bombs",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = false,
				range = 900000,
				capability = 10,
				firepower = 30,
				vCruise = 200,
				vAttack = 140,
				hCruise = 11000,
				hAttack = 8000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{AD5E5863-08FC-4283-B92C-162E2B2BD3FF}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
						}, -- end of [5]
					},
					["fuel"] = "50000",
					["flare"] = 48,
					["chaff"] = 48,
					["gun"] = 100,
				},
			},
		},
		["Anti-ship Strike"] = {
			["Antiship  Kh-22N*3"] = { --1962
				role = "bomber",
				role_altitude = "supersonic",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons						
					["Kh-22N"] = 3,															
				},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 30,
				vCruise = 250,
				vAttack = 300,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[5] = {
						["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
						["num"] = 5,
						},
						[1] = {
						["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
						["num"] = 1,
						},
						[3] = {
						["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
						["num"] = 3,
						}, --end of [8]
	       			}, ----end of ["pylons"]
					["fuel"] = "50000",
					["flare"] = 48,
					["chaff"] = 48,
					["gun"] = 100,
				},
			},
			["Antiship  Kh-22N*1"] = { --1962
				role = "bomber",
				role_altitude = "supersonic",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons						
					["Kh-22N"] = 1,															
				},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 15,
				vCruise = 250,
				vAttack = 300,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[3] = 
						{
							["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
						}, -- end of [3]
	       			}, ----end of ["pylons"]
					["fuel"] = "50000",
					["flare"] = 48,
					["chaff"] = 48,
					["gun"] = 100,
				},
			},
		},
	},

	["Su-24MR"] = {--1967 (primo volo) 1974 (entrata in servizio) -> OK <-
		["Reconnaissance"] = {
			["Reco TANGAZH,ETHER,R-60M*2,Fuel*2"] = {
				role = "recon",
				role_altitude = "normal",
				coalition = "red",
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {},
				weapons = { -- task dedicated weapons
					["R-60M"] = 2,										
				},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 1,
				vCruise = 250,
				vAttack = 350,
				hCruise = 10096,
				hAttack = 10096,
				standoff = nil,
				tStation = 2000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0519A262-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{0519A261-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 8,
						}, --end of [8]
	        		}, ----end of ["pylons"]
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},			
		},
		--[[
		["AWACS"] = {
			["Default"] = {
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 250,
				vAttack = 350,
				hCruise = 10096,
				hAttack = 10096,
				standoff = nil,
				tStation = 36000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 12,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0519A262-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "{0519A261-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 8,
						}, --end of [8]
	        		}, ----end of ["pylons"]
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},			
		},
		]]
	},

	["Su-24M"] = {--1967 (primo volo) 1974 (entrata in servizio) -> OK <-
		
		["Anti-ship Strike"] = {
			--[[
			["Antiship, R-60M*4, Kh-59M*2, Fuel"] = { -- kh 59 1980
				minscore = 0.5,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 5,
				firepower = 10,
				vCruise = 250,
				vAttack = 300,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 40000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, ----end of [1]
						[2] =
						{
							["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
						}, --end of [2]
						[5] =
						{
							["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
						}, --end of [5]
						[7] =
						{
							["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
						}, --end of [7]
						[8] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [8]
	        		}, ----end of ["pylons"]
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			]]
			["Antiship S24/240mm.235kg.he.frag*6"] = {
				role = "bomber",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				weapons = { -- task dedicated weapons
					["S-24"] = 6,										
				},
				attributes = {"ship"},
				weaponType = "Rockets",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 6,
				vCruise = RED_ATTACKER_VCRUISE,
				vAttack = 220,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["Antiship  S25/340mm.480kg.pntr*2 Fuel*3"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.5,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"ship"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons
					["S-25L"] = 2,										
				},
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 5,
				firepower = 3,
				vCruise = RED_ATTACKER_VCRUISE,
				vAttack = 220,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
						}, -- end of [2]
						[5] = 
						{
							["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
		},

		["SEAD"] = {

			["SEAD  Kh58*2 R60*4 L-081 escort sead bomber normal altitude"] = { --kh 58  
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "red",
				attributes = {"SAM"},
				minscore = 0.0,
				weaponType = "ASM",
				weapons = { -- task dedicated weapons						
					["Kh-58"] = 2,	
					["R-60"] = 4,																		
				},
				expend = "Auto",				
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 13,
				firepower = 8,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil,-- DC_Firepower calculation --60-120km kh-58
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
							["num"] = 8,
						},
						}, ----end of ["pylons"]
	 				["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},	
			
			["SEAD  Kh58*2 R60*4 L-081 escort sead bomber high altitude"] = { --kh 58  1982 NO (inserted because red power against blue sam seems too weak)
				role = "escort_sead_bomber",
				role_altitude = "high",
				coalition = "red",
				attributes = {"SAM"},
				minscore = 0.0,
				weaponType = "ASM",
				weapons = { -- task dedicated weapons						
					["Kh-58"] = 2,	
					["R-60"] = 4,																		
				},
				expend = "Auto",				
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 13,
				firepower = 8,
				vCruise = 250,
				vAttack = 250,
				hCruise = 7000,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil,-- DC_Firepower calculation --60-120km kh-58
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[2] = {
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
							["num"] = 2,
						},
						[5] = {
							["CLSID"] = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
							["num"] = 7,
						},
						[8] = {
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
							["num"] = 8,
						},
						}, ----end of ["pylons"]
	 				["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},	
		},

		["Laser Illumination"] = {

			["Laser Illumination, R-60M*4, Fuel escort_laser_illumination_bomber"] = {
				role = "escort_laser_illumination_bomber",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons										
					["R-60M"] = 4,																		
				},
				weaponType = nil,
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = false,
				range = 900000,
				capability = 3,
				firepower = 1,
				vCruise = 230,
				vAttack = 300,
				hCruise = 7096,
				hAttack = 7096,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[5] = {
							["CLSID"] = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 7,
						},
						[2] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 2,
						},
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			["Laser Illumination, R-60M*4, Fuel escort_laser_illumination_attacker"] = {
				role = "escort_laser_illumination_attacker",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons										
					["R-60M"] = 4,																		
				},
				weaponType = nil,
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = false,
				range = 900000,
				capability = 3,
				firepower = 1,
				vCruise = 230,
				vAttack = 300,
				hCruise = 7096,
				hAttack = 7096,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
							["num"] = 1,
						},
						[5] = {
							["CLSID"] = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",
							["num"] = 5,
						},
						[7] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 7,
						},
						[2] = {
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							["num"] = 2,
						},
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
		},

		["Strike"] = {

			["CAS Fab100*30"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"soft", "armor"},
				weapons = { -- task dedicated weapons						
					["FAB-100M"] = 30,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 8,
				vCruise = 250,
				vAttack = 200,
				hCruise = 6096,
				hAttack = 2096,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
						}, -- end of [2]
						[4] = 
						{
							["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
						}, -- end of [4]
						[7] = 
						{
							["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS Rockets S-8/80mm*6(20*6=120 rocket)"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"soft", "Parked Aircraft"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons
					["S-8 OFP2"] = 120, -- soft target										
				},
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 6,
				firepower = 15,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["BAI Fab1500*2 R-60*4"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons						
					["FAB-1500M54"] = 2,														
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 14,
				vCruise = 250,
				vAttack = 200,
				hCruise = 6096,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
						}, -- end of [2]
						[7] = 
						{
							["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["BAI Fab250*8"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["FAB-250M54"] = 8,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 4,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["BAI Fab250*4 R-60M*4"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons														
					["FAB-250M54"] = 4,					
					["R-60M"] = 4,																											
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 2,
				vCruise = 250,
				vAttack = 200,
				hCruise = 6096,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS Fab-500*2 UB-13*4 (4*5=20 S-13 rockets)"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "hard", "armor"},
				weapons = { -- task dedicated weapons						
					["FAB-500M62"] = 2,										
					["S-13"] = 20, --rockets soft target										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 8,
				firepower = 3,
				vCruise = 250,
				vAttack = 2100,
				hCruise = 6096,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS S24/240mm.235kg.he.frag*6"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {"soft", "Structure"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons
					["S-24"] = 6,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 6,
				firepower = 6,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6000, 
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil,-- DC_Firepower calculation 6096,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS S25/340mm.480kg.pntr*2 Fuel*3"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"SAM", "armor"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons
					["S-25L"] = 2,										
				},
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 6,
				firepower = 3,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
						}, -- end of [2]
						[5] = 
						{
							["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS S25/340mm.480kg.pntr*6"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
				},
				attributes = {"armor", "SAM"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons
					["S-25L"] = 6,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 6,
				firepower = 6,
				vCruise = 250,
				vAttack = 240,
				hCruise = 6096,
				hAttack = nil, -- DC_Firepower calculation
				standoff = nil, -- DC_Firepower calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [3]
						[6] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS Fab-250*4 UB-32*4 S-5KO rockets"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.5,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weapons = { -- task dedicated weapons						
					["FAB-250M54"] = 4,										
					["S-5 KO"] = 128,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = false,
				adverseWeather = false,
				range = 900000,
				capability = 8,
				firepower = 4,
				vCruise = 250,
				vAttack = 300,
				hCruise = 6096,
				hAttack = 1500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [8]
					},
					["fuel"] = "11700",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},	
			["Pinpoint Strike R-60M*2 Kh-29T*2"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["FAB-250M54"] = 8,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 4,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}",
							}, -- end of [2]
							[7] = 
							{
								["CLSID"] = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [8]
						}, -- end of ["pylons"]
						["fuel"] = "11700",
						["flare"] = 96,
						["chaff"] = 96,
						["gun"] = 100,
				},
			},	
			["Pinpoint Strike R-60M*2 Kh-29L*2"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["FAB-250M54"] = 8,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 4,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}",
							}, -- end of [2]
							[7] = 
							{
								["CLSID"] = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [8]
						}, -- end of ["pylons"]
						["fuel"] = "11700",
						["flare"] = 96,
						["chaff"] = 96,
						["gun"] = 100,
				},
			},
			["Su-24M CAS B-8 Fab100 Fuel*2"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "SAM", "armor"},
				weapons = { -- task dedicated weapons										
					["FAB-250M54"] = 8,										
				},
				weaponType = "Bombs",
				expend = "All",
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 8,
				firepower = 4,
				vCruise = 250,
				vAttack = 230,
				hCruise = 6096,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							}, -- end of [2]
							[4] = 
							{
								["CLSID"] = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
							}, -- end of [4]
							[7] = 
							{
								["CLSID"] = "{7D7EC917-05F6-49D4-8045-61FC587DD019}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
							}, -- end of [8]
						}, -- end of ["pylons"]
						["fuel"] = "11700",
						["flare"] = 96,
						["chaff"] = 96,
						["gun"] = 100,
				},
			},							
		},
	},	

	["A-50"] = { -- 1978 (primo volo) 1984 (entrata in servizio) -> OK <-

		["AWACS"] = {
			["Default"] = {
				role = "AWACS",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				vCruise = 231.25,
				vAttack = 231.25,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = nil,
				tStation = 36000,
				sortie_rate = 1.2,
				stores = {
					["pylons"] =
					{
					}, ----end of ["pylons"]
					["fuel"] = "70000",
					["flare"] = 192,
					["chaff"] = 192,
					["gun"] = 100,
				},
			},
		}, -- 1978
	},

	["An-26B"] = {--1969 (primo volo) 1973 (entrata in servizio) -> OK <-

		["Transport"] = {

			["Default"] = {
				role = "transporter",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 5,
				firepower = 1,
				vCruise = 200.16666666667,
				vAttack = 200.16666666667,
				hCruise = 3500,
				hAttack = 3500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
					}, ----end of ["pylons"]
					["fuel"] = "5500",
					["flare"] = 384,
					["chaff"] = 384,
					["gun"] = 100,
				},
			},
		},
	},

	["MiG-21Bis"] = {--1955 (primo volo) 1959 (entrata in servizio)  Syra  inserire Kh-66, S-24 e/o S-21

		["Anti-ship Strike"] = {

			["Antiship IPW R-3R*1, R-3S*1, FT800L, S-24B*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = false,
					["SEAD"] = true,
					["Laser Illumination"] = false,
				},
				attributes = {"ship"},
				weaponType = "Rockets",
				expend = "Auto",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-24"] = 2,	
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 2,
				firepower = 2,
				vCruise = 230,
				vAttack = 250,
				hCruise = 5486.4,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{S-24B}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{S-24B}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Antiship Strike - R-3R*1, R-3S*1, FT800L, FAB-500*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
					["Laser Illumination"] = false,
				},
				attributes = {"ship"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons
					["FAB-500M62"] = 2,		
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 								
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 2,
				firepower = 3,
				vCruise = 150,
				vAttack = 150,
				hCruise = 5000,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["ASM -Kh66*2 Fuel - R-13M1"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons
					["Kh-66"] = 2,	
					["R-13M1"] = 2,									
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 3,
				firepower = 4,
				vCruise = 250,
				vAttack = 250,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{R-13M1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{Kh-66_Grom}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{Kh-66_Grom}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M1}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 40,
					["chaff"] = 18,
					["gun"] = 100,
				},
			},
		},
		["Intercept"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["R-3R"] = 2, -- 														
					["R-3S"] = 2, -- 														
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 600000,
				capability = 7,
				firepower = 5,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 12,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				weapons = { -- task dedicated weapons
					["R-3R"] = 2, -- 														
					["R-3S"] = 2, -- 														
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 600000,
				capability = 5,
				firepower = 5,
				vCruise = 200,
				vAttack = 220,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 20000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["IPW R-3R*2, R-3S*2, FT800L escort attacker"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons
					["R-3R"] = 2, -- 														
					["R-3S"] = 2, -- 														
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 5,
				vCruise = RED_ESCORT_FIGHTER_VCRUISE,
				vAttack = 350,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 10000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW R-3R*2, R-3S*2, FT800L escort bomber"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons
					["R-3R"] = 2, -- 														
					["R-3S"] = 2, -- 														
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 5,
				vCruise = RED_ESCORT_FIGHTER_VCRUISE,
				vAttack = 350,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 10000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weapons = { -- task dedicated weapons
					["R-3R"] = 2, -- 														
					["R-3S"] = 2, -- 														
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 6,
				firepower = 5,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-250*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["FAB-250M54"] = 2, -- 	
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 																					 														
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 1,
				vCruise = 139,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{R-3R}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-100*8"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["FAB-100"] = 8, -- 
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 																						 														
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 5,
				firepower = 2,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{FAB-100-4}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{R-3R}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{FAB-100-4}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-500*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Bridge", "hard", "Structure"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["FAB-500M62"] = 2, -- 	
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 																					 														
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, UB16UM*2 (S-5M)"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-5 M"] = 32, -- 	
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 																					 														
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 3,
				vCruise = 150,
				vAttack = 150,
				hCruise = 5500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{UB-16_S5M}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{UB-16_S5M}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, S-24B*2"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "Structure"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-24"] = 2, -- 	
					["R-3R"] = 1, -- 														
					["R-3S"] = 1, -- 																					 														
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 3,
				vCruise = 150,
				vAttack = 150,
				hCruise = 5500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{S-24B}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{S-24B}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["CAS Cluster Bombs Soft BL-755*2 RBK-250*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "armor", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["RBK-250AO"] = 2, -- 																									 														
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 4,
				vCruise = 140,
				vAttack = 130,
				hCruise = 6500,
				hAttack = 1000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 40,
					["chaff"] = 18,
					["gun"] = 100,
				},
			},
			["CAS Rockets S-5M*32 S-24*2 Fuel"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = false,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-24"] = 2, -- 														 														
					["S-5 M"] = 32, -- 														 														
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 3,
				vCruise = RED_ATTACKER_VCRUISE,
				vAttack = 150,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{UB-16_S5M}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{S-24B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{S-24B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{UB-16_S5M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 40,
					["chaff"] = 18,
					["gun"] = 100,
				},
			},
			["BAI ASM -Kh66*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft","Structure", "Bridge"},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["Kh-66"] = 2, -- 
					["R-13M1"] = 2,																							 																															 														
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 6,
				vCruise = 200,
				vAttack = 250,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{R-13M1}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{Kh-66_Grom}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{PTB_800_MIG21}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{Kh-66_Grom}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{R-13M1}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{ASO-2}",
						}, -- end of [6]
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 40,
					["chaff"] = 18,
					["gun"] = 100,
				},
			},
		},
	},

	["Su-17M4"] = {--1967 (primo volo) 1972 (entrata in servizio) -> OK <- Syra
		["Anti-ship Strike"] = {
			["IPW - AntishipStrike - FAB 500 M62*4"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
				},
				attributes = {"ship"},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["FAB-500M62"] = 4,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 9,
				vCruise = 140,
				vAttack = 140,
				hCruise = 5500,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 6,
						},
						[3] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {			
			["IPW - Strike - FAB 500 M62*4"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"Structure", "Bridge", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["FAB-500M62"] = 4,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 6,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 6,
						},
						[3] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},
			["CAS Bombs FAB-250*16 R-60M*2"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["FAB-250M54"] = 16,	
					["R-60M"] = 2,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 8,
				vCruise = 140,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{3E35F8C1-052D-11d6-9191-00A0249B6F00}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3E35F8C1-052D-11d6-9191-00A0249B6F00}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["CAS Bombs FAB-500*6 R-60M*2"] = {
				role = "bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge", "hard"},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["FAB-500M62"] = 6,										
					["R-60M"] = 2,	
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 9,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["IPW - Strike - RBK-500 PTAB-10-5*4"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons
					["RBK-500AO"] = 4,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 8,
				vCruise = 140,
				vAttack = 140,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
							["num"] = 6,
						},
						[3] = {
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["IPW - Strike - S-13*25"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-13"] = 25,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 6,
				vCruise = 140,
				vAttack = 150,
				hCruise = 7000,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							["num"] = 6,
						},
						[3] = {
							["CLSID"] = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["IPW - Strike - S-24B*4"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "Structure"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-24"] = 4,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 5,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[8] = {
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
							["num"] = 8,
						},
						[1] = {
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
							["num"] = 1,
						},
						[6] = {
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
							["num"] = 6,
						},
						[3] = {
							["CLSID"] = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS Rockets S-25*4 R-60M*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"hard", "Structure"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons
					["S-25L"] = 4,	
					["R-60M"] = 2,										
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 4,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS Rockets UB-32*4 (S-5 M) R-60M*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "SAM", "Parked Aircraft"},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["S-5 M"] = 128,	
					["R-60M"] = 2,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 12,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS Rockets B-8*4 R-60M*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weapons = { -- task dedicated weapons
					["S-8 OFP2"] = 80, --??		
					["R-60M"] = 2,									
				},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 5,
				firepower = 8,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = 3770,
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["CAS Bombs FAB-100*24 R-60M*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor"},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["FAB-100"] = 24, --??	
					["R-60M"] = 2,										
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 6,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS ASM Kh-25ML-MPR*4 R-60M*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["Kh-25ML"] = 2, --??										
					["Kh-25MR"] = 2, --??		
					["R-60M"] = 2,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 12,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "292960BB-6518-41AC-BADA-210D65D5073C}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "292960BB-6518-41AC-BADA-210D65D5073C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},	
			["Pinpoint Strike Long RangeR-60M*2 Kh-29L*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["Kh-25ML"] = 2, --??										
					["Kh-25MR"] = 2, --??		
					["R-60M"] = 2,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 12,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [7]
						}, -- end of ["pylons"]
						["fuel"] = "3770",
						["flare"] = 64,
						["chaff"] = 64,
						["gun"] = 100,
				},
			},	
			["Pinpoint Strike Long RangeR-60M*2 Kh-29T*2 Fuel*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["Kh-25ML"] = 2, --??										
					["Kh-25MR"] = 2, --??		
					["R-60M"] = 2,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 12,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
							}, -- end of [5]
							[6] = 
							{
								["CLSID"] = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}",
							}, -- end of [6]
							[7] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [7]
						}, -- end of ["pylons"]
						["fuel"] = "3770",
						["flare"] = 64,
						["chaff"] = 64,
						["gun"] = 100,
				},
			},
			["Strike runway R-60M*2 BetAB-500*6"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				weapons = { -- task dedicated weapons
					["Kh-25ML"] = 2, --??										
					["Kh-25MR"] = 2, --??		
					["R-60M"] = 2,									
				},
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 7,
				firepower = 12,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},				
		},
		["SEAD"] = {
			["ASM SEAD Kh-25MPU*4 R-60M*2 Fuel*2 escort bomber normal altitude"] = {
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,				
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25MPU"] = 4, --??		
					["R-60M"] = 2,									
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 700000,
				capability = 13,
				firepower = 12,
				vCruise = 220,
				vAttack = 250,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,-- Kh-25MP range 40km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			["ASM SEAD Kh-25MPU*4 R-60M*2 Fuel*2 escort bomber high altitude"] = {
				role = "escort_sead_bomber",
				role_altitude = "high",
				coalition = "red",
				minscore = 0.0,				
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25MPU"] = 4, --??		
					["R-60M"] = 2,									
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 700000,
				capability = 13,
				firepower = 12,
				vCruise = 220,
				vAttack = 250,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,-- Kh-25MP range 40km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 96,
					["chaff"] = 96,
					["gun"] = 100,
				},
			},

			["SEAD Long Range R-60M*2 Kh-25MPU*2 Kh-58*2 Fuel*2"] = {
				role = "escort_sead_bomber",
				role_altitude = "high",
				coalition = "red",
				minscore = 0.0,				
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25MPU"] = 4, --??		
					["R-60M"] = 2,									
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 700000,
				capability = 13,
				firepower = 12,
				vCruise = 220,
				vAttack = 250,
				hCruise = 6500,
				hAttack = nil,
				standoff = nil,-- Kh-25MP range 40km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
						{
						[1] = 
						{
							["CLSID"] = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}",
						}, -- end of [1]
						[2] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "3770",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
	},

	["MiG-27K"] = {--1970 (primo volo) 1975 (entrata in servizio) -> OK <-
		["Anti-ship Strike"] = {
			["GA Kh-25MPL*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weapons = { -- task dedicated weapons				
					["Kh-25ML"] = 2, --??	
					["R-60M"] = 2,										
				},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 3,
				firepower = 5,
				vCruise = 200,
				vAttack = 350,
				hCruise = 9500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {			
			["GA Kh-25MR*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
				},
				attributes = {"SAM", "Structure"},
				weapons = { -- task dedicated weapons				
					["Kh-25MR"] = 2, --??	
					["R-60M"] = 2,										
				},
				weaponType = "ASM",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 200,
				vAttack = 250,
				hCruise = 5500,
				hAttack = nil,
				standoff = nil,-- Kh-25MPR infrared 20 km !?
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "292960BB-6518-41AC-BADA-210D65D5073C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "292960BB-6518-41AC-BADA-210D65D5073C}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GA Kh-25ML*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"SAM", "Structure"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25ML"] = 2, --??	
					["R-60M"] = 2,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 200,
				vAttack = 250,
				hCruise = 5500,
				hAttack = nil,
				standoff = nil, -- Kh-25MPL Laser 11 km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["BAI Laser KAB-500LG*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.3,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
						["Laser Illumination"] = true,
					},
				attributes = {"hard", "Structure", "Bridge"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["KAB-500L"] = 2, --??	
					["R-60M"] = 2,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 4,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 6000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{BA565F89-2373-4A84-9502-A0E017D3A44A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{BA565F89-2373-4A84-9502-A0E017D3A44A}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS Heavy Cluster RBK-500-255*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "armor", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons				
					["RBK-500PTAB"] = 2, --??		
					["R-60M"] = 2,									
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 5,
				firepower = 5,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{4203753F-8198-4E85-9924-6F8FF679F9FF}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["CAS Light Cluster RBK-500-250*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.2,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["RBK-500AO"] = 2, --??		
					["R-60M"] = 2,									
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 5,
				firepower = 5,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 3,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{7AEC222D-C523-425e-B714-719C0D1EB14D}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{RBK_250_275_AO_1SCH}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{RBK_250_275_AO_1SCH}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{7AEC222D-C523-425e-B714-719C0D1EB14D}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},								
			["CAS Heavy Cluster KMGU-96r*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["KGBU-96r"] = 2, --??	
					["R-60M"] = 2,										
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 5,
				firepower = 5,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{96A7F676-F956-404A-AD04-F33FB2C74881}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{96A7F676-F956-404A-AD04-F33FB2C74884}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},	
			["BAI Fab-250*6 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "armor", "SAM", "Parked Aircraft"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["FAB-250M54"] = 6, --??	
					["R-60M"] = 2,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},	
			["BAI Fab-500*2 Fab-250*2 R-60M*2 Fuel"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"hard", "Structure", "Bridge"},
				weaponType = "Bombs",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["FAB-500M62"] = 2,
					["FAB-250M54"] = 2,
					["R-60M"] = 2,	
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 6,
				vCruise = 130,
				vAttack = 130,
				hCruise = 7500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [6]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Rockets CAS B-8*4/80mm heat/ap(20*4=80 rockests"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = true,
					},
				attributes = {"soft", "armor", "Parked Aircraft", "SAM"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons
					["S-8 OFP2"] = 80, --??										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 5,
				firepower = 5,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[3] = {
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [3]
						[2] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [2]
						[7] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Rockets CAS UB-32*4/57mm(32*4=128 rockets)"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons
					["S-5 M"] = 128,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 5,
				firepower = 5,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
					[3] = 
					{
						["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
					}, -- end of [3]
					[2] = 
					{
						["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
					}, -- end of [2]
					[7] = 
					{
						["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
					}, -- end of [8]
					}, -- end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},	
			["Pinpoint Strike Long RangeR-60M*2 Kh-29T*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"soft"},
				weaponType = "Rockets",
				expend = "All",
				weapons = { -- task dedicated weapons
					["S-5 M"] = 128,										
				},
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 500000,
				capability = 7,
				firepower = 5,
				vCruise = 150,
				vAttack = 150,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = 
						{
							[2] = 
							{
								["CLSID"] = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [3]
							[5] = 
							{
								["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
							}, -- end of [5]
							[7] = 
							{
								["CLSID"] = "{APU-60-1_R_60M}",
							}, -- end of [7]
							[8] = 
							{
								["CLSID"] = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}",
							}, -- end of [8]
						}, -- end of ["pylons"]
						["fuel"] = "4500",
						["flare"] = 60,
						["chaff"] = 60,
						["gun"] = 100,
				},
			},		
		},
		["SEAD"] = {
			["Mig-27K SEAD Kh-25MPU*2 R-60M*2 Fuel escort bomber normal altitude"] = {
				role = "escort_sead_bomber",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,				
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25MPU"] = 2,
					["R-60M"] = 2,	
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 15,
				firepower = 6,
				vCruise = 220,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil, -- Kh-25MP-MPU 40 km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},

			["Mig-27K SEAD Kh-25MPU*2 R-60M*2 Fuel escort attacker normal altitude"] = {
				role = "escort_sead_attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,				
				attributes = {"SAM"},
				weaponType = "ASM",
				expend = "All",
				weapons = { -- task dedicated weapons				
					["Kh-25MPU"] = 2,
					["R-60M"] = 2,	
				},
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 15,
				firepower = 6,
				vCruise = 220,
				vAttack = 250,
				hCruise = 7500,
				hAttack = nil,
				standoff = nil, -- Kh-25MP-MPU 40 km
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 10,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [3]
						[5] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [5]
						[7] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [7]
						[8] = 
						{
							["CLSID"] = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",
						}, -- end of [8]
					}, ----end of ["pylons"]
					["fuel"] = "4500",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},	

	["MiG-23MLD"] = {--1967 (primo volo) 1970 (entrata in servizio)--Syria
		["Intercept"] = {
			["R-24R*2, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 2,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-24R*1, R-24T*1, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 1,
					["R-24T"] = 1,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["R-24R*2, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 2,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-24R*1, R-24T*1, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 1,
					["R-24T"] = 1,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["R-24R*2, R-60M*4, Fuel"] = {
				role = "escort_bomber",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 2,					
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 200,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},

			["R-24R*1, R-24T*1, R-60M*4, Fuel escort attacker at normal altitude"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 1,
					["R-24T"] = 1,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-24R*1, R-24T*1, R-60M*4, Fuel escort attacker at low altitude"] = {
				role = "escort_attacker",
				role_altitude = "low",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 1,
					["R-24T"] = 1,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["R-24R*2, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 2,					
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[2] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["R-24R*1, R-24T*1, R-60M*4, Fuel"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-24R"] = 1,
					["R-24T"] = 1,
					["R-60M"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 3,
				vCruise = 250,
				vAttack = 350,
				hCruise = 7000,
				hAttack = 8000,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
						[2] =
						{
							["CLSID"] = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, --end of [4]
						[5] =
						{
							["CLSID"] = "275A2855-4A79-4B2D-B082-91EA2ADF4691}",
						}, --end of [5]
						[6] =
						{
							["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
						}, --end of [6]
					}, ----end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {			
			["GA FAB-500*2 R-60M*2 FUEL 800*1"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons				
					["FAB-500M62"] = 2,
					["R-60M"] = 2,	
				},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 3,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 6000,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GA FAB-250*2 R-60M*2 FUEL 800*1"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = true,
					},
				attributes = {"Structure", "SAM", "armor", "Parked Aircraft", "soft"},
				weapons = { -- task dedicated weapons				
					["FAB-250M54"] = 2,
					["R-60M"] = 2,	
				},
				weaponType = "Bombs",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 3,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 6000,
				hAttack = 4000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GA S-8KOM*40 R-60M*2 FUEL 800*1b"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons				
					["S-8 KOM"] = 40,
					["R-60M"] = 2,	
				},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 3,
				firepower = 3,
				vCruise = 160,
				vAttack = 160,
				hCruise = 6000,
				hAttack = nil, -- DC_Firepower Calculation
				standoff = nil, -- DC_Firepower Calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["GA S-5KO*64 R-60M*2 FUEL 800*1b"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge"},
				weapons = { -- task dedicated weapons				
					["S-5 KO"] = 64,
					["R-60M"] = 2,	
				},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 3,
				firepower = 3,
				vCruise = 150,
				vAttack = 150,
				hCruise = 6000,
				hAttack = nil, -- DC_Firepower Calculation
				standoff = nil, -- DC_Firepower Calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[2] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [2]
						[3] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [3]
						[4] = 
						{
							["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
						}, -- end of [4]
						[5] = 
						{
							["CLSID"] = "{APU-60-1_R_60M}",
						}, -- end of [5]
						[6] = 
						{
							["CLSID"] = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "3800",
					["flare"] = 60,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},

	["MiG-25PD"] = {--1964 (primo volo) 1970 (entrata in servizio)
		["Intercept"] = {
			["R-40R*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 4,				
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 10,
				firepower = 5,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["R-40R*2, R-40T*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-40T"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 10,
				firepower = 5,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["R-40R*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 4,				
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 7,
				firepower = 5,
				vCruise = 600,
				vAttack = 700,
				hCruise = 12000,
				hAttack = 12000,
				standoff = 25000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["R-40R*2, R-40T*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-40T"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 7,
				firepower = 5,
				vCruise = 600,
				vAttack = 700,
				hCruise = 12000,
				hAttack = 12000,
				standoff = 25000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["R-40R*4"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 4,				
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 8,
				firepower = 5,
				vCruise = 600,
				vAttack = 700,
				hCruise = 12000,
				hAttack = 12000,
				standoff = 25000,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["R-40R*2, R-40T*2"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-40T"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 8,
				firepower = 5,
				vCruise = 600,
				vAttack = 700,
				hCruise = 12000,
				hAttack = 12000,
				standoff = 25000,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["R-40R*4"] = {
				role = "escort_bomber",
				role_altitude = "high",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 4,				
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 2,
				firepower = 5,
				vCruise = 300,
				vAttack = 350,
				hCruise = 10000,
				hAttack = 12000,
				standoff = 25000,
				tStation = 3600,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
			["R-40R*2, R-40T*2"] = {
				role = "escort_bomber",
				role_altitude = "supersonic",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-40R"] = 2,
					["R-40T"] = 2,					
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 2,
				firepower = 5,
				vCruise = 300,
				vAttack = 350,
				hCruise = 10000,
				hAttack = 12000,
				standoff = 25000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
	},

	["MiG-25RBT"] = {--1964 (primo volo) 1970 (entrata in servizio)
		
		["Reconnaissance"] = {

			["R-40R*4"] = {
				role = "recon",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = {
					["R-40R"] = 4,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 5,
				firepower = 1,
				vCruise = 600,
				vAttack = 700,
				hCruise = 12000,
				hAttack = 12000,
				standoff = 25000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[1] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [1]
						[2] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [2]
						[3] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [3]
						[4] =
						{
							["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
						}, --end of [4]
					}, ----end of ["pylons"]
					["fuel"] = "15245",
					["flare"] = 64,
					["chaff"] = 64,
					["gun"] = 100,
				},
			},
		},
		["AWACS"] = {
			["Default"] = {
				role = "AWACS",
				role_altitude = "normal",
				coalition = "red",
				support = {
					["Escort"] = false,
					["SEAD"] = false,
				},
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 5,
				firepower = 1,
				vCruise = 250,
				vAttack = 350,
				hCruise = 10096,
				hAttack = 10096,
				standoff = nil,
				tStation = 36000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[1] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [1]
						[4] = 
						{
							["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
						}, -- end of [4]
					}, -- end of ["pylons"]					
					["fuel"] = "15245",
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},

	["Il-76MD"] = {--1971 (primo volo) 1974 (entrata in servizio)
		["Transport"] = {
			["Default"] = {
				role = "transporter",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				vCruise = 154.16666666667,
				vAttack = 154.16666666667,
				hCruise = 3500,
				hAttack = 3500,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] =
					{
					}, -- --end of ["pylons"]
					["fuel"] = 40000,
                    ["flare"] = 96,
                    ["chaff"] = 96,
                    ["gun"] = 100,
				},
			},
		},
	},

	["L-39C"] = {--1968 (primo volo) 1971 (entrata in servizio) Syria
		["Anti-ship Strike"] = {
			["Antiship IPW R-3R*1, R-3S*1, FT800L, S-24B*2"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.2,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
					["Laser Illumination"] = false,
				},
				attributes = {"ship"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons				
					["S-24"] = 2,
					["R-3S"] = 1,
					["R-3R"] = 1,
				},
				expend = "Auto",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 650000,
				capability = 1,
				firepower = 2,
				vCruise = 150,
				vAttack = 150,
				hCruise = 5486.4,
				hAttack = nil, -- DC_Firepower Calculation
				standoff = nil, -- DC_Firepower Calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{S-24B}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{S-24B}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Antiship Strike - R-3R*1, R-3S*1, FT800L, FAB-500*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.1,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
					["Laser Illumination"] = false,
				},
				attributes = {"ship"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons				
					["FAB-500M62"] = 2,
					["R-3S"] = 1,
					["R-3R"] = 1,
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 650000,
				capability = 1,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5000,
				hAttack = 2000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 1,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Intercept"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-3R"] = 2,
					["R-3S"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 600000,
				capability =2,
				firepower = 1,
				vCruise = nil,
				vAttack = nil,
				hCruise = nil,
				hAttack = nil,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 2,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-3R"] = 2,
					["R-3S"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 600000,
				capability = 3,
				firepower = 1,
				vCruise = 200,
				vAttack = 220,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 20000,
				tStation = 1800,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["IPW R-3R*2, R-3S*2, FT800L escort attacker at normal altitude"] = {
				role = "escort_attacker",
				role_altitude = "normal",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-3R"] = 2,
					["R-3S"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 1,
				firepower = 1,
				vCruise = 200,
				vAttack = 350,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 10000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW R-3R*2, R-3S*2, FT800L escort attacker at low altitude"] = {
				role = "escort_attacker",
				role_altitude = "low",
				coalition = "red",
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-3R"] = 2,
					["R-3S"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 1,
				firepower = 1,
				vCruise = 200,
				vAttack = 350,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 10000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["IPW R-3R*2, R-3S*2, FT800L"] = {
				attributes = {},
				weapons = { -- task dedicated weapons				
					["R-3R"] = 2,
					["R-3S"] = 2,
				},
				weaponType = nil,
				expend = nil,
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 2,
				firepower = 1,
				vCruise = 200,
				vAttack = 250,
				hCruise = 7500,
				hAttack = 5500,
				standoff = 20000,
				tStation = nil,
				LDSD = false,
				self_escort = true,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3R}",
							["num"] = 5,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[4] = {
							["CLSID"] = "{R-3S}",
							["num"] = 4,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-250*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons				
					["FAB-250M54"] = 2,					
					["R-3R"] = 1,
					["R-3S"] = 1,
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 4,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{R-3R}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-100*8"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = false,
						["SEAD"] = true,
					},
				attributes = {"soft", "Parked Aircraft", "SAM", "armor"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons				
					["FAB-100"] = 8,
					["R-3R"] = 1,
					["R-3S"] = 1,
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 300000,
				capability = 4,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{FAB-100-4}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{R-3S}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{R-3R}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{FAB-100-4}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, FAB-500*2"] = {
				role = "attacker",
				role_altitude = "normal",
				coalition = "red",
				minscore = 0.0,
				support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"Structure", "Bridge", "hard"},
				weaponType = "Bombs",
				weapons = { -- task dedicated weapons				
					["FAB-500M62"] = 2,
					["R-3R"] = 1,
					["R-3S"] = 1,
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 4,
				firepower = 3,
				vCruise = 130,
				vAttack = 130,
				hCruise = 5500,
				hAttack = 3000,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 4,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{37DCC01E-9E02-432F-B61D-10C166CA2798}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, UB16UM*2"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "armor"},
				weapons = { -- task dedicated weapons				
					["S-5 M"] = 32,
					["R-3R"] = 1,
					["R-3S"] = 1,
				},
				weaponType = "Rockets",
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 4,
				firepower = 2,
				vCruise = 150,
				vAttack = 150,
				hCruise = 1500,
				hAttack = nil, -- DC_Firepower Calculation
				standoff = nil, -- DC_Firepower Calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{UB-16_S5M}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{UB-16_S5M}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
			["IPW - Strike - R-3R*1, R-3S*1, FT800L, S-24B*2"] = {
				role = "attacker",
				role_altitude = "low",
				coalition = "red",
				minscore = 0.1,
				support = {
						["Escort"] = false,
						["SEAD"] = false,
					},
				attributes = {"soft", "Structure", "armor"},
				weaponType = "Rockets",
				weapons = { -- task dedicated weapons				
					["S-24"] = 2,
					["R-3R"] = 1,
					["R-3S"] = 1,
				},
				expend = "All",
				attackType = "Dive",
				day = true,
				night = false,
				adverseWeather = false,
				range = 700000,
				capability = 4,
				firepower = 2,
				vCruise = 150,
				vAttack = 150,
				hCruise = 1500,
				hAttack = nil, -- DC_Firepower Calculation
				standoff = nil, -- DC_Firepower Calculation
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
						[5] = {
							["CLSID"] = "{R-3S}",
							["num"] = 5,
						},
						[2] = {
							["CLSID"] = "{S-24B}",
							["num"] = 2,
						},
						[4] = {
							["CLSID"] = "{S-24B}",
							["num"] = 4,
						},
						[1] = {
							["CLSID"] = "{R-3R}",
							["num"] = 1,
						},
						[3] = {
							["CLSID"] = "{PTB_800_MIG21}",
							["num"] = 3,
						},
					}, ----end of ["pylons"]
					["fuel"] = 2280,
					["flare"] = 0,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},

}