db_loadouts = {
	['E-3A'] = {
		['AWACS'] = {
			['Default'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 9753.6,
				['attributes'] = {
					[1] = 'Sentry',
				},
				['tStation'] = 36000,
				['vCruise'] = 231.25,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '65000',
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 231.25,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 12,
			},
		},
	},
	['An-26B'] = {
		['Transport'] = {
			['Default'] = {
				['hCruise'] = 3500,
				['night'] = false,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 3500,
				['attributes'] = {
				},
				['vCruise'] = 154.16666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '5500',
					['flare'] = 384,
					['chaff'] = 384,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 154.16666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
	},
	['E-2C'] = {
		['AWACS'] = {
			['Default'] = {
				['hCruise'] = 7315.2,
				['night'] = true,
				['capability'] = 10,
				['range'] = 500000,
				['hAttack'] = 7315.2,
				['attributes'] = {
					[1] = 'AEW',
				},
				['tStation'] = 14400,
				['vCruise'] = 152.778,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '65000',
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['adverseWeather'] = true,
				['vAttack'] = 138.889,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 12,
			},
		},
	},
	['Mi-24P'] = {
		['Escort'] = {
			['Escort 2xB8V20+4xATGM_AT9-Heat+4xATGM_AT9-AA'] = {
				['night'] = true,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'HWITC',
					[3] = 'Crisis',
				},
				['capability'] = 1,
				['LDSD'] = false,
				['range'] = 80000,
				['stores'] = {
					['pylons'] = {
						[3] = {
							['CLSID'] = 'GUV_YakB_GSHP',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 6,
						},
						[4] = {
							['CLSID'] = 'GUV_YakB_GSHP',
							['num'] = 4,
						},
						[1] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 1,
						},
					},
					['fuel'] = 799,
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['day'] = true,
				['standoff'] = 3000,
				['attributes'] = {
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
		},
		['Strike'] = {
			['Strike 2xB8V20+8xATGM_AT9-Heat'] = {
				['hCruise'] = 50,
				['night'] = false,
				['standoff'] = 3000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['minscore'] = 0.1,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'HWITC',
					[3] = 'Crisis',
				},
				['stores'] = {
					['pylons'] = {
						[6] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 6,
						},
						[2] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 2,
						},
						[3] = {
							['CLSID'] = '{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}',
							['num'] = 3,
						},
						[1] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 1,
						},
						[4] = {
							['CLSID'] = '{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}',
							['num'] = 4,
						},
						[5] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 5,
						},
					},
					['fuel'] = 1055,
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'SAM',
				},
				['self_escort'] = false,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 100000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
			['Strike - Structures - AT9Heat*4 + S-24B*4'] = {
				['hCruise'] = 50,
				['night'] = false,
				['standoff'] = 1000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['minscore'] = 0.3,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[6] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 6,
						},
						[2] = {
							['CLSID'] = '{APU_68_S-24}',
							['num'] = 2,
						},
						[3] = {
							['CLSID'] = '{APU_68_S-24}',
							['num'] = 3,
						},
						[1] = {
							['CLSID'] = '{2x9M120_Ataka_V}',
							['num'] = 1,
						},
						[4] = {
							['CLSID'] = '{APU_68_S-24}',
							['num'] = 4,
						},
						[5] = {
							['CLSID'] = '{APU_68_S-24}',
							['num'] = 5,
						},
					},
					['fuel'] = 1055,
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'Structure',
				},
				['self_escort'] = false,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 100000,
				['day'] = true,
				['weaponType'] = 'Rockets',
				['sortie_rate'] = 6,
			},
		},
	},
	['KC130'] = {
		['Refueling'] = {
			['Default'] = {
				['hCruise'] = 7315.2,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 7315.2,
				['attributes'] = {
				},
				['tStation'] = 21600,
				['vCruise'] = 216.66666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 20830,
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 216.66666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 1.5,
			},
		},
	},
	['F-16C_50'] = {
		['Strike'] = {
			['Mk-84*2, AIM-120B*2, AIM-9L*2, FUEL*3, Pod'] = {
				['hCruise'] = 5486.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Strike Turkey Cyprus AG - AGM65D*4'] = {
				['hCruise'] = 7000,
				['night'] = false,
				['standoff'] = 10000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 7100,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98453}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98452}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 8,
			},
			['Strike GBU-12*4, AIM-120B*2, AIM-9L*2, FUEL*2, TP'] = {
				['hCruise'] = 7000,
				['night'] = false,
				['standoff'] = 15000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 7100,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.4,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{TER_9A_2R*GBU-12}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{TER_9A_2L*GBU-12}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
						[11] = {
							['CLSID'] = '{A111396E-D3E8-4b9c-8AC9-2432489304D5}',
							['num'] = 11,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'Bridge',
					[2] = 'soft',
					[3] = 'Parked Aircraft',
					[4] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Guided bombs',
				['sortie_rate'] = 8,
			},
			['CBU-97*4, AIM-120B*2, AIM-9L*2, FT*3,pod'] = {
				['hCruise'] = 5486.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.4,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{TER_9A_2R*CBU-97}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{TER_9A_2L*CBU-97}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Mk-82*6, AIM-120B*2, AIM-9L*2, FUEL*3, Pod'] = {
				['hCruise'] = 5486.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{TER_9A_3*MK-82}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{TER_9A_3*MK-82}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Mk-82HD*6 , AIM-120B*2, AIM-9L*2, FUEL*3, Pod'] = {
				['hCruise'] = 3000.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 300,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.2,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{TER_9A_3*MK-82_Snakeye}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{TER_9A_3*MK-82_Snakeye}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 315.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Strike GBU-10*2, AIM-120B*2, AIM-9L*2, FUEL*3, TP'] = {
				['hCruise'] = 7000,
				['night'] = false,
				['standoff'] = 15000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 7100,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.4,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
						[11] = {
							['CLSID'] = '{A111396E-D3E8-4b9c-8AC9-2432489304D5}',
							['num'] = 11,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'Structure',
					[2] = 'Bridge',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Guided bombs',
				['sortie_rate'] = 8,
			},
		},
		['Fighter Sweep'] = {
			['AIM-120B*4, AIM-9L*2, FT*3'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['standoff'] = 46300,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
			['AIM-120B*2, AIM-9L*4, FT*3'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['standoff'] = 46300,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['Escort'] = {
			['AIM-120B*4, AIM-9L*2, FT*3'] = {
				['night'] = true,
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['day'] = true,
				['standoff'] = 46300,
				['attributes'] = {
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
			['AIM-120B*2, AIM-9L*4, FT*3'] = {
				['night'] = true,
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['day'] = true,
				['standoff'] = 46300,
				['attributes'] = {
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
		},
		['CAP'] = {
			['AIM-120B*4, AIM-9L*2, FT*3'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['standoff'] = 46300,
				['capability'] = 1,
				['range'] = 450000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['tStation'] = 7200,
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
			['AIM-120B*2, AIM-9L*4, FT*3'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['standoff'] = 46300,
				['capability'] = 1,
				['range'] = 450000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['tStation'] = 7200,
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['SEAD'] = {
			['SEAD LR - AGM-88*2, AIM-9L*2, AIM-120B*2, Fuel*3'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 6096,
				['attributes'] = {
				},
				['vCruise'] = 270,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 270,
				['day'] = true,
				['firepower'] = 1,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
		['Intercept'] = {
			[' AA AIM-120B*2, AIM-9L*4, FT*3'] = {
				['night'] = true,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['attributes'] = {
				},
				['day'] = true,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 10,
			},
			[' AA AIM-120B*4, AIM-9L*2, FT*3'] = {
				['night'] = true,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{C8E06185-7CD6-4C90-959F-044679E90751}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8A0BE8AE-58D4-4572-9263-3144C0D06364}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{AIM-9L}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3249,
					['flare'] = 60,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['attributes'] = {
				},
				['day'] = true,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 10,
			},
		},
	},
	['Mi-24V'] = {
		['Escort'] = {
			['Escort 4x9M114, 2xUPK-23'] = {
				['hCruise'] = 50,
				['night'] = true,
				['standoff'] = 3000,
				['capability'] = 1,
				['range'] = 80000,
				['hAttack'] = 50,
				['attributes'] = {
				},
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
						[1] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{05544F1A-C39C-466b-BC37-5BD1D52E57BB}',
							['num'] = 2,
						},
						[6] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 6,
						},
						[5] = {
							['CLSID'] = '{05544F1A-C39C-466b-BC37-5BD1D52E57BB}',
							['num'] = 5,
						},
					},
					['fuel'] = 1551,
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['day'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['self_escort'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['Strike'] = {
			['Strike - 8x9M114, 2xUPK-23'] = {
				['hCruise'] = 50,
				['night'] = true,
				['standoff'] = 3000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
						[6] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 6,
						},
						[2] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 2,
						},
						[3] = {
							['CLSID'] = '{05544F1A-C39C-466b-BC37-5BD1D52E57BB}',
							['num'] = 3,
						},
						[1] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 1,
						},
						[4] = {
							['CLSID'] = '{05544F1A-C39C-466b-BC37-5BD1D52E57BB}',
							['num'] = 4,
						},
						[5] = {
							['CLSID'] = '{B919B0F4-7C25-455E-9A02-CEA51DB895E3}',
							['num'] = 5,
						},
					},
					['fuel'] = 1551,
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['self_escort'] = false,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 80000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
	},
	['KC-135'] = {
		['Refueling'] = {
			['Default'] = {
				['hCruise'] = 7000,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 7000,
				['attributes'] = {
					[1] = 'KC135',
				},
				['tStation'] = 21600,
				['vCruise'] = 216.66666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 90700,
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 216.66666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
	},
	['M-2000C'] = {
		['Strike'] = {
			['80s 90s 2000s SR AG MK82*8,MagicII*2,FT*1'] = {
				['hCruise'] = 4876.8,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_RAFAUT_MK82}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_RAFAUT_MK82}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
					[4] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 130000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['80s 90s 2000s SR AG MK82HD*8,MagicII*2,FT*1'] = {
				['hCruise'] = 300.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 200,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.2,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_RAFAUT_MK82A}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_RAFAUT_MK82A}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
					[4] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 350.5,
				['range'] = 130000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['80s 90s 2000s LR AG MK82HD*4,MagicII*2,FT*3'] = {
				['hCruise'] = 300.4,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 200,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.2,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_02_RPL541}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_08_RPL541}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{Mk82AIR}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
					[4] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 350.5,
				['range'] = 350000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['80s 90s 2000s SR AG Belouga*8,MagicII*2,FT*1'] = {
				['hCruise'] = 300.4,
				['night'] = false,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 200,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.2,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_RAFAUT_BLG66}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_RAFAUT_BLG66}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 350.5,
				['range'] = 130000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['80s 90s 2000s LR AG Belouga*4,MagicII*2,FT*3'] = {
				['hCruise'] = 300.4,
				['night'] = false,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 200,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.2,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_02_RPL541}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_08_RPL541}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{BLG66_BELOUGA_AC}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 350.5,
				['range'] = 360000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['80s 90s 2000s LR AG MK82*4,MagicII*2,FT*3'] = {
				['hCruise'] = 4876.8,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{M2KC_02_RPL541}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{M2KC_08_RPL541}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{BCE4E030-38E9-423E-98ED-24BE3DA87C32}',
							['num'] = 6,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
					[4] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 360000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
		},
		['Fighter Sweep'] = {
			['80s 90s 2000s MagicII*2, S-530D*2, FT*1'] = {
				['hCruise'] = 7011,
				['night'] = true,
				['standoff'] = 27000,
				['capability'] = 1,
				['range'] = 360000,
				['hAttack'] = 7011,
				['attributes'] = {
				},
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[2] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 2,
						},
						[8] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 8,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['Escort'] = {
			['80s 90s 2000s MagicII*2, S-530D*2, FT*1'] = {
				['night'] = true,
				['vCruise'] = 270,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 250000,
				['stores'] = {
					['pylons'] = {
						[2] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 2,
						},
						[8] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 8,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['day'] = true,
				['standoff'] = 27000,
				['attributes'] = {
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
		},
		['CAP'] = {
			['80s 90s 2000s Day, MagicII*2, S-530D*2, FT*1'] = {
				['hCruise'] = 6096,
				['night'] = false,
				['standoff'] = 36000,
				['capability'] = 1,
				['range'] = 250000,
				['hAttack'] = 6096,
				['attributes'] = {
					[1] = 'Air Forces',
				},
				['tStation'] = 1800,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['stores'] = {
					['pylons'] = {
						[2] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 2,
						},
						[8] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 8,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 246.66666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 10,
			},
		},
		['Intercept'] = {
			['80s 90s 2000s Day, MagicII*2, S-530D*2, FT*1'] = {
				['night'] = false,
				['code_loadout'] = {
					[1] = 'Cyprus',
					[2] = 'Crisis',
					[3] = 'PG',
					[4] = 'Caucasus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 400000,
				['stores'] = {
					['pylons'] = {
						[2] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 2,
						},
						[8] = {
							['CLSID'] = '{Matra_S530D}',
							['num'] = 8,
						},
						[1] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 1,
						},
						[5] = {
							['CLSID'] = '{M2KC_RPL_522}',
							['num'] = 5,
						},
						[9] = {
							['CLSID'] = '{MMagicII}',
							['num'] = 9,
						},
					},
					['fuel'] = 3165,
					['flare'] = 48,
					['chaff'] = 112,
					['gun'] = 100,
				},
				['attributes'] = {
				},
				['day'] = true,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 10,
			},
		},
	},
	['Il-76MD'] = {
		['Transport'] = {
			['Default'] = {
				['hCruise'] = 3500,
				['night'] = false,
				['capability'] = 10,
				['range'] = 500000,
				['hAttack'] = 3500,
				['attributes'] = {
				},
				['vCruise'] = 154.16666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 40000,
					['flare'] = 96,
					['chaff'] = 96,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 154.16666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
	},
	['CH-47D'] = {
		['Transport'] = {
			['Default'] = {
				['hCruise'] = 100,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 100,
				['attributes'] = {
				},
				['vCruise'] = 40,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '3600',
					['flare'] = 120,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 40,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 5,
			},
		},
	},
	['AH-1W'] = {
		['Escort'] = {
			['Escort'] = {
				['self_escort'] = false,
				['night'] = true,
				['standoff'] = 4000,
				['capability'] = 1,
				['range'] = 80000,
				['attributes'] = {
				},
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
						[4] = {
							['CLSID'] = '{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}',
							['num'] = 4,
						},
						[1] = {
							['CLSID'] = '{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}',
							['num'] = 1,
						},
					},
					['fuel'] = 1250,
					['flare'] = 30,
					['chaff'] = 30,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 10,
			},
		},
		['Strike'] = {
			['Strike'] = {
				['hCruise'] = 50,
				['night'] = true,
				['standoff'] = 4000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = false,
					['SEAD'] = false,
				},
				['minscore'] = 0.1,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
						[4] = {
							['CLSID'] = '{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}',
							['num'] = 4,
						},
						[1] = {
							['CLSID'] = '{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}',
							['num'] = 1,
						},
					},
					['fuel'] = 1250,
					['flare'] = 30,
					['chaff'] = 30,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['self_escort'] = false,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 80000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
	},
	['SA342M'] = {
		['Strike'] = {
			['Strike Cyprus Strike Hot3x4, FAS, IR Deflector'] = {
				['hCruise'] = 50,
				['night'] = true,
				['standoff'] = 4000,
				['capability'] = 10,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['minscore'] = 0.3,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[6] = {
							['CLSID'] = '{IR_Deflector}',
							['num'] = 6,
						},
						[2] = {
							['CLSID'] = '{HOT3G}',
							['num'] = 2,
						},
						[3] = {
							['CLSID'] = '{HOT3D}',
							['num'] = 3,
						},
						[1] = {
							['CLSID'] = '{HOT3D}',
							['num'] = 1,
						},
						[4] = {
							['CLSID'] = '{HOT3G}',
							['num'] = 4,
						},
					},
					['fuel'] = 275,
					['flare'] = 32,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['self_escort'] = false,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 80000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
	},
	['A-50'] = {
		['AWACS'] = {
			['Default'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['tStation'] = 36000,
				['vCruise'] = 231.25,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '70000',
					['flare'] = 192,
					['chaff'] = 192,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 231.25,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 1.2,
			},
		},
	},
	['KC135MPRS'] = {
		['Refueling'] = {
			['Default'] = {
				['hCruise'] = 7315.2,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 7315.2,
				['attributes'] = {
					[1] = 'KC135MPRS',
				},
				['tStation'] = 21600,
				['vCruise'] = 220.66666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 90700,
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 220.66666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
	},
	['S-3B Tanker'] = {
		['Refueling'] = {
			['Low Track'] = {
				['hCruise'] = 1828.8,
				['night'] = true,
				['vCruise'] = 200,
				['code_loadout'] = {
					[1] = 'All',
				},
				['capability'] = 0.4,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 7813,
					['flare'] = 30,
					['chaff'] = 30,
					['gun'] = 100,
				},
				['day'] = true,
				['hAttack'] = 1828.8,
				['attributes'] = {
					[1] = 'low',
				},
				['vAttack'] = 150,
				['tStation'] = 10800,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 12,
			},
			['Medium Track'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['vCruise'] = 200,
				['code_loadout'] = {
					[1] = 'All',
				},
				['capability'] = 0.4,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 7813,
					['flare'] = 30,
					['chaff'] = 30,
					['gun'] = 100,
				},
				['day'] = true,
				['hAttack'] = 6096,
				['attributes'] = {
					[1] = 'medium',
				},
				['vAttack'] = 150,
				['tStation'] = 10800,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 12,
			},
		},
	},
	['F-4E'] = {
		['Strike'] = {
			['Cyprus Mk-82*6, AIM-7M*4, Fuel*2'] = {
				['hCruise'] = 5486.4,
				['night'] = false,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Turkey Cyprus AG - Rockeye*6'] = {
				['hCruise'] = 5486.4,
				['night'] = false,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{B83CB620-5BBE-4BEA-910C-EB605A327EF9}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{B83CB620-5BBE-4BEA-910C-EB605A327EF9}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Parked Aircraft',
					[3] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
			['Turkey Cyprus AG - AGM65D*4'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['standoff'] = 10000,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 6096,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98452}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98453}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'SAM',
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 300,
				['range'] = 900000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
			[' Cyprus Strike Heavy Mk84*2'] = {
				['hCruise'] = 5486.4,
				['night'] = false,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 4572,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = true,
				},
				['minscore'] = 0.3,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['attributes'] = {
					[1] = 'Structure',
					[2] = 'Bridge',
				},
				['firepower'] = 1,
				['adverseWeather'] = false,
				['vAttack'] = 277.5,
				['range'] = 500000,
				['day'] = true,
				['weaponType'] = 'Bombs',
				['sortie_rate'] = 6,
			},
		},
		['Anti-ship Strike'] = {
			['Anti-Ship Strike Turkey Cyprus AG - AGM65D*4'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['standoff'] = 10000,
				['capability'] = 1,
				['expend'] = 'All',
				['hAttack'] = 6096,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['minscore'] = 0.3,
				['vCruise'] = 250,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98452}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{E6A6262A-CA08-4B3D-B030-E1A993B98453}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'ship',
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 300,
				['range'] = 900000,
				['day'] = true,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
		['Escort'] = {
			['Cyprus AIM-9M*4, AIM-7M*4, Fuel*3'] = {
				['night'] = true,
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 500000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['day'] = true,
				['standoff'] = 46300,
				['attributes'] = {
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
		},
		['CAP'] = {
			['Cyprus Day, AIM-7M*4,AIM-9M*4,Fuel'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['standoff'] = 36000,
				['capability'] = 1,
				['range'] = 250000,
				['hAttack'] = 6096,
				['attributes'] = {
				},
				['tStation'] = 1800,
				['vCruise'] = 215.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 246.66666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['SEAD'] = {
			['Cyprus AGM-45*2, AIM-7M*2, Fuel*1, ECM'] = {
				['hCruise'] = 6096,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 6096,
				['attributes'] = {
				},
				['vCruise'] = 270,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{3E6B632D-65EB-44D2-9501-1C2D04515405}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{3E6B632D-65EB-44D2-9501-1C2D04515405}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 270,
				['day'] = true,
				['firepower'] = 1,
				['weaponType'] = 'ASM',
				['sortie_rate'] = 6,
			},
		},
		['Fighter Sweep'] = {
			['Cyprus AIM-9M*4, AIM-7M*4, Fuel*3'] = {
				['hCruise'] = 9753.6,
				['night'] = true,
				['standoff'] = 46300,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 9753.6,
				['attributes'] = {
				},
				['vCruise'] = 255.83333333333,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['LDSD'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 265.83333333333,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
		['Intercept'] = {
			['Cyprus AIM-7M*4,AIM-9*4,Fuel'] = {
				['night'] = true,
				['code_loadout'] = {
					[1] = 'Cyprus',
				},
				['capability'] = 1,
				['LDSD'] = true,
				['range'] = 400000,
				['stores'] = {
					['pylons'] = {
						[7] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 7,
						},
						[1] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 1,
						},
						[2] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 2,
						},
						[4] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 4,
						},
						[8] = {
							['CLSID'] = '{F4-2-AIM9L}',
							['num'] = 8,
						},
						[9] = {
							['CLSID'] = '{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}',
							['num'] = 9,
						},
						[5] = {
							['CLSID'] = '{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}',
							['num'] = 5,
						},
						[3] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 3,
						},
						[6] = {
							['CLSID'] = '{8D399DDA-FF81-4F14-904D-099B34FE7918}',
							['num'] = 6,
						},
					},
					['fuel'] = '4864',
					['flare'] = 30,
					['chaff'] = 60,
					['gun'] = 100,
				},
				['attributes'] = {
				},
				['day'] = true,
				['firepower'] = 1,
				['adverseWeather'] = true,
				['sortie_rate'] = 6,
			},
		},
	},
	['Mi-26'] = {
		['Transport'] = {
			['Default'] = {
				['hCruise'] = 100,
				['night'] = true,
				['capability'] = 5,
				['range'] = 500000,
				['hAttack'] = 100,
				['attributes'] = {
				},
				['vCruise'] = 100,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '9600',
					['flare'] = 192,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['day'] = true,
				['adverseWeather'] = true,
				['vAttack'] = 100,
				['self_escort'] = false,
				['firepower'] = 10,
				['sortie_rate'] = 6,
			},
		},
	},
	['UH-1H'] = {
		['Strike'] = {
			['Cyprus Strike rockets'] = {
				['hCruise'] = 50,
				['night'] = true,
				['capability'] = 1,
				['expend'] = 'Auto',
				['hAttack'] = 50,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['AddPropAircraft'] = {
					['ExhaustScreen'] = true,
					['NetCrewControlPriority'] = 1,
					['GunnersAISkill'] = 90,
					['EngineResource'] = 90,
				},
				['minscore'] = 0.1,
				['vCruise'] = 55,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
						[6] = {
							['CLSID'] = 'M134_R',
							['num'] = 6,
						},
						[2] = {
							['CLSID'] = 'XM158_MK5',
							['num'] = 2,
						},
						[3] = {
							['CLSID'] = 'M60_SIDE_L',
							['num'] = 3,
						},
						[1] = {
							['CLSID'] = 'M134_L',
							['num'] = 1,
						},
						[4] = {
							['CLSID'] = 'M60_SIDE_R',
							['num'] = 4,
						},
						[5] = {
							['CLSID'] = 'XM158_MK5',
							['num'] = 5,
						},
					},
					['fuel'] = 631,
					['flare'] = 60,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
					[1] = 'soft',
					[2] = 'Structure',
				},
				['firepower'] = 1,
				['adverseWeather'] = true,
				['vAttack'] = 55,
				['range'] = 80000,
				['day'] = true,
				['weaponType'] = 'Rockets',
				['sortie_rate'] = 6,
			},
		},
		['Transport'] = {
			['Cyprus Default'] = {
				['hCruise'] = 500,
				['night'] = false,
				['capability'] = 10,
				['range'] = 500000,
				['hAttack'] = 500,
				['support'] = {
					['Escort'] = true,
					['SEAD'] = false,
				},
				['AddPropAircraft'] = {
					['ExhaustScreen'] = true,
					['NetCrewControlPriority'] = 1,
					['GunnersAISkill'] = 90,
					['EngineResource'] = 90,
				},
				['vCruise'] = 40,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = 631,
					['flare'] = 60,
					['chaff'] = 0,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['attributes'] = {
				},
				['adverseWeather'] = true,
				['vAttack'] = 40,
				['firepower'] = 1,
				['day'] = true,
				['sortie_rate'] = 6,
			},
		},
	},
	['C-130'] = {
		['Transport'] = {
			['Default'] = {
				['hCruise'] = 4572,
				['night'] = true,
				['capability'] = 1,
				['range'] = 500000,
				['hAttack'] = 4572,
				['attributes'] = {
				},
				['vCruise'] = 154.16666666667,
				['code_loadout'] = {
					[1] = 'All',
				},
				['stores'] = {
					['pylons'] = {
					},
					['fuel'] = '20830',
					['flare'] = 60,
					['chaff'] = 120,
					['gun'] = 100,
				},
				['LDSD'] = false,
				['adverseWeather'] = true,
				['vAttack'] = 154.16666666667,
				['day'] = true,
				['firepower'] = 1,
				['sortie_rate'] = 6,
			},
		},
	},
}
