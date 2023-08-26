--Initial campaign triggers (static file, not updated)
--Copied to Status/camp_triggers.lua in first mission and subsequently read and updated there
--Campaign triggers are defined with conditions and actions
-------------------------------------------------------------------------------------------------------

--List of Return functions to build conditions:
--Return.Time()												returns time of day in seconds
--Return.Day()												returns day of month
--Return.Month()											returns month as number
--Return.Year()												returns year as number
--Return.Mission()											returns campaign mission number
--Return.CampFlag(flag-n)									returns value of campaign flag
--Return.AirUnitActive("UnitName")							returned boolean whether the air unit is active			
--Return.AirUnitReady("UnitName")							returns amount of ready aircraft in unit
--Return.AirUnitAlive("UnitName")							returns amount of ready and damaged aircraft in unit
--Return.AirUnitBase("UnitName")							returns the name of the airbase the unit operats from
--Return.AirUnitPlayer("UnitName")							returns boolean whether the air units is playable
--Return.TargetAlive("TargetName")							returns percentage of alive sub elements in target
--Return.UnitDead(unitname)									(ADD) return vehicle/ship units dead (ADD)
--Return.GroupHidden("GroupName")							returns group hidden status
--Return.GroupProbability("GroupName")						returns group spawn probability value between 0 and 1
--Return.ShipGroupInPoly(GroupName, PolyZonesTable)			(ADD) return boolean whether ship group is in polygon (ADD)

--List of Action functions for trigger actions:
--Action.None()
--Action.Text("your briefing text")
--Action.TextPlayMission(arg)																--add trigger text to briefing text of this mission only if it is playable
--Action.SetCampFlag(flag-n, boolean/number)												--
--Action.AddCampFlag(flag-n, number)														--
--Action.AddImage("filname.jpg")															--
--Action.CampaignEnd("win"/"draw"/"loss")													--
--Action.TargetActive("TargetName", boolean)												--
--Action.AirUnitActive("UnitName", boolean)													--
--Action.AirUnitBase("UnitName", "BaseName")												--
--Action.AirUnitPlayer("UnitName", boolean)													--
--Action.AirUnitReinforce("SourceUnitName", "DestinationUnitName", destNumber)				--
--Action.AirUnitRepair()																	--
--Action.GroundUnitRepair()																	-- (ADD) M19.f : Repair Ground
--Action.AddGroundTargetIntel("sideName")													--
--Action.GroupHidden("GroupName", boolean)													--
--Action.GroupProbability("GroupName", number 0-1)											--
--Action.GroupMove(GroupName, ZoneName)														-- (ADD) move vehicle group to refpoint (See the DC_CheckTriggers.lua file for more explanation)
--Action.GroupSlave(GroupName, master, bearing, distance)									-- (ADD)
--Action.ShipMission(GroupName, WPtable, CruiseSpeed, PatrolSpeed, StartTime)				-- (ADD) assign and run a movement mission to a ship group (See the DC_CheckTriggers.lua file for more explanation)
--Action.TemplateActive(TabFile)															-- (ADD) M40 : Template Active GroundGroup moving front (single file : active template) (if tab file: random activation)



--Important notes:
--for condition and action strings: outside with single quotes '', inside with double quotes ""!

