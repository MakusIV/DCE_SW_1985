--Loadouts database
-------------------------------------------------------------------------------------------------------
------PB0_CEF -------------------Loadout OB----------------------------------
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
			adverseWeather = true,										--Boolean, loadout is adverse weather capable
			range = 900000,												--Number, range radius in meters
			capability = 10,											--Number, how good is the aircraft with this loadout. The higher the better
			firepower = 10,												--Number, how much firepower has this loadout. The higher the better
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

]]-----------------------------------------------------------------------------------------------------


db_loadouts = {
	["AV8BNA"] = {
		["Anti-ship Strike"] = {
			["Strike Light - AGM65*4 - AA*1 - AGM122*1"] = {
			minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 5572,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {				
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
		},
		["Strike"] = {
			["TF - Strike  - MAV F*2 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6000,
				hAttack = 5572,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {				
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - Snakeyes*4 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 276.5,
				hCruise = 6000,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {				
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{ALQ_164_RF_Jammer}",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "{BRU-42_2*Mk-82SNAKEYE_LEFT}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				[7] = {
					["CLSID"] = "{BRU-42_2*Mk-82SNAKEYE_RIGHT}",
					["num"] = 7,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - Mk-82 Air*4 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 276.5,
				hCruise = 6000,
				hAttack = 100,
				standoff = nil,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {				
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{ALQ_164_RF_Jammer}",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "{BRU-42_2*Mk-82AIR_RIGHT}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				[7] = {
					["CLSID"] = "{BRU-42_2*Mk-82AIR_LEFT}",
					["num"] = 7,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},	
			["TF - Strike  - GBU12*4 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Bridge", "soft", "Parked Aircraft", "SAM"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 6706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{BRU-42_2*GBU-12_RIGHT}",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "{BRU-42_2*GBU-12_LEFT}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - GBU16*2 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Bridge", "Structure"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 6706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - Guided Rocket*14 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = false,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 3706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{LAU-131 - 7 AGR-20 M282}",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "{LAU-131 - 7 AGR-20 M282}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - GBU38*4 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "Bridge"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 6706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "{BRU-42_2*GBU-38_LEFT}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				[7] = {
					["CLSID"] = "{BRU-42_2*GBU-38_RIGHT}",
					["num"] = 7,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - GBU32*2 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "Bridge", "Structure"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 6706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{GBU_32_V_2B}",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "{GBU_32_V_2B}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},
			["TF - Strike  - GBU-54*4 - AA*1 - AGM122*1 - FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM", "Bridge"},
				weaponType = "Guided bombs",
				expend = "Auto",
				day = false,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 277.5,
				hCruise = 6048,
				hAttack = 6706,
				standoff = 15000,
				tStation = nil,
				LDSD = false,
				--- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
				[8] = {
					["CLSID"] = "{AGM_122_SIDEARM}",
					["num"] = 8,
				},
				[1] = {
					["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "{GAU_12_Equalizer}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{BRU-70A_2*GBU-54_RIGHT}",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "{BRU-70A_2*GBU-54_LEFT}",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 6,
				},
				[3] = {
					["CLSID"] = "{AV8BNA_AERO1D}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = 3519,
				["flare"] = 120,
				["chaff"] = 60,
				["gun"] = 100,
				},
			},	
		},		
		-- ["SEAD"] = {
			-- ["AIM-122*2, AIM-9 *2, ECM*1"] = {
				-- attributes = {},
				-- -- weaponType = "ASM",
				-- -- expend = nil,
				-- attackType = "Dive",
				-- day = true,
				-- night = true,
				-- adverseWeather = true,
				-- range = 900000,
				-- capability = 1,
				-- firepower = 1,
				-- vCruise = 270,
				-- vAttack = 270,
				-- hCruise = 6096,
				-- hAttack = 4096,
				-- standoff = nil,
				-- tStation = nil,
				-- LDSD = false,
				-- self_escort = false,
				-- sortie_rate = 6,
				-- stores = {
				-- ["pylons"] = 
				-- {
				-- [8] = {
					-- ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					-- ["num"] = 8,
				-- },
				-- [1] = {
					-- ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
					-- ["num"] = 1,
				-- },
				-- [4] = {
					-- ["CLSID"] = "{GAU_12_Equalizer}",
					-- ["num"] = 4,
				-- },
				-- [7] = {
					-- ["CLSID"] = "{LAU_7_AGM_122_SIDEARM}",
					-- ["num"] = 7,
				-- },
				-- [2] = {
					-- ["CLSID"] = "{LAU_7_AGM_122_SIDEARM}",
					-- ["num"] = 2,
				-- },
				-- [5] = {
					-- ["CLSID"] = "{ALQ_164_RF_Jammer}",
					-- ["num"] = 5,
				-- },
				-- }, -- end of ["pylons"]
				-- ["fuel"] = 1408,
				-- ["flare"] = 120,
				-- ["chaff"] = 60,
				-- ["gun"] = 100,
				-- },
			-- },	
		-- },
	},
	["FA-18C_hornet"] = {
		["SEAD"] = {
			["SEAD TF - AGM-88*2,AIM-120C*2 - AIM-9X*2 - FT*3"] = {
				attributes = {},
				-- weaponType = "ASM",
				-- expend = nil,
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 270,
				sortie_rate = 12,
				stores = {
				["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 4,
				},
				}, -- end of ["pylons"]
                ["fuel"] = "4900",
                ["flare"] = 30,
                ["chaff"] = 60,
                ["gun"] = 100,
				},
			},
		},
		["Intercept"] = {
			["Intercept  TF - AIM-120C*10 - AIM-9X*2 - FT*1"] = {
				attributes = {},
				-- weaponType = nil,
				-- expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 250000,
				capability = 10,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
			["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 4,
				},
			},
				["fuel"] = "4900",
                ["flare"] = 30,
                ["chaff"] = 60,
                ["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["CAP TF - AIM-120C*6 - AIM-9X*2 - FT*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 450000,
				capability = 6,
				firepower = 1,
				vCruise = 213.83333333333,
				vAttack = 213.86666666667,
				hCruise = 7096,
				hAttack = 7096,
				-- standoff = 36000,
				tStation = 2700,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
			["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 4,
				},
			},
				["fuel"] = "4900",
                ["flare"] = 30,
                ["chaff"] = 60,
                ["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			[" Escort TF - AIM-120C*6 - AIM-9X*2 - FT*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 450000,
				capability = 5,
				firepower = 5,
				vCruise = 255.83333333333,
				-- vAttack = 346.66666666667,
				-- hCruise = 7096,
				-- hAttack = 7096,
				standoff = 72000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
			["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 4,
				},
			},
				["fuel"] = "4900",
                ["flare"] = 30,
                ["chaff"] = 60,
                ["gun"] = 100,
				},
			},
		},	
		["Fighter Sweep"] = {
			["Fighter Sweep TF - AIM-120C*6 - AIM-9X*2 - FT*3"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 450000,
				capability = 5,
				firepower = 5,
				vCruise = 255.83333333333,
				vAttack = 346.66666666667,
				hCruise = 7096,
				hAttack = 7096,
				standoff = 36000,
				tStation = nil,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
				stores = {
			["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "LAU-115_2*LAU-127_AIM-120C",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 4,
				},
			},
				["fuel"] = "4900",
                ["flare"] = 30,
                ["chaff"] = 60,
                ["gun"] = 100,
				},
			},
		},	
		["Anti-ship Strike"] = {
			-- ["Anti-ship Strike TF AGM-65F*2 - AIM-120C*1 - AIM-9X*2 - Pod - FT*3"] = {
				-- minscore = 0.3,
				-- support = {
					-- ["Escort"] = true,
					-- ["SEAD"] = false,
					-- ["Laser Illumination"] = false,					
				-- },
				-- attributes = {"ship"},
				-- weaponType = "ASM",
				-- expend = "Auto",
				-- day = true,
				-- night = true,
				-- adverseWeather = false,
				-- range = 650000,
				-- capability = 1,
				-- firepower = 1,
				-- vCruise = 245.83333333333,
				-- vAttack = 300.5,
				-- hCruise = 7486.4,
				-- hAttack = 7472,
				-- standoff = 10000,
				-- tStation = nil,
				-- LDSD = true,
				-- self_escort = false,
				-- sortie_rate = 6,
				-- stores = {
					-- ["pylons"] = {
				-- [9] = {
					-- ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					-- ["num"] = 9,
				-- },
				-- [1] = {
					-- ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					-- ["num"] = 1,
				-- },
				-- [8] = {
					-- ["CLSID"] = "LAU_117_AGM_65F",
					-- ["num"] = 8,
				-- },
				-- [2] = {
					-- ["CLSID"] = "LAU_117_AGM_65F",
					-- ["num"] = 2,
				-- },
				-- [7] = {
					-- ["CLSID"] = "{FPU_8A_FUEL_TANK}",
					-- ["num"] = 7,
				-- },
				-- [3] = {
					-- ["CLSID"] = "{FPU_8A_FUEL_TANK}",
					-- ["num"] = 3,
				-- },
				-- [5] = {
					-- ["CLSID"] = "{FPU_8A_FUEL_TANK}",
					-- ["num"] = 5,
				-- },
				-- [6] = {
					-- ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					-- ["num"] = 6,
				-- },
				-- [4] = {
					-- ["CLSID"] = "{AAQ-28_LEFT}",
					-- ["num"] = 4,
				-- },
			-- }, -- end of ["pylons"]
					-- ["fuel"] = "4900",
					-- ["flare"] = 30,
					-- ["chaff"] = 60,
					-- ["gun"] = 100,
				-- },
			-- },
		["Antiship TF AGM-84D*4, AIM-9X*2, AIM-120C*1, DP, FT*1"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
					["Laser Illumination"] = false,					
				},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "Auto",
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 215.83333333333,
				vAttack = 300.5,
				hCruise = 5486.4,
				hAttack = 4572,
				standoff = 50000,
				tStation = nil,
				LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{AGM_84D}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{AGM_84D}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{AGM_84D}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{AGM_84D}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},			
		},	
		["Strike"] = {
			["Strike TF AGM-65F*2 - AIM-120C*1 - AIM-9X*2 - Pod - FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = "Dive",
				day = true,
				night = true,
				adverseWeather = false,
				range = 250000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 7472,
				standoff = 9000,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "LAU_117_AGM_65F",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike GBU-38*4, AIM-120B*1, AIM-9M*2, Pod, FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "Guided bombs",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 8172,
				standoff = 20000,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{BRU55_2*GBU-38}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{BRU55_2*GBU-38}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike TF AGM-154/A*4, AIM-120C*1, AIM-9X*2, Pod, FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 7472,
				standoff = 43000,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{BRU55_2*AGM-154A}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{BRU55_2*AGM-154A}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike TF AGM-154/C*4, AIM-120C*1, AIM-9X*2, Pod, FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "soft", "Parked Aircraft", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 7472,
				standoff = 43000,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{BRU55_2*AGM-154C}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{BRU55_2*AGM-154C}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike TF GBU-12*4, AIM-120C*1, AIM-9X*2, DP,FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Bridge"},
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
				hAttack = 7472,
				standoff = nil,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{BRU33_2X_GBU-12}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{BRU33_2X_GBU-12}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
			["Strike TF GBU-16*2, AIM-120C*1, AIM-9X*2, DP,FT*3"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Bridge"},
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
				hAttack = 7472,
				standoff = nil,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},			
			["Strike TF GBU-31*2, AIM-120C*1, AIM-9X*2, Pod, FT*3"] = {
				minscore = 0.7,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
				weaponType = "Guided bombs",
				expend = "Auto",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 650000,
				capability = 1,
				firepower = 1,
				vCruise = 245.83333333333,
				vAttack = 300.5,
				hCruise = 7486.4,
				hAttack = 8172,
				standoff = 20000,
				tStation = nil,
				-- LDSD = true,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = {
				[9] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 9,
				},
				[1] = {
					["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
					["num"] = 1,
				},
				[8] = {
					["CLSID"] = "{GBU-31}",
					["num"] = 8,
				},
				[2] = {
					["CLSID"] = "{GBU-31}",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{FPU_8A_FUEL_TANK}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "{AAQ-28_LEFT}",
					["num"] = 4,
				},
			}, -- end of ["pylons"]
					["fuel"] = "4900",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},		
	["F-14B"] = {
		["Intercept"] = {
			["AIM-54C-MK47*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- self_escort = false,
				sortie_rate = 12,
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
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 7,
				},
				[6] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AIM_54C_Mk47}",
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
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
			AddPropAircraft = 
		{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
		},
		},
			["Intercept AIM-54C-MK47*6, AIM-9M*2, XT*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- self_escort = false,
				sortie_rate = 6,
				stores = {
			["pylons"] = {
				[10] = {
					["CLSID"] = "{LAU-138 wtip - AIM-9M}",
					["num"] = 10,
				},
				[9] = {
					["CLSID"] = "{SHOULDER AIM_54C_Mk47 R}",
					["num"] = 9,
				},
				[8] = {
					["CLSID"] = "{F14-300gal}",
					["num"] = 8,
				},
				[7] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 7,
				},
				[6] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 4,
				},
				[3] = {
					["CLSID"] = "{F14-300gal}",
					["num"] = 3,
				},
				[2] = {
					["CLSID"] = "{SHOULDER AIM_54C_Mk47 L}",
					["num"] = 2,
				},
				[1] = {
					["CLSID"] = "{LAU-138 wtip - AIM-9M}",
					["num"] = 1,
				},
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
		},
		["CAP"] = {
			["AIM-54C-MK47*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 100300,
				tStation = 3600,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 12,
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
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 7,
				},
				[6] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AIM_54C_Mk47}",
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
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
		},
		["Escort"] = {
			["AIM-54C-MK47*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 5,
				vCruise = 255.83333333333,
				standoff = 80300,
				-- tStation = 7200,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 8,
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
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 7,
				},
				[6] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AIM_54C_Mk47}",
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
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
		},		
		["Fighter Sweep"] = {
			["AIM-54C-MK47*4, AIM-7M*2, AIM-9M*2, XT*2"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 5,
				vCruise = 255.83333333333,
				vAttack = 315.83333333333,
				hCruise = 9753.6,
				hAttack = 9753.6,
				standoff = 100300,
				tStation = 7200,
				LDSD = true,
				self_escort = true,
				sortie_rate = 6,
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
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 7,
				},
				[6] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AIM_54C_Mk47}",
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
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
		},
		["Strike"] = {
			["Strike TF GBU-12*4, AIM-9M*2, AIM-7M*1,Lantirn, FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"soft", "Structure", "Bridge"},
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
					["CLSID"] = "{BRU-32 GBU-12}",
					["num"] = 7,
				},
				[4] = {
					["CLSID"] = "{BRU-32 GBU-12}",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "{BRU-32 GBU-12}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{BRU-32 GBU-12}",
					["num"] = 5,
				},
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
			["Strike TF GBU-16*4, AIM-9M*2, AIM-7M*1,Lantirn, FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
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
					["CLSID"] = "{BRU-32 GBU-16}",
					["num"] = 7,
				},
				[4] = {
					["CLSID"] = "{BRU-32 GBU-16}",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "{BRU-32 GBU-16}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{BRU-32 GBU-16}",
					["num"] = 5,
				},
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
			["Strike TF GBU-10*2, AIM-54C,*2AIM-9M*2, AIM-7M*1,Lantirn, FT*2"] = {
				minscore = 0.3,
				support = {
					["Escort"] = true,
					["SEAD"] = true,
				},
				attributes = {"Structure", "Bridge"},
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
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "{AIM_54C_Mk47}",
					["num"] = 5,
				},
			}, -- end of ["pylons"]
					["fuel"] = "7348",
					["flare"] = 60,
					["chaff"] = 140,
					["gun"] = 100,
				},
				AddPropAircraft = 
	{
		["LGB100"] = 6,
		["M61BURST"] = 0,
		["IlsChannel"] = 11,				-- preset ILS channel
		["LGB1"] = 8,
		["KY28Key"] = 1,
		["TacanBand"] = 0,
		["ALE39Loadout"] = 3,
		["UseLAU138"] = true,
		["LGB10"] = 8,
		["INSAlignmentStored"] = true,		-- fast alignment, remember to modify also the value: "startup_time_player" in this file
		["TacanChannel"] = 37,				-- preset TACAN channel
		["LGB1000"] = 1,
	},
			},
		},		
	},	
	["B-52H"] = {
		["Strike"] = {
			-- ["Strike Mk-84*18"] = {
				-- support = {
					-- ["Escort"] = true,
					-- ["SEAD"] = true,
				-- },
				-- attributes = {"Structure"},
				-- weaponType = "Bombs",
				-- expend = "All",
				-- day = false,
				-- night = true,
				-- adverseWeather = true,
				-- range = 1000000,
				-- capability = 5,
				-- firepower = 30,
				-- vCruise = 231.25,
				-- vAttack = 256.94444444444,
				-- hCruise = 8315.2,
				-- hAttack = 8315.2,
				-- standoff = nil,
				-- tStation = nil,
				-- LDSD = false,
				-- self_escort = false,
				-- sortie_rate = 1.5,
				-- stores = {
					-- ["pylons"] = 
					-- {
						-- [1] = 
						-- {
							-- ["CLSID"] = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}",
						-- }, -- end of [1]
						-- [3] = 
						-- {
							-- ["CLSID"] = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}",
						-- }, -- end of [3]
					-- }, -- end of ["pylons"]
					-- ["fuel"] = "141135",
					-- ["flare"] = 192,
					-- ["chaff"] = 1125,
					-- ["gun"] = 100,
				-- },
			-- },
			["Strike TF  AGM-86C*20"] = {
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
					["pylons"] = 
					{
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
					}, -- end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
					},
				},
		},
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
					["pylons"] = 
					{
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
					}, -- end of ["pylons"]
					["fuel"] = "141135",
					["flare"] = 192,
					["chaff"] = 1125,
					["gun"] = 100,
			},
		},
	},	
	["B-1B"] = {
		["Strike"] = {
			["Strike TF AGM-154*12"] = {
				minscore = 0.5,
				support = {
					["Escort"] = true,
					["SEAD"] = false,
				},
				attributes = {"Structure", "SAM"},
				weaponType = "ASM",
				expend = "Auto",
				attackType = nil,
				day = false,
				night = true,
				adverseWeather = true,
				range = 1000000,
				capability = 10,
				firepower = 1.5,
				vCruise = 250.25,
				vAttack = 356.94444444444,
				hCruise = 7315.2,
				hAttack = 7315.2,
				standoff = 43000,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
					[1] = {
					["CLSID"] = "{AABA1A14-78A1-4E85-94DD-463CF75BD9E4}",
					["num"] = 1,
					},
					[2] = {
					["CLSID"] = "{AABA1A14-78A1-4E85-94DD-463CF75BD9E4}",
					["num"] = 2,
					},
					[3] = {
					["CLSID"] = "{AABA1A14-78A1-4E85-94DD-463CF75BD9E4}",
					["num"] = 3,
					},
					},
					["fuel"] = "88450",
					["flare"] = 30,
					["chaff"] = 60,
					["gun"] = 100,
				},
			},
		},
	},
	["E-2C"] = {
		["AWACS"] = {
			["Default"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 10,
				firepower = 1,
				vCruise = 152.778,
				vAttack = 138.889,
				hCruise = 7315.2,
				hAttack = 7315.2,
				tStation = 14400,
				sortie_rate = 12,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "65000",
					["flare"] = 60,
					["chaff"] = 120,
					["gun"] = 100,
				},
			},
		},
	},
	["SH-60B"] = {
		["CAP"] = {
			["SAR"] = {
				attributes = {"Lincoln SAR"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 100000,
				capability = 1,
				firepower = 1,
				vCruise = 7.717,
				vAttack = 7.717,
				hCruise = 200,
				hAttack = 200,
				tStation = 7200,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = {}, -- end of [1]
					}, -- end of ["pylons"]
					["fuel"] = "1100",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},
	["S-3B Tanker"] = {
		["Refueling"] = {
			["Low Track"] = {
				attributes = {"low"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 0.4,
				firepower = 1,
				vCruise = 200,
				vAttack = 150,
				hCruise = 1828.8,
				hAttack = 1828.8,
				tStation = 10800,
				sortie_rate = 12,
				stores = {
					["pylons"] = {},
					["fuel"] = 7813,
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
			["Medium Track"] = {
				attributes = {"medium"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 500000,
				capability = 0.4,
				firepower = 1,
				vCruise = 200,
				vAttack = 150,
				hCruise = 6096,
				hAttack = 6096,
				tStation = 10800,
				sortie_rate = 12,
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
	["S-3B"] = {
		["CAP"] = {
			["ASW Patrol"] = {
				attributes = {"Viking"},
				day = true,
				night = true,
				adverseWeather = true,
				range = 150000,
				capability = 0,
				firepower = 1,
				vCruise = 166.667,
				vAttack = 127.778,
				hCruise = 1828.8,
				hAttack = 304.8,
				tStation = 10800,
				sortie_rate = 6,
				stores = {
					["pylons"] = 
					{
						[1] = 
						{
							["CLSID"] = "{A504D93B-4E80-4B4F-A533-0D9B65F2C55F}",
						}, -- end of [1]
						[6] = 
						{
							["CLSID"] = "{A504D93B-4E80-4B4F-A533-0D9B65F2C55F}",
						}, -- end of [6]
					}, -- end of ["pylons"]
					["fuel"] = "5500",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},		
	["SH-60B"] = {
		["CAP"] = {
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
					["pylons"] = 
					{
						[1] = {}, -- end of [1]
					}, -- end of ["pylons"]
					["fuel"] = "1100",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
	},	
	["MiG-29A"] = {
		["Intercept"] = {
			["Intercept R-73*4 - R-27ER*1 - R-27ET*1 - FT"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 200000,
				capability = 5,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 10,
				stores = {
					["pylons"] = 
					{
				[7] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 7,
				},
				[1] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 1,
				},
				[6] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 6,
				},
				[2] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 3,
				},
					}, -- end of ["pylons"]
					["fuel"] = "3380",
					["flare"] = 30,
					["chaff"] = 30,
					["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["Escort  - R-73*4 - R-27ER*1 - R-27ET*1 - FT"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 700000,
				capability = 5,
				firepower = 1,
				vCruise = 260.83333333333,
				-- vAttack = 315.83333333333,
				-- hCruise = 7011,
				-- hAttack = 7011,
				standoff = 50000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
				{
				[7] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 7,
				},
				[1] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 1,
				},
				[6] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 6,
				},
				[2] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},
		},
		["CAP"] = {
			["CAP R-73*4 - R-27ER*1 - R-27ET*1 - FT"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 400000,
				capability = 5,
				firepower = 1,
				vCruise = 213.83333333333,
				vAttack = 213.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				-- standoff = 27000,
				tStation = 4000,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
				{
				[7] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 7,
				},
				[1] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 1,
				},
				[6] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 6,
				},
				[2] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},
		},
		["Fighter Sweep"] = {
			["Fighter Sweep R-73*4 - R-27ER*1 - R-27ET*1 - FT"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability = 5,
				firepower = 1,
				vCruise = 260.83333333333,
				vAttack = 315.83333333333,
				hCruise = 7011,
				hAttack = 7011,
				standoff = 60000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
				{
				[7] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 7,
				},
				[1] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 1,
				},
				[6] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 6,
				},
				[2] = {
					["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
					["num"] = 3,
				},
				}, -- end of ["pylons"]
				["fuel"] = "3380",
				["flare"] = 30,
				["chaff"] = 30,
				["gun"] = 100,
				},
			},	
		},		
	},		
	["Su-27"] = {
		["Intercept"] = {
			["Intercept R-73*2,R-27ER*4,R-27ET*2,ECM"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability = 10,
				firepower = 1,
				-- vCruise = nil,
				-- vAttack = nil,
				-- hCruise = nil,
				-- hAttack = nil,
				-- standoff = nil,
				-- tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 10,
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
				["fuel"] = 5590.18,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},	
		},	
		["Fighter Sweep"] = {
			["Sweep R-73*2,R-27ER*4,R-27ET*2,ECM"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 260.222,
				vAttack = 300.555,
				hCruise = 8500,
				hAttack = 8500,
				standoff = 70000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
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
				["fuel"] = 5590.18,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["Escort R-73*2,R-27ER*4,R-27ET*2,ECM"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 260.222,
				vAttack = 300.555,
				hCruise = 8500,
				hAttack = 8500,
				standoff = 70000,
				tStation = nil,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
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
				["fuel"] = 5590.18,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},
		},		
		["CAP"] = {
			["CAP R-73*2,R-27ER*4,R-27ET*2,ECM"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  10,
				firepower = 1,
				vCruise = 213.222,
				vAttack = 213.555,
				hCruise = 8500,
				hAttack = 8500,
				standoff = 70000,
				tStation = 3700,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
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
				["fuel"] = 5590.18,
				["flare"] = 96,
				["chaff"] = 96,
				["gun"] = 100,
				},
			},
		},
	},
	["MiG-31"] = {
		["Intercept"] = {
			["Intercept  R-60M*4,R-33*4"] = {
				attributes = {},
				weaponType = nil,
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
				["pylons"] = {
				[1] = {
					["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					["num"] = 6,
				},
				},	
				["fuel"] = 15500,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
				},
			},	
		},	
		["Fighter Sweep"] = {
			["Intercept  R-60M*4,R-33*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 300,
				vAttack = 500.555,
				hCruise = 10500,
				hAttack = 10000,
				standoff = 100000,
				-- tStation = 2700,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = {
					["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					["num"] = 6,
				},
				},
				["fuel"] = 15500,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
				},
			},
		},
		["Escort"] = {
			["Intercept  R-60M*4,R-33*4"] = {
				attributes = {},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 800000,
				capability =  10,
				firepower = 1,
				vCruise = 300,
				vAttack = 500.555,
				hCruise = 10500,
				hAttack = 10000,
				standoff = 100000,
				-- tStation = 2700,
				LDSD = true,
				-- self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = {
					[1] = {
					["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					["num"] = 6,
				},
				},
				["fuel"] = 15500,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
				},
			},
		},		
		["CAP"] = {
			["Intercept  R-60M*4,R-33*4"] = {
				attributes = {"Mig-31"},
				weaponType = nil,
				expend = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 600000,
				capability =  10,
				firepower = 1,
				vCruise = 220,
				vAttack = 220.555,
				hCruise = 10500,
				hAttack = 10000,
				standoff = 100000,
				tStation = 3700,
				LDSD = true,
				-- self_escort = true,
				sortie_rate = 12,
				stores = {
				["pylons"] = {
					[1] = {
					["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 4,
				},
				[5] = {
					["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					["num"] = 6,
				},
				},
				["fuel"] = 15500,
				["flare"] = 0,
				["chaff"] = 0,
				["gun"] = 100,
				},
			},
		},
	},	
	["Tu-22M3"] = {	
		["Anti-ship Strike"] = {
			["Antiship  Kh-22N*3"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 250,
				vAttack = 300,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 200000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
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
					}, -- end of [8]
                }, -- end of ["pylons"]	
				["fuel"] = "50000",
                ["flare"] = 48,
                ["chaff"] = 48,
                ["gun"] = 100,
				},
			},
		},
	},
	["Su-25TM"] = {	
		["Anti-ship Strike"] = {
			["Antiship Kh-35*2_R-73*2_Fuel*2_MPS410_Kopyo-25"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 220,
				vAttack = 260,
				hCruise = 296,
				hAttack = 296,
				standoff = 110000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
				[1] = 
                    {
                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
                    }, -- end of [1]
                [2] = 
                    {
					["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [2]
                [3] = 
                    {
                    ["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
                    }, -- end of [3]
                [5] = 
                    {
                    ["CLSID"] = "{2234F529-1D57-4496-8BB0-0150F9BDBBD3}",
                    }, -- end of [5]
                [6] = 
                    {
                    ["CLSID"] = "{F4920E62-A99A-11d8-9897-000476191836}",
                    }, -- end of [6]
                [7] = 
                    {
                    ["CLSID"] = "{2234F529-1D57-4496-8BB0-0150F9BDBBD3}",
                    }, -- end of [7]
                [9] = 
                    {
                    ["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
                    }, -- end of [9]
                [10] = 
                    {
                    ["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
					}, -- end of [10]
                [11] = 
                    {
                ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
                    }, -- end of [8]
                }, -- end of ["pylons"]	
				["fuel"] = "3790",
                ["flare"] = 128,
                ["chaff"] = 128,
                ["gun"] = 100,
				},
			},
			["Antiship Kh-31A*2_R-73*2_Fuel*2_MPS410_Kopyo-25"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 220,
				vAttack = 260,
				hCruise = 296,
				hAttack = 296,
				standoff = 110000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
				[1] = {
					["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 2,
				},
				[3] = {
					["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{4D13E282-DF46-4B23-864A-A9423DFDE50A}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "{F4920E62-A99A-11d8-9897-000476191836}",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "{4D13E282-DF46-4B23-864A-A9423DFDE50A}",
					["num"] = 7,
				},
				[9] = {
					["CLSID"] = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
					["num"] = 9,
				},
				[10] = {
					["CLSID"] = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",
					["num"] = 10,
				},
				[11] = {
					["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
					["num"] = 11,
				}, -- end of [8]
                }, -- end of ["pylons"]	
				["fuel"] = "3790",
                ["flare"] = 128,
                ["chaff"] = 128,
                ["gun"] = 100,
				},
			},
		},
	},	
	["Tu-142"] = {	
		["Anti-ship Strike"] = {
			["Antiship Kh-35*6"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 220,
				vAttack = 250,
				hCruise = 10096,
				hAttack = 10096,
				standoff = 110000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
					[1] = {
					["CLSID"] = "{C42EE4C3-355C-4B83-8B22-B39430B8F4AE}",
					["num"] = 1,
					},
                }, -- end of ["pylons"]	
				["fuel"] = "60000",
                ["flare"] = 48,
                ["chaff"] = 48,
                ["gun"] = 100,
				},
			},
		},
	},	
	["Su-24MR"] = {
		["Reconnaissance"] = {
			["Reco TANGAZH,ETHER,R-60M*2,Fuel*2"] = {
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
				firepower = 10,
				vCruise = 250,
				vAttack = 350,
				hCruise = 10096,
				hAttack = 10096,
				standoff = nil,
				tStation = 2000,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
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
	["Su-24M"] = {
		["Anti-ship Strike"] = {
			["Antiship, R-60M*4, Kh-59M*2, Fuel"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 250,
				vAttack = 350,
				hCruise = 296,
				hAttack = 296,
				standoff = 100000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
					[1] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
					}, -- end of [2]
					[5] = 
					{
						["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
					}, -- end of [5]
					[7] = 
					{
						["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
					}, -- end of [8]
                }, -- end of ["pylons"]	
				["fuel"] = "11700",
                ["flare"] = 96,
                ["chaff"] = 96,
                ["gun"] = 100,
				},
			},
		},
		["Anti-ship Strike"] = {
			["Antiship, R-60M*4, Kh-59M*2, Fuel"] = {
					minscore = 0.5,
					support = {
						["Escort"] = true,
						["SEAD"] = false,
					},
				attributes = {"ship"},
				weaponType = "ASM",
				expend = "All",
				attackType = nil,
				day = true,
				night = true,
				adverseWeather = true,
				range = 900000,
				capability = 10,
				firepower = 1,
				vCruise = 250,
				vAttack = 350,
				hCruise = 6096,
				hAttack = 6096,
				standoff = 100000,
				ingress = 50000,
				egress = 10000,
				MaxAttackOffset = 60,
				tStation = nil,
				LDSD = false,
				self_escort = false,
				sortie_rate = 6,
				stores = {
				["pylons"] = 
                {
					[1] = 
					{
						["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
					}, -- end of [1]
					[2] = 
					{
						["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
					}, -- end of [2]
					[5] = 
					{
						["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
					}, -- end of [5]
					[7] = 
					{
						["CLSID"] = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
					}, -- end of [7]
					[8] = 
					{
						["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
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
	["Mi-8MT"] = {
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
					["pylons"] = 
					{
					[8] = {
					["CLSID"] = "PKT_7_62",
					["num"] = 8,
					},
					[7] = {
					["CLSID"] = "KORD_12_7",
					["num"] = 7,
					},
					}, -- end of ["pylons"]
					["fuel"] = "1929",
                    ["flare"] = 128,
                    ["chaff"] = 0,
                    ["gun"] = 100,
				},
			},
		},
	},
	["Mi-26"] = {
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
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "9600",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},
	["Mi-24V"] = {
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
					["pylons"] = 
					{
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
					}, -- end of ["pylons"]
					["fuel"] = "1704",
					["flare"] = 192,
					["chaff"] = 0,
					["gun"] = 100,
				},
			},
		},
	},
	["A-50"] = {
		["AWACS"] = {
			["Default"] = {
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
				sortie_rate = 12,
				stores = {
					["pylons"] = 
					{
					}, -- end of ["pylons"]
					["fuel"] = "70000",
					["flare"] = 192,
					["chaff"] = 192,
					["gun"] = 100,
				},
			},
		},
	},	
	["An-26B"] = {
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
					}, -- end of ["pylons"]
					["fuel"] = "5500",
					["flare"] = 384,
					["chaff"] = 384,
					["gun"] = 100,
				},
			},
		},
	},	
}
	