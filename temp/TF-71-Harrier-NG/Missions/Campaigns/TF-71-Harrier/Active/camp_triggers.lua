camp_triggers = {
	['Reinforce VAW-125'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/VAW-125", "VAW-125", 8)',
		['active'] = true,
	},
	['Tbilissi Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Tbilisi Airbase") < 7',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("The infrastructure at Tbilissi-Lochini Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume. This will ease our efforts to hit other targets in the Kutaisi Country area.")',
		},
		['active'] = true,
	},
	['VMA 311 Alive 25%'] = {
		['condition'] = 'Return.AirUnitAlive("VMA 311") + Return.AirUnitReady("VMA 331") < 2',
		['once'] = true,
		['action'] = 'Action.Text("Aircraft strength of the VMA 311 equiped with Hornet has fallen below 25%. The number of available airframes is critically low. The squadron is short of destruction.")',
		['active'] = true,
	},
	['Cargo convoy 2 Patrol ATest Sea'] = {
		['condition'] = 'Return.Mission() == 1',
		['once'] = true,
		['action'] = 'Action.ShipMission("Cargo convoy 2", {{"Ships 1-5", "Ships 1-4", "Ships 1-3", "Ships 1-2"}}, 8, 5, nil)',
		['active'] = false,
	},
	['Campaign 50 percents destructions'] = {
		['condition'] = 'GroundTarget["blue"].percent < 50',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("More than half of our targets are neutralized. Intelligence think that the enemy will ask for a cease fire soon")',
		},
		['active'] = true,
	},
	['GroundUnitRepair'] = {
		['condition'] = 'true',
		['action'] = 'Action.GroundUnitRepair()',
		['active'] = true,
	},
	['VMA 311 Alive 50%'] = {
		['condition'] = 'Return.AirUnitAlive("VMA 311") + Return.AirUnitReady("VMA 331") < 3',
		['once'] = true,
		['action'] = 'Action.Text("Aircraft strength of the VMA 311 equiped with Hornet has fallen below 50%. If losses continue at the present rate, the combat capability of the squadron is in jeopardy.")',
		['active'] = true,
	},
	['Kobuleti Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Kobuleti Airbase") < 11',
		['action'] = {
			[1] = 'db_airbases["Kobuleti"].inactive = true',
		},
		['active'] = true,
	},
	['LHA_Tarawa Damaged Moderate'] = {
		['condition'] = 'camp.ShipHealth and camp.ShipHealth["LHA_Tarawa"] and camp.ShipHealth["LHA_Tarawa"] < 66 and camp.ShipHealth["LHA_Tarawa"] >= 33',
		['once'] = true,
		['action'] = {
			[2] = 'Action.Text("LHA_Tarawa has sustained substantial damage under circumstances still somewhat unclear at the moment. Unable to continue flight operations, the carrier is retreating under own power for repairs. All combat operations against Russian forces have been put on hold until further notice.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[1] = 'Action.CampaignEnd("loss")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Campaign End Draw'] = {
		['condition'] = 'MissionInstance == 40',
		['once'] = true,
		['action'] = {
			[1] = 'Action.CampaignEnd("draw")',
			[2] = 'Action.Text("The air campaign has seen a sustained period of inactivity. Seemingly unable to complete the destruction of the Russian Air Force and infrastructure, US Central Command has called off all squadrons from offensive operations. We hope negociations with Russians will convince them to withdraw from Georgia")',
			[3] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['TF-71 Patrol ATest Sea'] = {
		['condition'] = 'Return.Mission() == 1',
		['once'] = true,
		['action'] = 'Action.ShipMission("TF-71", {{"Indy 1-1", "Indy 1-2", "Indy 1-3", "Indy 1-4"}}, 10, 8, nil)',
		['active'] = false,
	},
	['Campaign 40 percents destructions'] = {
		['condition'] = 'GroundTarget["blue"].percent < 60',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("Enemy targets have sustained great damages. Strike missions are really efficient and we will win this war soon")',
		},
		['active'] = true,
	},
	['LHA_Tarawa Damaged Light'] = {
		['condition'] = 'camp.ShipHealth and camp.ShipHealth["LHA_Tarawa"] and camp.ShipHealth["LHA_Tarawa"] < 100 and camp.ShipHealth["LHA_Tarawa"] >= 66',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("LHA_Tarawa has sustained light damage under circumstances still somewhat unclear at the moment. Flight operations continue as scheduled.")',
		},
		['active'] = true,
	},
	['Campaign End Loss'] = {
		['condition'] = 'Return.AirUnitAlive("VMA 311") + Return.AirUnitReady("VMA 331") < 4',
		['once'] = false,
		['action'] = {
			[2] = 'Action.Text("Ongoing combat operations have exhausted VMA-311. Loss rate has reached a level where reinforcements are no longer able to sustain combat operations. With the failure of US Navy Air Force to attain air superiority, US Central Command has decided to call of the air campaign against the Russians. They will be abble to stay in Georgia and our diplomatic power in the world is really weaked by this defeat.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[1] = 'Action.CampaignEnd("loss")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Gudauta Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Gudauta Airbase") < 10',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("After the facilities at Gudauta Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		},
		['active'] = true,
	},
	['LHA-Group Far from Georgian Coasts'] = {
		['condition'] = 'Return.Mission() == 1',
		['once'] = true,
		['action'] = {
			[1] = 'Action.ShipMission("LHA-Group", {{"Indy 3-1", "Indy 3-2", "Indy 3-3", "Indy 3-4"}}, 10, 8, nil)',
		},
		['active'] = false,
	},
	['Reinforce VF-143'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/VF-143", "VF-143", 16)',
		['active'] = true,
	},
	['Campaign 20 percents destructions'] = {
		['condition'] = 'GroundTarget["blue"].percent < 80',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("Enemy targets have sustained fair damages. Keep up the good work")',
		},
		['active'] = true,
	},
	['Campaign End Victory 2'] = {
		['condition'] = 'Return.AirUnitReady("19.IAP") + Return.AirUnitReady("31.IAP") + Return.AirUnitReady("28.IAP") + Return.AirUnitReady("368.ShAP") + Return.AirUnitReady("3.IAP") + Return.AirUnitReady("559.BAP") + Return.AirUnitReady("174.IAP-PVO") + Return.AirUnitReady("52.TBAP") + Return.AirUnitReady("959.BAP") + Return.AirUnitReady("79.TBAP") < 4',
		['once'] = false,
		['action'] = {
			[2] = 'Action.Text("Russian forces are completly defeated. After repeated air strikes and disastrous losses in air-air combat, the russians are no longer able to produce any sorties or offer any resistance. The US Navy now owns complete air superiority. With the disappearance of the air threat, we hope that russians will decide to leave Georgia quickly. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[1] = 'Action.CampaignEnd("win")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['LHA_Tarawa Damaged Heavy'] = {
		['condition'] = 'camp.ShipHealth and camp.ShipHealth["LHA_Tarawa"] and camp.ShipHealth["LHA_Tarawa"] < 33 and camp.ShipHealth["LHA_Tarawa"] > 0',
		['once'] = true,
		['action'] = {
			[2] = 'Action.Text("LHA_Tarawa has sustained heavy damage under circumstances still somewhat unclear at the moment. After a valiant damage control effort by its crew and support from other ships of Task Group 71, the complete loss of the carrier could be averted. Being taken under tow by its escorts, LHA_Tarawa is on the way to friendly harbor for emergency repairs before returning to the United States. All combat operations against Russian forces have been put on hold until further notice.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[1] = 'Action.CampaignEnd("loss")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Reinforce 79.TBAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/79.TBAP", "79.TBAP", 6)',
		['active'] = true,
	},
	['Batumi Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Batumi Airbase") < 6',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("After the facilities at Batumi Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		},
		['active'] = true,
	},
	['Reinforce 28.IAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/28.IAP", "28.IAP", 12)',
		['active'] = true,
	},
	['Reinforce 174.IAP-PVO'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/174.IAP-PVO", "174.IAP-PVO", 8)',
		['active'] = true,
	},
	['Batumi Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Batumi Airbase") < 6',
		['action'] = {
			[1] = 'db_airbases["Batumi"].inactive = true',
		},
		['active'] = true,
	},
	['LHA Group Close to Georgian Coasts'] = {
		['condition'] = 'Return.AirUnitReady("368.ShAP") + Return.AirUnitReady("559.BAP") + Return.AirUnitReady("52.TBAP") + Return.AirUnitReady("959.BAP") + Return.AirUnitReady("79.TBAP") < 10',
		['once'] = true,
		['action'] = {
			[1] = 'Action.ShipMission("LHA-Group", {{"Indy 3-5", "Indy 3-6", "Indy 3-7", "Indy 3-8""}}, 10, 8, nil)',
			[2] = 'Action.Text("After the estimated near destruction of all the enemy anti-ship air squadrons, LHA Group is allowed to move closer of Georgian coasts.")',
		},
		['active'] = true,
	},
	['Campaign End Loss 2'] = {
		['condition'] = 'Return.TargetAlive("LHA_Tarawa") == 0',
		['once'] = false,
		['action'] = {
			[2] = 'Action.Text("After the LHA_Tarawa has been hit by air strikes and sunk, Squadrons are no longer able to fly. Most of its planes are deep into the Caucasian waters and it will need a long time to restore this unit s capabilities. This is a bitter failure for the Navy")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[1] = 'Action.CampaignEnd("loss")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Reinforce 559.BAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/559.BAP", "559.BAP", 12)',
		['active'] = true,
	},
	['Tbilissi Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Tbilisi Airbase") < 7',
		['action'] = {
			[1] = 'db_airbases["Tbilissi-Lochini"].inactive = true',
		},
		['active'] = true,
	},
	['Reinforce 19.IAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/19.IAP", "19.IAP", 10)',
		['active'] = true,
	},
	['Reinforce 368.ShAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/368.ShAP", "368.ShAP", 16)',
		['active'] = true,
	},
	['TF-74 Patrol ATest Sea'] = {
		['condition'] = 'Return.Mission() == 1',
		['once'] = true,
		['action'] = 'Action.ShipMission("TF-74", {{"Indy 2-1", "Indy 2-2", "Indy 2-3", "Indy 2-4"}}, 10, 8, nil)',
		['active'] = false,
	},
	['Reinforce VF-101'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/VF-101", "VF-101", 16)',
		['active'] = true,
	},
	['Red Ground Target Briefing Intel'] = {
		['condition'] = 'true',
		['action'] = 'Action.AddGroundTargetIntel("red")',
		['active'] = true,
	},
	['Repair'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitRepair()',
		['active'] = true,
	},
	['Reinforce VFA-106'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/VFA-106", "VFA-106", 16)',
		['active'] = true,
	},
	['Sukhumi Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Sukhumi Airbase") < 4 and Return.TargetAlive("Sukhumi Airbase Strategics") < 5',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("Recent air strikes have destroyed enemy ground elements running operations at Sukhumi Airbase. Without their ground support, any remaining aircraft at the airstrip will no longer be able to launch on sorties.")',
		},
		['active'] = true,
	},
	['Campaign End Victory 1'] = {
		['condition'] = 'GroundTarget["blue"].percent < 45',
		['once'] = false,
		['action'] = {
			[2] = 'Action.Text("The US Navy units deployed off the coasts of Georgia have successfully destroyed all the targets that they were assigned by US Central Command. With the complete destruction of the Russian airforce over Georgia, the air campaign of this war comes to an end. Russian will soon begin to withdraw from Georgia. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[1] = 'Action.CampaignEnd("win")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Campaign Briefing'] = {
		['condition'] = 'true',
		['once'] = true,
		['action'] = {
			[2] = 'Action.Text("The US Navy has sent considerable forces near Georgia. The Task Force 71 is leaded by the brand new CVN-71 Theodore Roosevelt. At the forefront are the F/A-18C of the VFA-106 and VMFA-312 who are tasked to attack Russian air defenses, Airbases and many strategical targets in Georgia like bridges train stations and Harbors. Air superiority and strikers escort will be the mission of the VF-101 and VF-143 with their Legendary F-14B Tomcats. E-2D will provide AWACS constant cover. Together these squadrons form a powerful and mighty force. For the first few days you will receive a precious help from B-52H of 69th BS based in UK. They will concentrate their attacks on SAM Systems, VMA-311 on LHA-Tarawa will wait for enemy weakeness to close from Georgian Coasts and launch ground attacks")',
			[3] = 'Action.Text("The Russian Air Force is flying a mix of MiG-29, MiG-31, Su-27 and Su-25TM fighters directed by ground based early warning radar. Air bases and target complexes of high value are protected by a variety of surface-air missile systems, such as the Sa-2 Guindeline, SA-6 Gainful, the SA-8 Gecko and the SA-3 Goa, as well as short-range IR-SAMs and AAA. Few new SA-10 systems are in Georgia too. It seems that A-50 AWACS are present over Georgian territory too and it should be a priority target for us. Russian had time to build a powerful SAM defense system in Georgia and it will be our main target in the first missions. Our goal will be to gain air superiority over Georgia by neutralizing main bases in the country and destroying SAM systems. Russia Homeland is strictly forbidden. You are not allowed to attack ground target in Russia but air to air combat can be initiated near and over Russia")',
			[1] = 'Action.Text("Georgia has been invaded by russian forces in few days despite courageous fight of poor trained Georgian ground forces. United Nations were not able to stop russians invasion and the United States of America decided to do something to convince Russia to remove its forces from Georgia. Turkish government was not ready to open his bases to US attack planes and only one Navy Task Force can be sent near Georgian coasts to show Russia they have to leave Georgian country.")',
			[4] = 'Action.AddImage("Newspaper_FirstNight_blue.jpg", "blue")',
			[5] = 'Action.AddImage("Newspaper_FirstNight_red.jpg", "red")',
		},
		['active'] = false,
	},
	['Reinforce VMA 311'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("VMA 331", "VMA 311", 4)',
		['active'] = true,
	},
	['Campaign first destructions'] = {
		['condition'] = 'GroundTarget["blue"].percent < 100',
		['once'] = true,
		['action'] = {
			[1] = 'Action.Text("First targets have been destroyed. Keep up the good work")',
		},
		['active'] = true,
	},
	['Cargo convoy 1 Patrol ATest Sea'] = {
		['condition'] = 'Return.Mission() == 1',
		['once'] = true,
		['action'] = 'Action.ShipMission("Cargo convoy 1", {{"Ships 1-1", "Ships 1-2", "Ships 1-3", "Ships 1-4"}}, 8, 5, nil)',
		['active'] = false,
	},
	['Sukhumi Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Sukhumi Airbase") < 4 and Return.TargetAlive("Sukhumi Airbase Strategics") < 5',
		['action'] = {
			[1] = 'db_airbases["Sukhumi"].inactive = true',
		},
		['active'] = true,
	},
	['Senaki Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Senaki Airbase") < 12',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("After the facilities at Senaki-Kolkhi Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		},
		['active'] = true,
	},
	['Gudauta Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Gudauta Airbase") < 10',
		['action'] = {
			[1] = 'db_airbases["Gudauta"].inactive = true',
		},
		['active'] = true,
	},
	['Reinforce 959.BAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/959.BAP", "959.BAP", 12)',
		['active'] = true,
	},
	['LHA_Tarawa Sunk'] = {
		['condition'] = 'Return.UnitDead("LHA_Tarawa")',
		['once'] = false,
		['action'] = {
			[2] = 'Action.Text("LHA_Tarawa has been lost, the exact cause of her sinking is still somewhat unclear at the moment. Despite her evacuation being orderly and escorts of the Battle Group picking up many survivors, losses are expected to be very high. Search and rescue operations are still ongoing. All combat operations against Russian forces have been put on hold until further notice.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[1] = 'Action.CampaignEnd("loss")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
		['active'] = true,
	},
	['Kutaisi Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Kutaisi Airbase") < 11',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("The infrastructure at Kutaisi Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume. This will ease our efforts to hit other targets in the Kutaisi Country area.")',
		},
		['active'] = true,
	},
	['Reinforce 174 ARW'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/174 ARW", "174 ARW", 12)',
		['active'] = true,
	},
	['Reinforce VMFA-312'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/VMFA-312", "VMFA-312", 16)',
		['active'] = true,
	},
	['CAP After EWR Destroyed'] = {
		['condition'] = 'Return.TargetAlive("EWR 1 501") == 0 and Return.TargetAlive("EWR 2 502") == 0 and Return.TargetAlive("EWR 3 503") == 0 and Return.AirUnitAlive("2457 SDRLO") == 0',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("With the recent destruction of all Early Warning Radar sites in the operations area, the ability of the enemy to launch interceptors against our strike packages was severely degraded. Intelligence expects that the enemy will increasingly depend on Combat Air Patrols to compensate, though without the support of ground controllers these are estimated to be of limited effectiveness.")',
		},
		['active'] = true,
	},
	['Kobuleti Airbase Disabled Text'] = {
		['condition'] = 'Return.TargetAlive("Kobuleti Airbase") < 11',
		['once'] = false,
		['action'] = {
			[1] = 'Action.Text("After the facilities at Kobuleti Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		},
		['active'] = true,
	},
	['Kutaisi Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Kutaisi Airbase") < 11',
		['action'] = {
			[1] = 'db_airbases["Kutaisi"].inactive = true',
		},
		['active'] = true,
	},
	['Reinforce 52.TBAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/52.TBAP", "52.TBAP", 6)',
		['active'] = true,
	},
	['Reinforce 31.IAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/31.IAP", "31.IAP", 12)',
		['active'] = true,
	},
	['Blue Ground Target Briefing Intel'] = {
		['condition'] = 'true',
		['action'] = 'Action.AddGroundTargetIntel("blue")',
		['active'] = true,
	},
	['Senaki Airbase Disabled'] = {
		['condition'] = 'Return.TargetAlive("Senaki Airbase") < 12',
		['action'] = {
			[1] = 'db_airbases["Senaki-Kolkhi"].inactive = true',
		},
		['active'] = true,
	},
	['Reinforce 3.IAP'] = {
		['condition'] = 'true',
		['action'] = 'Action.AirUnitReinforce("R/3.IAP", "3.IAP", 12)',
		['active'] = true,
	},
	['VMA 311 Alive 75%'] = {
		['condition'] = 'Return.AirUnitAlive("VMA 311") + Return.AirUnitReady("VMA 331") < 4',
		['once'] = true,
		['action'] = 'Action.Text("Aircraft strength of the VMA 311 equiped with Hornet has fallen below 75%.")',
		['active'] = true,
	},
	['Unit Desactivate B-52H and B-1B'] = {
		['condition'] = 'Return.Mission() >= 10',
		['once'] = true,
		['action'] = {
			[1] = 'Action.AirUnitActive("69 BS", false)',
			[2] = 'Action.Text("After intensive flights against Russians SAM sites, B-52H from 96 BS and B-1B from 69 BS have reduced significantly SAM sites effectiveness. They have to stop their missions but it should be easier for TF-71 to attack strategics targets in Georgia")',
		},
		['active'] = true,
	},
}