camp_triggers = {
	
	----- CAMPAIGN INTRO ----
	["Campaign Briefing"] = {										--Trigger name
		active = true,												--Trigger is active
		once = true,												--Trigger is fired once
		condition = 'true',											--Condition of the trigger to return true or false embedded as string
		action = {													--Trigger action function embedded as string
			[0] = 'Action.Text("23rd November 1985:")',
			[1] = 'Action.Text("The United States, after careful verification of the effective weakness of the Soviet Union, decided to undertake military action aimed at establishing total control of Syria as a stronghold to control the Middle Eastern regions, in particular Iran.")',
			[2] = 'Action.Text("The US military initiative is supported by several NATO nations, including Turkey, Greece, France, Germany, Sweden and Italy.")',
			[3] = 'Action.Text("The US-NATO invasion is based on the deployment of air and naval forces in the Mediterranean near the island of Cyprus, air forces stationed in the air bases in Cyprus (Larnaca, ..) and in Turkish territory (Incirlik, Adana, Gaziantep).")',
			[4] = 'Action.Text("Four directions of attack by land means are defined: the first directed from Hatay towards the northern coast of Syria, the second from Gaziantep towards the center of Syria, the third from the Israeli air base of Ramat David towards the southern coast of Lebanon and the fourth from Jordan in a northerly direction towards Syria.")',
			[5] = 'Action.Text("The type of military operations consists mainly of air supremacy, interdiction and ground support missions.")',
			[6] = 'Action.Text("Syria reacted by asking for the intervention of the Soviet Union as its main ally and also receiving the full support of Iran. All active Syrian military bases have been made available to the allies.")',
			[7] = 'Action.Text("The Soviet Union has confirmed full support for the defense of the integrity of the Syrian territory and has provided all the most modern military assets available, including: Mig-31, Mig-29, Mig-27, Mig-25, Su-27, Su-25, Su-24 and Tu-22 in support of modest Syrian resources: Su-17, Mig-21 and L-39C.")',
			[8] = 'Action.Text("Iran has contributed by sending its dedicated F-14As for interception or patrol missions.")',
			[9] = 'Action.Text("The United States and the NATO nations involved used assets such as: F-16A, F-15C, A-10A, F-14A, F-117A, Tornado IDS (from Germany and Italy), Mirage 2000/F1 (from France), AJS39 (from Sweden), C101CC (from Spain)")',
			[10] = 'Action.Text("You are a US Navy F-14A pilot assigned to VS-101 on the aircraft carrier Roosevelt sailing northwest of Cyprus.")',
			[11] = 'Action.AddImage("Newspaper_FirstNight_blue.jpg", "blue")',
			[12] = 'Action.AddImage("Newspaper_FirstNight_red.jpg", "red")',
		},
	},
	
	----- CAMPAIGN END -----
	
	["Campaign End Victory 1"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 40',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The Allied units deployed in Syria to  have successfully destroyed above the 40 percent of the targets that they were assigned by US Central Command with the precious help of the French, Turkish and Swedish fighters. With the complete destruction of the Russian airbases, the air campaign of this war comes to an end. Allied air power has once again proven its effectiveness and decisiveness. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Victory 2 (enemy Fighter + Fighter-Bomber < 10 unit)"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitReady("790.IAP") + Return.AirUnitReady("113.IAP") + Return.AirUnitReady("123.IAP") + Return.AirUnitReady("948 Squadron") + Return.AirUnitReady("67 Squadron") + Return.AirUnitReady("764.IAP") + Return.AirUnitReady("797.IAP") + Return.AirUnitReady("159.IAP") + Return.AirUnitReady("81st TFS") < 10',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("Syrian coalition fighter planes have been annihilated. After repeated air strikes and disastrous losses in air-air combat (aircraft losses are bigger of 80%), the Syrian coalition is not longer able to produce any sorties or offer any resistance. The The USA and Nato countries now owns complete air superiority. With the disappearance of the air threat, the role of the F-14A Tomcat in this war comes to an end. Once again the victorious Tomcat has proved to be to leading fighter in the world. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Victory 3 (enemy Attacker + Bomber < 12 unit)"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitReady("117.IAP") + Return.AirUnitReady("127.IAP") + Return.AirUnitReady("127.IAP") + Return.AirUnitReady("3 Squadron") + Return.AirUnitReady("677 Squadron") + Return.AirUnitReady("368 ShAP")  + Return.AirUnitReady("3 BAP 149th BAA")  + Return.AirUnitReady("402nd Heavy Bomber Aviation Regiment") + Return.AirUnitReady("373 ShAP") + Return.AirUnitReady("4 Guards BAP 132nd BAA") + Return.AirUnitReady("132nd Heavy Bomber Aviation Regiment") + Return.AirUnitReady("637 Squadron") < 12',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("Syrian coalition Attacker and Bomber planes have been annihilated. After repeated air strikes and disastrous losses (aircraft losses are bigger of 80%), the Syrian coalition is not longer able to produce any sorties or offer any resistance. The USA and Nato countries now owns complete ground invasion. With the disappearance of the air threat, the role of the F-14A Tomcat in this war comes to an end. Once again the victorious Tomcat has proved to be to leading fighter in the world. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Victory 4 (enemy Fighter + Fighter-Bomber < 12 unit and Attacker + Bomber < 15 unit)"] = {
		active = true,
		once = true,
		condition = '( Return.AirUnitReady("790.IAP") + Return.AirUnitReady("113.IAP") + Return.AirUnitReady("123.IAP") + Return.AirUnitReady("948 Squadron") + Return.AirUnitReady("67 Squadron") + Return.AirUnitReady("764.IAP") + Return.AirUnitReady("797.IAP") + Return.AirUnitReady("159.IAP") + Return.AirUnitReady("81st TFS") < 12 ) and ( Return.AirUnitReady("117.IAP") + Return.AirUnitReady("127.IAP") + Return.AirUnitReady("127.IAP") + Return.AirUnitReady("3 Squadron") + Return.AirUnitReady("677 Squadron") + Return.AirUnitReady("368 ShAP")  + Return.AirUnitReady("3 BAP 149th BAA")  + Return.AirUnitReady("402nd Heavy Bomber Aviation Regiment") + Return.AirUnitReady("373 ShAP") + Return.AirUnitReady("4 Guards BAP 132nd BAA") + Return.AirUnitReady("132nd Heavy Bomber Aviation Regiment") + Return.AirUnitReady("637 Squadron") < 15 )',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("Syrian coalition Air Force is in ruins. After repeated air strikes and disastrous losses in air-air combat (aircraft losses are bigger 70% for Fighter and 60% for Bomber), the Syrian coalition is not longer able to offer any resistance. The Usa and Nato countries now owns complete ground invasion. With the disappearance of the air threat, the role of the F-14A Tomcat in this war comes to an end. Once again the victorious Tomcat has proved to be to leading fighter in the world. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Victory 5"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("An Nasiriyah Airbase") < 3 and Return.TargetAlive("Damascus Airbase") < 12 and Return.TargetAlive("Tabqa Airbase") < 8 and Return.TargetAlive("Khalkhalah Airbase") < 8 and Return.TargetAlive("Bassel Al-Assad Airbase") < 9 and Return.TargetAlive("Deir ez-Zor Airbase") < 8 and Return.TargetAlive("Beirut-Rafic Hariri Airbase") < 3 and Return.TargetAlive("Taftanaz Airbase") < 5 and Return.TargetAlive("Hama Airbase") < 9 and Return.TargetAlive("Palmyra Airbase") < 8',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The Russian Air Force is in ruins. All their main bases are destroyed, Russians are no longer able to produce any sorties or offer any resistance. The Allied forces now owns complete air superiority. Well done.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},		
	["Campaign End Loss"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitAlive("VF-101") + Return.AirUnitReady("R/VF-101") < 5',
		action = {
			[1] = 'Action.CampaignEnd("loss")',
			[2] = 'Action.Text("Ongoing combat operations have exhausted VF-101 Squadron. Loss rate has reached a level where reinforcements are no longer able to sustain combat operations. With the failure of Allied Air Force to attain air superiority, US Central Command has decided to call of the air campaign against the Russians. Without destroying Russians airbases it seems unlikely that the coalition will be able to win this war.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 2"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("CVN-71 Theodore Roosevelt") == 0',
		action = {
			[1] = 'Action.CampaignEnd("loss")',
			[2] = 'Action.Text("After the CVN-71 Theodore Roosevelt has been hit by air strikes and neutralised, VF-101 Squadron is no longer able to fly. Other US units will have to continue the fight without the VF-101 Squadron support. This is a bitter failure.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 3"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["red"].percent < 40',
		action = {
			[1] = 'Action.CampaignEnd("loss")',
			[2] = 'Action.Text("Russian airforce was able to destroy enough allied forces to decide US Command to ask for a cease fire  and stop any Air missions. This is a bitter failure for the Allies")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 4 (avalaible Fighter + Fighter-Bomber < 10 unit)"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitReady("111th Squadron Panther") + Return.AirUnitReady("151th Squadron Bronze") + Return.AirUnitReady("56th Operations Group") + Return.AirUnitReady("173rd Fighter Group") + Return.AirUnitReady("F6 Karlsborg") + Return.AirUnitReady("Escadron de Chasse 2/5 Ile-de-France") + Return.AirUnitReady("Escadron de Chasse 1/2 Cigognes") + Return.AirUnitReady("Jagdbombergeschwader 33") + Return.AirUnitReady("154 Gruppo, 6 Stormo") + Return.AirUnitReady("152th Squadron Iron") + Return.AirUnitReady("VF-101") + Return.AirUnitReady("VF-118/GA") < 10',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The USA Air Force is in ruins. After repeated air strikes and disastrous losses (Fighter losses > 80% ) in air-air combat, USA and Nato Countries are no longer able to produce any sorties or offer any resistance.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 5 (avalaible Attacker + Bomber < 12 unit)"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitReady("69 BS") + Return.AirUnitReady("4450th Tactical Group") + Return.AirUnitReady("23rd FG") + Return.AirUnitReady("122nd Squadron") + Return.AirUnitReady("4453th Tactical Group") + Return.AirUnitReady("VS-21") < 12',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The USA Air Force is in ruins. After repeated air strikes and disastrous losses (Attacker and Bomber losses > 80% )in air-air combat, USA and Nato Countries are no longer able to produce any sorties or offer any resistance.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 6 (avalaible Fighter + Fighter-Bomber < 12 unit and Attacker + Bomber < 15 unit)"] = {
		active = true,
		once = true,
		condition = '( Return.AirUnitReady("111th Squadron Panther") + Return.AirUnitReady("151th Squadron Bronze") + Return.AirUnitReady("56th Operations Group") + Return.AirUnitReady("173rd Fighter Group") + Return.AirUnitReady("F6 Karlsborg") + Return.AirUnitReady("Escadron de Chasse 2/5 Ile-de-France") + Return.AirUnitReady("Escadron de Chasse 1/2 Cigognes") + Return.AirUnitReady("Jagdbombergeschwader 33") + Return.AirUnitReady("154 Gruppo, 6 Stormo") + Return.AirUnitReady("152th Squadron Iron") + Return.AirUnitReady("VF-101") + Return.AirUnitReady("VF-118/GA") < 12 ) and ( Return.AirUnitReady("69 BS") + Return.AirUnitReady("4450th Tactical Group") + Return.AirUnitReady("23rd FG") + Return.AirUnitReady("122nd Squadron") + Return.AirUnitReady("4453th Tactical Group") + Return.AirUnitReady("VS-21") + Return.AirUnitReady("VS-22") < 15 )',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The USA Air Force is in ruins. After repeated air strikes and disastrous losses (Fighter loss > 70% and Attacker-Bomber loss > 60% ) in air-air combat, USA and Nato Countries are no longer able to produce any sorties or offer any resistance.")',
			[3] = 'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			[4] = 'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 7"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Incirlik Airbase") < 7 and Return.TargetAlive("Gaziantep Airbase") < 5 and Return.TargetAlive("Hatay Airbase") < 5 and Return.TargetAlive("Adana Sakirpasa") < 8 and Return.TargetAlive("Larnaca") < 7 and Return.TargetAlive("Paphos") < 2',
		action = {
			[1] = 'Action.CampaignEnd("win")',
			[2] = 'Action.Text("The USA and NATO Air Force are in ruins. All ours main bases are destroyed, USA and NATO Countries are not longer able to produce any sorties or offer any resistance. The Russian forces now owns complete air superiority and reconquer their territories.")',
			[3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			[4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			[5] = 'NoMoreNewspaper = true',
		},
	},
	["Campaign End Draw"] = {
		active = true,
		once = true,
		condition = 'MissionInstance == 40',
		action = {
			[1] = 'Action.CampaignEnd("draw")',
			[2] = 'Action.Text("The air campaign has seen a sustained period of inactivity. Seemingly unable to complete the invasion of Syria, US Central Command has called off all squadrons from offensive operations.")',
			[3] = 'NoMoreNewspaper = true',
		},
	},
	

	----- CAMPAIGN SITUATION -----
	["Campaign first destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 100',
		action = {
			[1] = 'Action.Text("First targets have been destroyed. Keep up the good work")',
		},
	},
	["Campaign 20 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 80',
		action = {
			[1] = 'Action.Text("Enemy targets have sustained fair damages. Keep up the good work")',
		},
	},
	["Campaign 40 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 60',
		action = {
			[1] = 'Action.Text("Enemy targets have sustained great damages. Strike missions are really efficient and we will win this war soon")',
		},
	},
	["Campaign 50 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 50',
		action = {
			[1] = 'Action.Text("More than half of our targets are neutralized. Intelligence think that the enemy will ask for a cease fire soon")',
		},
	},

	----- CARRIER MOVEMENT -----
	["CVN-72 Abraham Lincoln movement"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("CVN-72", {{"CVN-72 Destination 1", "CVN-72 Destination 2", "CVN-72 Destination 3"}}, 10, 8, nil)',
	},

	["CVN-71 Theodore Roosevelt movement"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("CVN-71", {{"CVN-71 Destination 1", "CVN-71 Destination 2", "CVN-71 Destination 3"}}, 10, 8, nil)',
	},
	--[[["LHA-Group Patrol ATest Sea"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("LHA-Group", {{"Indy 3-1", "Indy 3-2", "Indy 3-3", "Indy 3-4"}}, 10, 8, nil)',
	},]]
	
	
	----- CONVOY MOVEMENT -----	
	["USA Fleet movement"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("USA Fleet", {{"USA Fleet Destination 1", "USA Fleet Destination 2", "USA Fleet Destination 3"}}, 8, 5, nil)',
	},

	["UK Fleet movement"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("UK Fleet", {{"UK Fleet Destination 1", "UK Fleet Destination 2", "UK Fleet Destination 3"}}, 8, 5, nil)',
	},

	["Lebanon Fleet movement"] = { --fatto
		active = true,
		once = true,
		condition = 'Return.Mission() == 1',
		action = 'Action.ShipMission("Lebanon Fleet", {{"Lebanon Fleet Destination 1", "Lebanon Fleet Destination 2", "Lebanon Fleet Destination 3"}}, 8, 5, nil)',
	},
	
	
	----- AIRBASE STRIKES -----
	["An Nasiriyah Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("An Nasiriyah Airbase") < 5',
		action = {
			[1] = 'db_airbases["An Nasiriyah"].inactive = true',
		}
	},
	["An Nasiriyah Airbase Disabled Text"] = {
		active = true,
		once = false,
		condition = 'Return.TargetAlive("An Nasiriyah Airbase") < 5',
		action = {
			[1] = 'Action.Text("After the facilities at An Nasiriyah Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		}
	},
	["Damascus Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Damascus Airbase") < 3',
		action = {
			[1] = 'db_airbases["Damascus"].inactive = true',
		}
	},
	["Damascus Airbase Disabled Text"] = {
		active = true,
		once = false,
		condition = 'Return.TargetAlive("Damascus Airbase") < 3',
		action = {
			[1] = 'Action.Text("After the facilities at Damascus Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		}
	},
	["Deir ez-Zor Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Deir ez-Zor Airbase") < 2',
		action = {
			[1] = 'db_airbases["Deir ez-Zor"].inactive = true',
		}
	},
	["Deir ez-Zori Airbase Disabled Text"] = {
		active = true,
		once = false,
		condition = 'Return.TargetAlive("Deir ez-Zor Airbase") < 2',
		action = {
			[1] = 'Action.Text("After the facilities at Deir ez-Zor Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		}
	},
	["Tabqa Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Tabqa Airbase") < 3',
		action = {
			[1] = 'db_airbases["Tabqa"].inactive = true',
		}
	},
	["Tabqa Airbase Disabled Text"] = {
		active = true,
		once = false,
		condition = 'Return.TargetAlive("Tabqa Airbase") < 3',
		action = {
			[1] = 'Action.Text("After the facilities at Tabqa Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		}
	},	
	["Khalkhalah Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Khalkhalah Airbase") < 5',
		action = {
			[1] = 'db_airbases["Khalkhalah"].inactive = true',
		}
	},
	["Khalkhalah Airbase Disabled Text"] = {
		active = true,
		once = false,
		condition = 'Return.TargetAlive("Khalkhalah Airbase") < 5',
		action = {
			[1] = 'Action.Text("The infrastructure at Khalkhalah Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},	
	["Beirut-Rafic Hariri Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Beirut-Rafic Hariri Airbase") < 4',
		action = {
			[1] = 'db_airbases["Beirut-Rafic Hariri"].inactive = true',
		}
	},
	["Beirut-Rafic Hariri Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Beirut-Rafic Hariri Airbase") < 4 and Return.TargetAlive("Beirut-Rafic Hariri Airbase Strategics") < 5',
		action = {
			[1] = 'Action.Text("Recent air strikes have destroyed enemy ground elements running operations at Beirut-Rafic Hariri Airbase. Without their ground support, any remaining aircraft at the airstrip will no longer be able to launch on sorties.")',
		}
	},
	["Taftanaz Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Taftanaz Airbase") < 6',
		action = {
			[1] = 'db_airbases["Taftanaz"].inactive = true',
		}
	},
	["Taftanaz Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Taftanaz Airbase") < 6',
		action = {
			[1] = 'Action.Text("After the facilities at Taftanaz Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer ably to produce any aviation sorties.")',
		--[[		[2] = 'Action.AddImage("BDA_Beatty.jpg")', ]]--  ---A changer
		}
	},	
	["Bassel Al-Assad Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Bassel Al-Assad Airbase") < 2',
		action = {
			[1] = 'db_airbases["Bassel Al-Assad"].inactive = true',
		}
	},
	["Bassel Al-Assad Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Bassel Al-Assad Airbase") < 2',
		action = {
			[1] = 'Action.Text("Recent air strikes have destroyed enemy ground elements running operations at Bassel Al-Assad Airbase. Without their ground support, any remaining aircraft at the airstrip will no longer be able to launch on sorties.")',
		}
	},
	["Hama Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Hama Airbase") < 3',
		action = {
			[1] = 'db_airbases["Hama"].inactive = true',
		}
	},
	["Hama Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Hama Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Hama Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		--[[		[2] = 'Action.AddImage("BDA_Lincoln.jpg")', ]]--  ---A changer
		}
	},
	["Palmyra Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Palmyra Airbase") < 3',
		action = {
			[1] = 'db_airbases["Palmyra"].inactive = true',
		}
	},
	["Palmyra Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Palmyra Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Palmyra Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		--[[		[2] = 'Action.AddImage("BDA_Lincoln.jpg")', ]]--  ---A changer
		}
	},
	["Incirlik Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Incirlik Airbase") < 3',
		action = {
			[1] = 'db_airbases["Incirlik"].inactive = true',
		}
	},
	["Incirlik Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Incirlik Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Incirlik Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},
	["Adana Sakirpasa Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Adana Sakirpasa Airbase") < 3',
		action = {
			[1] = 'db_airbases["Adana Sakirpasa"].inactive = true',
		}
	},
	["Adana Sakirpasa Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Adana Sakirpasa Airbase") < 3',
		action = {
		}
	},
	["Gaziantep Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Gaziantep Airbase") < 3',
		action = {
			[1] = 'db_airbases["Gaziantep"].inactive = true',
		}
	},
	["Gaziantep Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Gaziantep Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Gaziantep Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},
	["Gazipasa Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Gazipasa Airbase") < 3',
		action = {
			[1] = 'db_airbases["Gazipasa"].inactive = true',
		}
	},
	["Gazipasa Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Gazipasa Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Gazipasa Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},
	["Hatay Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Hatay Airbase") < 3',
		action = {
			[1] = 'db_airbases["Hatay"].inactive = true',
		}
	},
	["Hatay Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Hatay Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Hatay Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},
	["Larnaca Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Larnaca Airbase") < 3',
		action = {
			[1] = 'db_airbases["Larnaca"].inactive = true',
		}
	},
	["Larnaca Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Larnaca Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Larnaca Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		}
	},
	["Paphos Airbase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Paphos Airbase") < 3',
		action = {
			[1] = 'db_airbases["Paphos"].inactive = true',
		}
	},
	["Paphos Airbase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Paphos Airbase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Hatay Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',

		}
	},
	["Naqoura Helibase Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("Naqoura Helibase") < 3',
		action = {
			[1] = 'db_airbases["Naqoura"].inactive = true',
		}
	},
	["Naqoura Helibase Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Naqoura Helibase") < 3',
		action = {
			[1] = 'Action.Text("The infrastructure at Naqoura Airbase has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		--[[		[2] = 'Action.AddImage("BDA_Lincoln.jpg")', ]]--  ---A changer
		}
	},
	["FARP-Hatay FARP Disabled"] = {
		active = true,
		condition = 'Return.TargetAlive("FARP-Hatay FARP") < 1',
		action = {
			[1] = 'db_airbases["FARP-Hatay FARP"].inactive = true',
		}
	},
	["FARP-Hatay FARP Disabled Text"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("FARP-Hatay FARP") < 1',
		action = {
			[1] = 'Action.Text("The infrastructure at Hatay FARP has been destroyed by air strikes. Flying operations at this base have ceased completely and are unlikely to resume.")',
		--[[		[2] = 'Action.AddImage("BDA_Lincoln.jpg")', ]]--  ---A changer
		}
	},	
	["CVN-72 Abraham Lincoln sunk"] = {
		active = true,
		condition = 'Return.TargetAlive("CVN-72 Abraham Lincoln") == 0',
		action = {
			[1] = 'db_airbases["CVN-72 Abraham Lincoln"].inactive = true',
			[2] = 'Action.Text("After the CVN-72 Abraham Lincoln has been hit by air strikes and sunk, its Navy Squadrons are no longer able to fly. Most of its planes are deep into the sea and it will need a long time to restore this unit s capabilities")',			
		}
	},
	["CVN-71 Theodore Roosevelt Sunk"] = {
		active = true,
		once = true,
		condition = 'Return.UnitDead("CVN-71 Theodore Roosevelt")',
		action = {
			[1] = 'db_airbases["CVN-71 Theodore Roosevelt"].inactive = true',
			[2] = 'Action.Text("CVN-71 Theodore Roosevelt has been lost, the exact cause of her sinking is still somewhat unclear at the moment. Despite her evacuation being orderly and escorts of the Battle Group picking up many survivors, losses are expected to be very high. Search and rescue operations are still ongoing. It s a difficult time for the US Navy.")',
			-- [3] = 'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			-- [4] = 'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			-- [5] = 'NoMoreNewspaper = true',
		}	
	},
	----- RED CAP -----
	["CAP After EWR Destroyed"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("102 EWR Site") == 0 and Return.TargetAlive("101 EWR Site") == 0 and Return.AirUnitAlive("2457 SDRLO") == 0',
		action = {
			[1] = 'Action.TargetActive("CAP Beirut east", true)',
			[2] = 'Action.TargetActive("CAP Hama west", true)',
			[3] = 'Action.TargetActive("CAP Abu al-Duhu", true)',
			[6] = 'Action.TargetActive("Deir ez-Zor 200km Alert", false)',
			[7] = 'Action.TargetActive("Damascus 100km Alert", false)',
			[8] = 'Action.TargetActive("Khalkhalah 80km Alert", false)',
			[9] = 'Action.TargetActive("Tabqua 110km Alert", false)',
			[10] = 'Action.TargetActive("Hama 100km Alert", false)',
			[11] = 'Action.TargetActive("An Nasiriyah 150km Alert", false)',
			[13] = 'Action.Text("With the recent destruction of all Early Warning Radar sites in the operations area, and Russians AWACS squadron being anihilated, the ability of the enemy to launch interceptors against our strike packages was severely degraded. Intelligence expects that the enemy will increasingly depend on Combat Air Patrols to compensate, though without the support of ground controllers these are estimated to be of limited effectiveness.")',
		},
	},		
	
	----- REPAIR AND REINFORCEMENTS -----
	["GroundUnitRepair"] = {
		active = true,
		condition = 'true',
		action = 'Action.GroundUnitRepair()',
	},
	["Repair"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitRepair()',
	},
	["Reinforce 111th Squadron Panther"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/111th Squadron Panther", "111th Squadron Panther", 4)',
	},
	["Reinforce 151th Squadron Bronze"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/151th Squadron Bronze", "151th Squadron Bronze", 4)',
	},
	["Reinforce 315th Air Division"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/315th Air Division", "315th Air Division", 2)',
	},
	["Reinforce 69 BS"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/69 BS", "69 BS", 2)',
	},	
	["Reinforce 171 ARW"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/171 ARW", "171 ARW", 2)',
	},	
	["Reinforce 4450th Tactical Group"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/4450th Tactical Group", "4450th Tactical Group", 2)',
	},
	["Reinforce 56th Operations Group"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/56th Operations Group", "56th Operations Group", 4)',
	},	
	["Reinforce 173rd Fighter Group"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/173rd Fighter Group", "173rd Fighter Group", 4)',
	},
	["Reinforce 7 ACCS"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/7 ACCS", "7 ACCS", 1)',
	},	
	["Reinforce 801 ARS"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/801 ARS", "801 ARS", 1)',
	},
	["Reinforce F6 Karlsborg"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/F6 Karlsborg", "F6 Karlsborg", 4)',
	},	
	["Reinforce 23rd FG"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/23rd FG", "23rd FG", 4)',
	},
	["Reinforce Escadron de Chasse 2/5 Ile-de-France"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/Escadron de Chasse 2/5 Ile-de-France", "Escadron de Chasse 2/5 Ile-de-France", 4)',
	},	
	["Reinforce Escadron de Chasse 1/2 Cigognes"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/Escadron de Chasse 1/2 Cigognes", "Escadron de Chasse 1/2 Cigognes", 4)',
	},	
	["Reinforce 122nd Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/122nd Squadron", "122nd Squadron", 4)',
	},
	["Reinforce Jagdbombergeschwader 33"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/Jagdbombergeschwader 33", "Jagdbombergeschwader 33", 4)',
	},
	["Reinforce 154 Gruppo, 6 Stormo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/154 Gruppo, 6 Stormo", "154 Gruppo, 6 Stormo", 4)',
	},
	["Reinforce152th Squadron Iron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/152th Squadron Iron", "152th Squadron Iron", 4)',
	},
	["Reinforce 326th Air Division"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/326th Air Division", "326th Air Division", 2)',
	},
	["Reinforce 4453th Tactical Group"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/4453th Tactical Group", "4453th Tactical Group", 2)',
	},	
	["Reinforce VF-101"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VF-101", "VF-101", 4)',
	},
	["Reinforce VS-29"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VS-29", "VS-29", 2)',
	},
	["Reinforce VS-21"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VS-21", "VS-21", 2)',
	},
	["Reinforce VAW-125"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VAW-125", "VAW-125", 1)',
	},		
	["Reinforce VF-118/GA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VF-118/GA", "VF-118/GA", 4)',
	},	
	["Reinforce 1th Army Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/1th Army Aviation Regiment", "1th Army Aviation Regiment", 3)',
	},
	["Reinforce HMLA-167"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/HMLA-167", "HMLA-167", 4)',
	},
	["Reinforce17th Cavalry Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/17th Cavalry Regiment", "17th Cavalry Regiment", 4)',

	},	
	["Reinforce HS-6 Indians"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/HS-6 Indians", "HS-6 Indians", 2)',
	},
	["Reinforce 14th Army Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/14th Army Aviation Regiment", "14th Army Aviation Regiment", 3)',

	},
	["Reinforce HMLA-177"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/HMLA-177", "HMLA-177", 4)',
	},	
	["Reinforce 18th Cavalry Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/18th Cavalry Regiment", "18th Cavalry Regiment", 4)',

	},
	--[[["Reinforce F17 Kallinge"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/F17 Kallinge", "F17 Kallinge", 6)',
	},]]
	--[[["Reinforce 27rd FG"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/27rd FG", "27rd FG", 4)',
	},]]
	--[[["Reinforce 12 Gruppo, 36 Stormo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/12 Gruppo, 36 Stormo", "12 Gruppo, 36 Stormo", 4)',
	},]]
	--[[["Reinforce VS-22"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VS-22", "VS-22", 2)',
	},]]
	--[[["Reinforce VAW-123"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/VAW-123", "VAW-123", 2)',

	},]]
	--[[["Reinforce 4th Army Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/4th Army Aviation Regiment", "4th Army Aviation Regiment", 2)',
	},]]
	--[[["Reinforce 11th Army Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/11th Army Aviation Regiment", "11th Army Aviation Regiment", 3)',
	},]]
	--[[["Reinforce Escadron de Chasse 1/5 Vendée"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/Escadron de Chasse 1/5 Vendée", "Escadron de Chasse 1/5 Vendée", 4)',
	},]]

	-- Red Reinforcement
	["Reinforce 117.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/117.IAP", "117.IAP", 4)',
	},
	["Reinforce 113.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/113.IAP", "113.IAP", 4)',
	},	
	["Reinforce 127.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/127.IAP", "127.IAP", 4)',
	},
	["Reinforce 123.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/123.IAP", "123.IAP", 4)',
	},	
	["Reinforce 948 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/948 Squadron", "948 Squadron", 4)',
	},		
	["Reinforce 67 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/67 Squadron", "67 Squadron", 4)',
	},
	["Reinforce 3 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/3 Squadron", "3 Squadron", 4)',
	},	
	["Reinforce 677 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/677 Squadron", "677 Squadron", 4)',
	},	
	["Reinforce 522 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/522 Squadron", "522 Squadron", 2)',
	},
	["Reinforce 368 ShAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/368 ShAP", "368 ShAP", 4)',
	},	
	["Reinforce 3 BAP 149th BAA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/3 BAP 149th BAA", "3 BAP 149th BAA", 4)',
	},
	["Reinforce 402nd Heavy Bomber Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/402nd Heavy Bomber Aviation Regiment", "402nd Heavy Bomber Aviation Regiment", 2)',
	},	
	["Reinforce 159.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/159.IAP", "159.IAP", 4)',
	},	
	["Reinforce 373 ShAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/373 ShAP", "373 ShAP", 4)',
	},	
	["Reinforce 764.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/764.IAP", "764.IAP", 2)',
	},	
	["Reinforce 132nd Heavy Bomber Aviation Regiment"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/132nd Heavy Bomber Aviation Regiment", "132nd Heavy Bomber Aviation Regiment", 2)',
	},
	["Reinforce 797.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/797.IAP", "797.IAP", 4)',
	},
	["Reinforce 4 Guards BAP 132nd BAA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/4 Guards BAP 132nd BAA", "4 Guards BAP 132nd BAA", 4)',
	},
	["Reinforce 23.OSAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/23.OSAP", "23.OSAP", 1)',
	},	
	["Reinforce 81st TFS"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/81st TFS", "81st TFS", 4)',
	},	
	["Reinforce 15th Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/15th Squadron", "15th Squadron", 4)',
	},	
	["Reinforce 637 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/637 Squadron", "637 Squadron", 4)',
	},
	["Reinforce 9th GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/9th GHR", "9th GHR", 4)',
	},
	["Reinforce 17th GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/17th GHR", "17th GHR", 4)',
	},
	["Reinforce 13th GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/13th GHR", "13th GHR", 4)',
	},
	["Reinforce 2nd GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/2nd GHR", "2nd GHR", 4)',
	},
	["Reinforce 16th Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/16th Squadron", "16th Squadron", 4)',
	},
	["Reinforce 14th Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/14th Squadron", "14th Squadron", 4)',
	},
	--[[["Reinforce 2 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/2 Squadron", "2 Squadron", 4)',
	},]]
	--[[["Reinforce 946 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/946 Squadron", "946 Squadron", 4)',
	},]]
	--[[["Reinforce 2 Guards BAP 21 th BAA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/2 Guards BAP 21 th BAA", "2 Guards BAP 21 th BAA", 4)',
	},]]
	--[[["Reinforce 37 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/37 Squadron", "37 Squadron", 4)',
	},]]
	--[[["Reinforce 11 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/11 Squadron", "11 Squadron", 4)',
	},]]
	--[[["Reinforce 267 ShAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/267 ShAP", "267 ShAP", 4)',
	},]]
	--[[["Reinforce 137.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/137.IAP", "137.IAP", 4)',
	},]]
	--[[["Reinforce 27.OSAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/27.OSAP", "27.OSAP", 1)',
	},]]
	--[[["Reinforce 1st GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/1st GHR", "1st GHR", 4)',
	},]]
	--[[["Reinforce 3rd GHR"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/3rd GHR", "3rd GHR", 4)',
	},]]
	--[[["Reinforce 7 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/7 Squadron", "7 Squadron", 4)',
	},]]
	--[[["Reinforce 133.IAP"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/133.IAP", "133.IAP", 4)',
	},	]]	
	--[[["Reinforce 3 Guards BAP 21 th BAA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/3 Guards BAP 21 th BAA", "3 Guards BAP 21 th BAA", 4)',
	},]]
	--[[["Reinforce 945 Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("R/945 Squadron", "945 Squadron", 4)',
	},]]	

	----- AVIATION UNIT STATUS -----
	["VF-101 Alive 75%"] = {-- aircraft=16+30 = 46 --> 75% = 40, 40% = 23,  25% = 15
		active = true,
		once = true,
		condition = 'Return.AirUnitAlive("VF-101") + Return.AirUnitReady("R/VF-101") < 34',
		action = 'Action.Text("Aircraft strength of the VF-101 Squadron equiped with F-14A-135-GR has fallen below 75%.")',
	},
	["VF-101 Alive 50%"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitAlive("VF-101") + Return.AirUnitReady("R/VF-101") < 23',
		action = 'Action.Text("Aircraft strength of the VF-101 Squadron equiped with F-14A-135-GR has fallen below 50%. If losses continue at the present rate, the combat capability of the squadron is in jeopardy.")',
	},
	["VF-101 Alive 25%"] = {
		active = true,
		once = true,
		condition = 'Return.AirUnitAlive("VF-101") + Return.AirUnitReady("R/VF-101") < 12',
		action = 'Action.Text("Aircraft strength of the VF-101 Squadron equiped with F-14A-135-GR has fallen below 25%. The number of available airframes is critically low. The squadron is short of destruction.")',
	},
	
	
	---- GROUND TARGET STATUS ---
	["Blue Ground Target Briefing Intel"] = {
		active = true,
		condition = 'true',
		action = 'Action.AddGroundTargetIntel("blue")',
	},
	["Red Ground Target Briefing Intel"] = {
		active = true,
		condition = 'true',
		action = 'Action.AddGroundTargetIntel("red")',
	},

	--[[
	--
	--

	--------------TARGETS LATE ACTIVATIONS	----------------------------
	
	["Scud launcher 1 Activation"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 4',
		action = {
			[1] = 'Action.TargetActive("Scud 1",true)',
			[2] = 'Action.Text("A Scud launcher has been detected on the coastline far north of Bandar e Jask.")',
			[3] = 'Action.Text("Un lanceur Scud a été détecté le long de la côte loin au nord de Bandar e Jask.")',	
		}
	},
	["Scud launcher 2 Activation"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 5',
		action = {
			[1] = 'Action.TargetActive("Scud 2",true)',
			[2] = 'Action.Text("A Scud launcher has been detected on Abu Musa Island.")',
			[3] = 'Action.Text("Un lanceur Scud a été détecté sur l île de Abu Musa.")',	
		}
	},
	["Scud launcher 3 Activation"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 7',
		action = {
			[1] = 'Action.TargetActive("Scud 3",true)',
			[2] = 'Action.Text("A new Scud launcher has been detected on Abu Musa Island.")',
			[3] = 'Action.Text("Un autre lanceur Scud a été détecté sur l île de Abu Musa.")',	
		}
	},



	]]
}