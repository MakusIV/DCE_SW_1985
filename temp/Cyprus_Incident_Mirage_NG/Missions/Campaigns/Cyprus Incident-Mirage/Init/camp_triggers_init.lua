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
--Return.PlaceLogistic("AirbaseName")						returns the logistics of a base in weight which can be increased by the landing of transport aircraft or helicopters


--List of Action functions for trigger actions:
--Action.None()																				--void action
--Action.Text("your briefing text")															--add briefing text
--Action.TextPlayMission(arg)																--add trigger text to briefing text of this mission only if it is playable
--Action.SetCampFlag(flag-n, boolean/number)												--set campagn flag to value
--Action.AddCampFlag(flag-n, number)														--add or subtract to campaign flag
--Action.AddImage("filname.jpg")															--add briefing picture
--Action.CampaignEnd("win"/"draw"/"loss")													--end campaign
--Action.TargetActive("TargetName", boolean)												--set target active/inactive
--Action.AirUnitActive("UnitName", boolean)													--set unit active/inactive
--Action.SideBase("side", "BaseName")														--change le camp d'une base, ATTENTION, deplacer les unités avant--Action.SideBase("blue", "Incirlik Airbase")
--Action.AirUnitBase("UnitName", "BaseName")												--set unit base
--Action.AirUnitPlayer("UnitName", boolean)													--set unit playable
--Action.AirUnitReinforce("SourceUnitName", "DestinationUnitName", destNumber)				--send reinforcement aircraft from one unit to another
--Action.AirUnitRepair()																	--repair damaged aircraft in all air units
--Action.GroundUnitRepair()																	-- (ADD) M19.f : Repair Ground
--Action.AddGroundTargetIntel("sideName")													--add ground target intel updates to briefing
--Action.GroupHidden("GroupName", boolean)													--change vehicle/ship group hidden status
--Action.GroupProbability("GroupName", number 0-1)											--change vehicle/ship group probability status
																							--due to the way stats are reset for a new playrun upon completing a FirstMission, groups probability changed by trigger in first mission will not be carried over to second mission! Repeat trigger on second mission or use the trigger from mission 2 on only for flawless function.
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
			'Action.Text("Since 1974 Cyprus is divided between Cyprus pro-Turkish population to the north and Cyprus pro-Greek population to the south. June 2004,Pro-Turkish forces are trying to circle Nicosia with surprised light columms attack. Their hope is to capture the city and win lot more territorial possessions. Cyprus shopper units will try to resist and destroy those weak enemy columns in the suburbs of Nicosia. They are equiped with Mi-35P Hind and SA-342 Gazelle. Intel think that Turkey is ready to support massively this attack. Our Mirage 2000C squadron is deployed on Paphos airbase and will try to help our allies.")',
			'Action.Text("The Turkish Air Force is flying a mix of F-16C F-4E and F-5E-3 fighters. UH-1H Huey and AH-1 Cobra will support their ground forces directly.SAM systems like Rapier, Hawk and more mobile Avenger and Stinger Manpad will certainly be deployed if needed by Turkey")',
			'Action.AddImage("Newspaper_FirstNight_blue.jpg", "blue")',
			-- 'Action.AddImage("Newspaper_FirstNight_red.jpg", "red")',
		},
	},
	
	
	----- CAMPAIGN END -----
	["Campaign End Victory 1"] = {
		active = true,
		once = false,
		condition = '(Return.Mission() > 26) and (Return.CampFlag(851) + Return.CampFlag(852) + Return.CampFlag(853) + Return.CampFlag(854) + Return.CampFlag(855) + Return.CampFlag(856)) < 3',
		action = {
			'Action.CampaignEnd("win")',
			'Action.Text("Cyprus Forces repulse the turkish assault with Greek forces help. They are trying to negociate a cease fire now.")',
			'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 1"] = {
		active = true,
		once = false,
		condition = '(Return.Mission() > 26) and (Return.CampFlag(851) + Return.CampFlag(852) + Return.CampFlag(853) + Return.CampFlag(854) + Return.CampFlag(855) + Return.CampFlag(856)) > 2',
		action = {
			'Action.CampaignEnd("loss")',
			'Action.Text("North Cyprus Forces gain lot of territories with Turkish forces help. We will have to negociate a cease fire in really bad conditions")',
			'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss 2"] = {
		active = true,
		once = false,
		condition = 'GroundTarget["red"].percent < 40',
		action = {
			'Action.CampaignEnd("loss")',
			'Action.Text("Turkish airforce was able to destroy enough Greek and Cyprus forces to decide them to ask for a cease fire  and stop any Air missions. This is a bitter failure for the people of Cyprus ")',
			'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			'NoMoreNewspaper = true',
		},
	},
	["Campaign End Loss"] = {
		active = true,
		once = false,
		condition = 'Return.AirUnitAlive("EC 331") < 2',
		action = {
			'Action.CampaignEnd("loss")',
			'Action.Text("Ongoing combat operations have exhausted EC 331. Loss rate has reached a level where reinforcements are no longer able to sustain combat operations. Your unit has been wiped out by the enemy.")',
			'Action.AddImage("Newspaper_Victory_red.jpg", "red")',
			'Action.AddImage("Newspaper_Defeat_blue.jpg", "blue")',
			'NoMoreNewspaper = true',
		},
	},	
	["Campaign End Victory 2"] = {
		active = true,
		once = false,
		condition = 'GroundTarget["blue"].percent < 60',
		action = {
			'Action.CampaignEnd("win")',
			'Action.Text("Cyprus forces were able to inflict great losses to Turkish Army with the precious help of Greek forces")',
			'Action.AddImage("Newspaper_Victory_blue.jpg", "blue")',
			'Action.AddImage("Newspaper_Defeat_red.jpg", "red")',
			'NoMoreNewspaper = true',
		},
	},
	
	
		
	----- CAMPAIGN SITUATION -----
	["Campaign first destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 100',
		action = {
			'Action.Text("First targets have been destroyed. Keep up the good work")',
			'Action.Text("Les premières cibles ont été détruites. Continuez votre bon travail")',
		},
	},
	["Campaign 20 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 80',
		action = {
			'Action.Text("Enemy targets have sustained fair damages. Keep up the good work")',
			'Action.Text("Les cibles ennemies ont subi des dommages moyens. Continuez votre bon travail")',
		},
	},
	["Campaign 40 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 60',
		action = {
			'Action.Text("Enemy targets have sustained great damages. Strike missions are really efficient and we will win this war soon")',
			'Action.Text("Les cibles ennemies ont subi de gros dégâts. Les attaques au sol sont vraiment efficaces et nous gagnerons bientôt cette guerre")',
		},
	},
	["Campaign 50 percents destructions"] = {
		active = true,
		once = true,
		condition = 'GroundTarget["blue"].percent < 50',
		action = {
			'Action.Text("More than half of our targets are neutralized. Intelligence think that the enemy will ask for a cease fire soon")',
			'Action.Text("Plus de la moitié de nos cibles sont neutralisées. Les renseignements pensent que l ennemi demandera bientôt un cessez-le-feu")',
		},
	},

	
	
	--- Flags 801 : Turkish involvement - 802 : Greek involvement  ---- 821-825 : CDF stop --- 831-834 : NCTF stop --- 841-844 : GEF stop
	
	
	
	
	----- TROOPS MOVEMENTS ------
	
	["Greek EC 331 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 0',
		action = {
		'Action.AirUnitActive("EC 331", true)',
		'Action.TargetActive("Paphos Airbase Alert", true)',
		'Action.TargetActive("Paphos Airbase Alert 2", true)',
		'Action.TargetActive("Paphos Airbase Alert 3", true)',
		'Action.TargetActive("CAP-1-Greek", true)',
		'Action.Text("North Cyprus columns crossed the No man s land and are coming from the far South west of Nicosia. Greek squadron will have to maintain air superiority against Turkish Phantom and Tigers while trying to help Cyprus shoppers to cripple North Cyprus columns")',
		},
	},
	["Cyprus Border Force 1 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 0',
		action = {
		'Action.TemplateActive("Cyprus Border Force 1 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 1", true)',
		'Action.TemplateActive("Ercan Airbase Defenses T1.stm")',
		'Action.TemplateActive("Larnaca Cyprus defenses T1.stm")',
		'Action.TargetActive("Larnaca Cyprus defenses", true)',		
		},
	},
	["Cyprus Border Force 6 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 0',
		action = {
		'Action.TemplateActive("Cyprus Border Force 6 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 6", true)',
		},
	},
	["North Cyprus Force 1 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 0',
		action = {
		'Action.TemplateActive("North Cyprus Force 1 T1.stm")',
		'Action.TargetActive("North Cyprus Force 1", true)',
		'Action.AirUnitActive("111.Filo", true)',
		'Action.AirUnitActive("134.Filo", true)',		
		'Action.TargetActive("CAP-1-Turkish", true)',
		'Action.Text("North Cyprus columns crossed the No man s land and are coming from the far South west of Nicosia. Turkish air force is flying over Cyprus and seems to try to maintain air superiority")',
		'Action.TemplateActive("Cyprus Border Force 2 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 2", true)',
		'Action.AddImage("Newspaper_FirstNight_blue.jpg", "blue")',
		},
	},
	["North Cyprus Force 1 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus Force 1") < 40',
		action = {	
		'Action.Text("North Cyprus columns to the far South west of Nicosia took heavy losses and are stopped")',
		},
	},
	["North Cyprus Force 2 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 0',
		action = {
		'Action.TemplateActive("North Cyprus Force 2 T1.stm")',
		'Action.TargetActive("North Cyprus Force 2", true)',		
		'Action.Text("North Cyprus columns crossed the No man s land and are coming from the close south west of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 3 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 3", true)',
		},
	},
	["North Cyprus Force 2 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus Force 2") < 40',
		action = {		
		'Action.Text("North Cyprus columns to the close south west of Nicosia took heavy losses and are stopped")',
		},
	},	
	["North Cyprus Force 3 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() >0',
		action = {
		'Action.TemplateActive("North Cyprus Force 3 T1.stm")',
		'Action.TargetActive("North Cyprus Force 3", true)',		
		'Action.Text("North Cyprus columns crossed the No man s land and are coming from the close South east of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 4 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 4", true)',
		},
	},
	["North Cyprus Force 3 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus Force 3") < 40',
		action = {
		'Action.Text("North Cyprus columns to the close South east of Nicosia took heavy losses and are stopped")',
		},
	},
	["North Cyprus Force 4 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() >0',
		action = {
		'Action.TemplateActive("North Cyprus Force 4 T1.stm")',
		'Action.TargetActive("North Cyprus Force 4", true)',		
		'Action.Text("North Cyprus columns crossed the No man s land and are coming from the far South east of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 5 T1.stm")',
		'Action.TargetActive("Cyprus Border Force 5", true)',
		},
	},
	["North Cyprus Force 4 stop 1"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus Force 4") < 40',
		action = {	
		'Action.Text("North Cyprus columns to the far South east of Nicosia took heavy losses and are stopped")',
		},
	},
	["North Cyprus Force 1 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 1 and (Return.TargetAlive("North Cyprus Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 1 T2.stm")',
		'Action.Text("North Cyprus columns are still moving in the south west suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 1 T2.stm")',
		'Action.TemplateActive("Cyprus Border Force 2 T2.stm")',
		},
	},
	["North Cyprus Force 2 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 1 and (Return.Mission() < 3 and Return.TargetAlive("North Cyprus Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 2 T2.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south west suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 3 T2.stm")',
		},
	},
	["North Cyprus Force 3 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 1 and (Return.Mission() < 3 and Return.TargetAlive("North Cyprus Force 3") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 3 T2.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south east of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 4 T2.stm")'
		},
	},
	["North Cyprus Force 4 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 1 and (Return.Mission() < 3 and Return.TargetAlive("North Cyprus Force 4") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 4 T2.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south east of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 5 T2.stm")',
		},
	},
	["North Cyprus Force 1 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 2 and (Return.TargetAlive("North Cyprus Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 1 T3.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south west suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 1 T3.stm")',
		'Action.TemplateActive("Cyprus Border Force 2 T3.stm")',
		},
	},
	["North Cyprus Force 2 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 2 and (Return.TargetAlive("North Cyprus Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 2 T3.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south west suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 3 T3.stm")',
		},
	},
	["North Cyprus Force 3 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 2 and (Return.TargetAlive("North Cyprus Force 3") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 3 T3.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south east suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 4 T3.stm")'
		},
	},
	["North Cyprus Force 4 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 2 and (Return.TargetAlive("North Cyprus Force 4") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus Force 4 T3.stm")',	
		'Action.Text("North Cyprus columns are still moving in the south east suburbs of Nicosia")',
		'Action.TemplateActive("Cyprus Border Force 5 T3.stm")',
		},
	},		
	["North Cyprus Force First Victory - Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.Mission() > 4 and ((Return.TargetAlive("North Cyprus Force 1") > 40 or Return.TargetAlive("North Cyprus Force 2") > 40) and (Return.TargetAlive("North Cyprus Force 3") > 40 or Return.TargetAlive("North Cyprus Force 4") > 40))',
		action = {
		'Action.TargetActive("Airlift Paphos Airbase 2", true)',
		'Action.TargetActive("Airlift Paphos Airbase 3", true)',
		'Action.Text("North Cyprus columns are circling Nicosia and will soon be able to capture the city. Greece can t tolerate that and decided to help Cyprus. Soon more Ground forces will be projected to protect Cyprus")',
		'Action.SetCampFlag(802, Return.Mission())',
		},
	},
	["Turkish involvement"] = {
		active = true,
		once = true,
		condition = '((Return.TargetAlive("North Cyprus Force 1") < 40 and Return.TargetAlive("North Cyprus Force 2") < 40) or (Return.TargetAlive("North Cyprus Force 3") < 40 and Return.TargetAlive("North Cyprus Force 4") < 40)) and ( Return.CampFlag(802) == nil or Return.CampFlag(802) <= 0)',
		action = {
		'Action.AirUnitActive("2nd KHA", true)',
		'Action.AirUnitActive("2nd-2 KHA", true)',
		'Action.TargetActive("Airlift Ercan Airbase 2", true)',
		'Action.TargetActive("Airlift Ercan Airbase 3", true)',	
		'Action.Text("North Cyprus columns have been crippled but it seems that turkish forces will try to rescue their allies sending heavy reinforcements")',
		'Action.SetCampFlag(801, Return.Mission())',
		},
	},
	["Turkish involvement after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2)',
		action = {
		'Action.AirUnitActive("2nd KHA", true)',
		'Action.AirUnitActive("2nd-2 KHA", true)',
		'Action.TargetActive("Airlift Ercan Airbase 2", true)',
		'Action.TargetActive("Airlift Ercan Airbase 3", true)',	
		'Action.Text("After Greece involvement it seems that turkish forces will try to rescue their allies sending heavy reinforcements")',
		},
	},
	["Cyprus Defense Forces activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 2)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 1", true)',
		'Action.TemplateActive("Cyprus Defense Force 2 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 2", true)',
		'Action.TemplateActive("Cyprus Defense Force 3 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 3", true)',
		'Action.TemplateActive("Cyprus Defense Force 4 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 4", true)',
		'Action.TemplateActive("Cyprus Defense Force 5 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 5", true)',
		'Action.AddImage("CDF.png")',
		'Action.Text("After Turkish direct involment our Defense Forces have been mobilized and are moving to the frontline")',
		},
	},
	["Cyprus Defense Force 1 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Cyprus Defense Force 1") < 40',
		action = {
		'Action.Text("Cyprus Defense Force 1 took heavy losses and is stopped")',
		},
	},
	["Cyprus Defense Force 1 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Cyprus Defense Force 1") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T2.stm")',
		'Action.AddImage("CDF1-2.png")',
		'Action.Text("Cyprus Defense Force 1 is still moving")',
		},
	},
	["Cyprus Defense Force 1 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Cyprus Defense Force 1") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T3.stm")',
		'Action.AddImage("CDF1-3.png")',
		'Action.Text("Cyprus Defense Force 1 reached defensives positions")',
		'Action.SetCampFlag(821, Return.Mission())',
		},
	},
	["Cyprus Defense Force 2 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Cyprus Defense Force 2") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 2 T2.stm")',
		'Action.AddImage("CDF2-2.png")',
		'Action.Text("Cyprus Defense Force 2 is still moving")',
		},
	},
	["Cyprus Defense Force 2 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Cyprus Defense Force 2") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 2 T3.stm")',
		'Action.AddImage("CDF2-3.png")',
		'Action.Text("Cyprus Defense Force 2 reached defensives positions")',
		'Action.SetCampFlag(822, Return.Mission())',
		},
	},
	["Cyprus Defense Force 3 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Cyprus Defense Force 3") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 3 T2.stm")',
		'Action.AddImage("CDF3-2.png")',
		'Action.Text("Cyprus Defense Force 3 is still moving")',
		},
	},
	["Cyprus Defense Force 3 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Cyprus Defense Force 3") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 3 T3.stm")',
		'Action.AddImage("CDF3-3.png")',
		'Action.Text("Cyprus Defense Force 3 reached defensives positions")',
		'Action.SetCampFlag(823, Return.Mission())',
		},
	},
	["Cyprus Defense Force 4 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Cyprus Defense Force 4") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 4 T2.stm")',
		'Action.AddImage("CDF4-2.png")',
		'Action.Text("Cyprus Defense Force 4 is still moving")',
		},
	},
	["Cyprus Defense Force 4 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Cyprus Defense Force 4") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 4 T3.stm")',
		'Action.AddImage("CDF4-3.png")',
		'Action.Text("Cyprus Defense Force 4 reached defensives positions")',
		'Action.SetCampFlag(824, Return.Mission())',
		},
	},
	["Cyprus Defense Force 5 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Cyprus Defense Force 5") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 5 T2.stm")',
		'Action.AddImage("CDF5-2.png")',
		'Action.Text("Cyprus Defense Force 5 is still moving")',
		},
	},
	["Cyprus Defense Force 5 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Cyprus Defense Force 5") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 5 T3.stm")',
		'Action.AddImage("CDF5-3.png")',
		'Action.Text("Cyprus Defense Force 5 reached defensives positions")',
		'Action.SetCampFlag(825, Return.Mission())',
		},
	},
	["Cyprus Defense Force 2 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Cyprus Defense Force 2") < 40',
		action = {
		'Action.Text("Cyprus Defense Force 2 took heavy losses and is stopped")',
		},
	},
	["Cyprus Defense Force 3 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Cyprus Defense Force 3") < 40',
		action = {
		'Action.Text("Cyprus Defense Force 3 took heavy losses and is stopped")',
		},
	},
	["Cyprus Defense Force 4 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Cyprus Defense Force 4") < 40',
		action = {
		'Action.Text("Cyprus Defense Force 4 took heavy losses and is stopped")',
		},
	},
	["Cyprus Defense Force 5 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Cyprus Defense Force 5") < 40',
		action = {
		'Action.Text("Cyprus Defense Force 5 took heavy losses and is stopped")',
		},
	},
	["Cyprus Defense Forces activation after North Cyprus attack"] = {
		active = true,
		once = true,
		-- condition = 'Return.CampFlag(802) and (Return.Mission() == Return.CampFlag(802))',
		condition = 'Return.CampFlag(802)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 1", true)',
		'Action.TemplateActive("Cyprus Defense Force 2 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 2", true)',
		'Action.TemplateActive("Cyprus Defense Force 3 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 3", true)',
		'Action.TemplateActive("Cyprus Defense Force 4 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 4", true)',
		'Action.TemplateActive("Cyprus Defense Force 5 T1.stm")',
		'Action.TargetActive("Cyprus Defense Force 5", true)',
		'Action.AddImage("CDF.png")',
		'Action.Text("After North Cyprus attack our Defense Forces have been mobilized and are moving to the frontline")',
		},
	},
	["Cyprus Defense Force 1 move 2 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Cyprus Defense Force 1") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T2.stm")',
		'Action.AddImage("CDF1-2.png")',
		'Action.Text("Cyprus Defense Force 1 is still moving")',
		},
	},
	["Cyprus Defense Force 1 move 3 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Cyprus Defense Force 1") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T3.stm")',
		'Action.AddImage("CDF1-3.png")',
		'Action.Text("Cyprus Defense Force 1 reached defensives positions")',
		'Action.SetCampFlag(821, Return.Mission())',
		},
	},
	["Cyprus Defense Force 2 move 2 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Cyprus Defense Force 2") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 2 T2.stm")',
		'Action.AddImage("CDF2-2.png")',
		'Action.Text("Cyprus Defense Force 2 is still moving")',
		},
	},
	["Cyprus Defense Force 2 move 3 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Cyprus Defense Force 2") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 2 T3.stm")',
		'Action.AddImage("CDF2-3.png")',
		'Action.Text("Cyprus Defense Force 2 reached defensives positions")',
		'Action.SetCampFlag(822, Return.Mission())',
		},
	},
	["Cyprus Defense Force 3 move 2 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Cyprus Defense Force 3") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 3 T2.stm")',
		'Action.AddImage("CDF3-2.png")',
		'Action.Text("Cyprus Defense Force 3 is still moving")',
		},
	},
	["Cyprus Defense Force 3 move 3 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Cyprus Defense Force 3") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 3 T3.stm")',
		'Action.AddImage("CDF3-3.png")',
		'Action.Text("Cyprus Defense Force 3 reached defensives positions")',
		'Action.SetCampFlag(823, Return.Mission())',
		},
	},
	["Cyprus Defense Force 4 move 2 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Cyprus Defense Force 4") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 4 T2.stm")',
		'Action.AddImage("CDF4-2.png")',
		'Action.Text("Cyprus Defense Force 4 is still moving")',
		},
	},
	["Cyprus Defense Force 4 move 3 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Cyprus Defense Force 4") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 4 T3.stm")',
		'Action.AddImage("CDF4-3.png")',
		'Action.Text("Cyprus Defense Force 4 reached defensives positions")',
		'Action.SetCampFlag(824, Return.Mission())',
		},
	},
	["Cyprus Defense Force 5 move 2 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Cyprus Defense Force 5") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 5 T2.stm")',
		'Action.AddImage("CDF5-2.png")',
		'Action.Text("Cyprus Defense Force 5 is still moving")',
		},
	},
	["Cyprus Defense Force 5 move 3 after North Cyprus attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Cyprus Defense Force 5") > 40)',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 5 T3.stm")',
		'Action.AddImage("CDF5-3.png")',
		'Action.Text("Cyprus Defense Force 5 reached defensives positions")',
		'Action.SetCampFlag(825, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 1 initial positions"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 1)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 1", true)',		
		'Action.Text("An heavy Turkish column has been detected on the main road between Famagusta and Nicosia just South of Gecitkale airbase. It seems that turkish army will get fully involved in this war. Be careful Turkish forces learned quickly from their allies defeat and heavy Air defenses are part of their columns now.")',
		'Action.AddImage("NCTF1-1.png")',
		},
	},
	["North Cyprus-Turkish Force 1 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus-Turkish Force 1") < 40',
		action = {
		'Action.Text("Heavy Turkish column 1 took heavy losses and is stopped")',
		},
	},
	["North Cyprus-Turkish Force 1 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 3) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T2.stm")',
		'Action.Text("Heavy Turkish column 1 is still moving")',
		'Action.AddImage("NCTF1-2.png")',
		},
	},
	["North Cyprus-Turkish Force 1 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T3.stm")',
		'Action.Text("Heavy Turkish column 1 is still moving")',
		'Action.AddImage("NCTF1-3.png")',
		},
	},
	["North Cyprus-Turkish Force 1 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T4.stm")',
		'Action.Text("Heavy Turkish column 1 stopped moving near ")',
		'Action.AddImage("NCTF1-4.png")',
		'Action.SetCampFlag(831, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 1 initial positions after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 1", true)',		
		'Action.Text("An heavy Turkish column has been detected on the main road between Famagusta and Nicosia just South of Gecitkale airbase. It seems that turkish army will get fully involved in this war. Be careful Turkish forces learned quickly from their allies defeat and heavy Air defenses are part of their columns now.")',
		'Action.AddImage("NCTF1-1.png")',
		},
	},
	["North Cyprus-Turkish Force 1 move 2 after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 4) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.AirUnitBase("134.Filo", "Gecitkale Airbase")',
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T2.stm")',
		'Action.Text("Heavy Turkish column 1 is still moving in the suburbs north east of Nicosia")',
		'Action.AddImage("NCTF1-2.png")',
		},
	},
	["North Cyprus-Turkish Force 1 move 3 after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 6) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T3.stm")',
		'Action.Text("Heavy Turkish column 1 is still moving few miles west of Nicosia")',
		'Action.AddImage("NCTF1-3.png")',
		},
	},
	["North Cyprus-Turkish Force 1 move 4 after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 8) and (Return.TargetAlive("North Cyprus-Turkish Force 1") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T4.stm")',
		'Action.Text("Heavy Turkish column 1 stopped 10 nm west of Nicosia ")',
		'Action.AddImage("NCTF1-4.png")',
		'Action.SetCampFlag(831, Return.Mission())',
		},
	},
	["North Cyprus Forces no more targeted"] = {
		active = true,
		once = true,
		-- condition = 'Return.CampFlag(801) and (Return.Mission() == Return.CampFlag(801))',
		condition = 'Return.CampFlag(801)',
		action = {
		'Action.TargetActive("North Cyprus Force 1", false)',
		'Action.TargetActive("North Cyprus Force 2", false)',
		'Action.TargetActive("North Cyprus Force 3", false)',
		'Action.TargetActive("North Cyprus Force 4", false)',
		},
	},
	["Larnaca Airbase Attack"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 2)',
		action = {		
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T1.stm")',
		'Action.TargetActive("Larnaca Turkish Assault Force 1", true)',
		'Action.Text("Larnaca Airbase is under attack by a Marines Turkish force. We must try to defend it")',
		'Action.AddImage("LarnacaAttack.png")',
		},
	},
	["Larnaca Airbase Attack after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 4)',
		action = {
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T1.stm")',
		'Action.TargetActive("Larnaca Turkish Assault Force 1", true)',
		'Action.Text("Larnaca Airbase is under attack by a Marines Turkish force. We must try to defend it")',
		'Action.AddImage("LarnacaAttack.png")',
		},
	},
	["Larnaca Airbase Captured"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 4) and (Return.TargetAlive("Larnaca Turkish Assault Force 1") > 40)',
		action = {
		'Action.TemplateActive("Larnaca Cyprus defenses T2.stm")',
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T2.stm")',
		'Action.SideBase("red", "Larnaca Airbase")',
		'Action.Text("Larnaca Airbase has been captured by Turkish forces.")',
		'Action.SetCampFlag(804, Return.Mission())',
		},
	},
	["Larnaca Airbase Captured after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 6) and (Return.TargetAlive("Larnaca Turkish Assault Force 1") > 40)',
		action = {
		'Action.TemplateActive("Larnaca Cyprus defenses T2.stm")',
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T2.stm")',
		'Action.SideBase("red", "Larnaca Airbase")',
		'Action.Text("Larnaca Airbase has been captured by Turkish forces.")',
		'Action.SetCampFlag(804, Return.Mission())',
		},
	},
	["Larnaca Airbase Turkish AA Defenses"] = {
		active = true,
		once = true,
		-- condition = 'Return.CampFlag(804) and (Return.Mission() == Return.CampFlag(804))',
		condition = 'Return.CampFlag(804)',
		action = {
		'Action.TemplateActive("Larnaca Turkish AA T1.stm")',
		},
	},
	["Turkish Artillery Force 1 activation"] = {
		active = true,
		once = false,
		condition = 'Return.CampFlag(801) and (Return.Mission() > Return.CampFlag(801) + 1)',
		action = {
		'Action.TemplateActive("Turkish Artillery Force 1 T1.stm","Turkish Artillery Force 1 T2.stm","Turkish Artillery Force 1 T3.stm")',
		'Action.TargetActive("Turkish Artillery Force 1", true)',
		'Action.Text("A Turkish artillery battery is pounding Lakatamia Airbase, it seems to move often so it will be difficult to localize it")',
		'Action.AddImage("TurkishArtillery.png")',
		},
	},
	["Turkish Artillery Force 1 activation after Greece involvement"] = {
		active = true,
		once = false,
		condition = 'Return.CampFlag(802) and (Return.Mission() > Return.CampFlag(802) + 5)',
		action = {
		'Action.TemplateActive("Turkish Artillery Force 1 T1.stm","Turkish Artillery Force 1 T2.stm","Turkish Artillery Force 1 T3.stm")',
		'Action.TargetActive("Turkish Artillery Force 1", true)',
		'Action.Text("A Turkish artillery battery is pounding Lakatamia Airbase, it seems to move often so it will be difficult to localize it")',
		'Action.AddImage("TurkishArtillery.png")',
		},
	},
	["Helicopters Gazelle Squadron Move"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 2)',
		action = {		
		'Action.AirUnitBase("450 M-E/P-2", "Paphos Airbase")',		
		'Action.Text("After our initial victory over North Cyprus invaders, Turkish sent massive reinforcement to help their allies and Larnaca airbase is under attack. We must retreat our Gazelle frontline helicopters unit to Paphos airbase")',
		},
	},
	["Helicopters Gazelle Squadron Move after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 4)',
		action = {		
		'Action.AirUnitBase("450 M-E/P-2", "Paphos Airbase")',		
		'Action.Text("Larnaca airbase is under attack. Despite Greece involvement we must retreat our Gazelle frontline helicopters unit to Paphos airbase")',
		},
	},
	["Helicopters Hind Squadron Move"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 1)',
		action = {
		'Action.AirUnitBase("450 M-E/P-1", "Paphos Airbase")',			
		'Action.Text("After our initial victory over North Cyprus invaders, Turkish sent massive reinforcement to help their allies. We must retreat our Hind frontline helicopters unit to Paphos airbase")',
		'Action.SetCampFlag(803, Return.Mission())',
		},
	},
	["Helicopters Hind Squadron Move after Greece Involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 1)',
		action = {
		'Action.AirUnitBase("450 M-E/P-1", "Paphos Airbase")',			
		'Action.Text("North Cyprus columns are circling Lakatamia airbase. Despite Greece involvement we must retreat our frontline helicopters unit to Paphos airbase")',
		'Action.SetCampFlag(803, Return.Mission())',
		},
	},
	["Helicopters Hind Squadron near front move"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(803) and (Return.Mission() >= Return.CampFlag(803) + 1)',
		action = {
		'Action.AirUnitBase("450 M-E/P-1", "FARP-London")',			
		'Action.Text("After Hind quick Paphos Airbase redeployment, we decided to use a mountain FARP to be closer from the frontline. FARP-London will be perfect for that. FARP_London position is 16 NM from EWR-Eyeball to 115° just near FARP-Dallas")',		
		},
	},
	["Helicopters Gazelle Squadron near front move"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 3)',
		action = {
		'Action.AirUnitBase("450 M-E/P-2", "FARP-Dallas")',			
		'Action.Text("After Gazelle quick Paphos Airbase redeployment, we decided to use a mountain FARP to be closer from the frontline. FARP-Dallas will be perfect for that. FARP_Dallas position is 17 NM from EWR-Eyeball to 115° just near FARP-London")',		
		},
	},
	["Helicopters Gazelle Squadron near front move after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5)',
		action = {
		'Action.AirUnitBase("450 M-E/P-2", "FARP-Dallas")',			
		'Action.Text("After Gazelle quick Paphos Airbase redeployment, we decided to use a mountain FARP to be closer from the frontline. FARP-Dallas will be perfect for that. FARP_Dallas position is 17 NM from EWR-Eyeball to 115° just near FARP-London")',		
		},
	},
	["Turkish Naval Convoi 1 activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 2)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 1", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy just lived Turkish coasts to rejoin south east port in Cyprus")',
		},
	},
	["Turkish Naval Convoi 1 mouvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 4) and (Return.TargetAlive("Turkish Naval Convoy 1") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T2.stm")',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is near Famagusta port in East Cyprus")',
		},
	},
	["Turkish Naval Convoi 1 in port"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 6) and (Return.TargetAlive("Turkish Naval Convoy 1") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T3.stm")',
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 2", true)',
		'Action.TemplateActive("Turkish Hawk Battery 2 T1.stm")',
		'Action.TargetActive("Turkish Hawk Battery 2", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Famagusta port in East Cyprus")',
		'Action.AddImage("NCTF2-1.png")',
		'Action.SetCampFlag(805, Return.Mission())',
		},
	},
	["Turkish Naval Convoi 1 activation after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 1", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy just lived Turkish coasts to rejoin south east port in Cyprus")',
		},
	},
	["Turkish Naval Convoi 1 mouvement after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 4) and (Return.TargetAlive("Turkish Naval Convoy 1") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T2.stm")',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is near Famagusta port in East Cyprus")',
		},
	},
	["Turkish Naval Convoi 1 in port after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 6) and (Return.TargetAlive("Turkish Naval Convoy 1") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 1 T3.stm")',
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 2", true)',
		'Action.TemplateActive("Turkish Hawk Battery 2 T1.stm")',
		'Action.TargetActive("Turkish Hawk Battery 2", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Famagusta port in East Cyprus")',
		'Action.AddImage("NCTF2-1.png")',
		'Action.SetCampFlag(805, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 2 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(805) and (Return.Mission() >= Return.CampFlag(805) + 3) and (Return.TargetAlive("North Cyprus-Turkish Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T2.stm")',
		'Action.AddImage("NCTF2-2.png")',
		'Action.TemplateActive("Turkish Naval Convoy 1 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 1", false)',
		'Action.Text("Heavy Turkish column 2 is still moving just south of Famagusta")',
		},
	},
	["North Cyprus-Turkish EWR activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(805) and (Return.Mission() >= Return.CampFlag(805) + 1)',
		action = {
		'Action.TemplateActive("EWR-Jaguar T1.stm")',
		'Action.TargetActive("EWR-Jaguar", true)',
		'Action.AddImage("EWR-Jaguar.png")',
		'Action.Text("A new Turkish EWR seems to be active near Famagusta")',
		},
	},
	["North Cyprus-Turkish Force 2 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(805) and (Return.Mission() >= Return.CampFlag(805) + 5) and (Return.TargetAlive("North Cyprus-Turkish Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T3.stm")',
		'Action.AddImage("NCTF2-3.png")',
		'Action.Text("Heavy Turkish column 2 is still moving 5 nm East of Kingsfield airbase")',
		},
	},
	["North Cyprus-Turkish Force 2 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(805) and (Return.Mission() >= Return.CampFlag(805) + 7) and (Return.TargetAlive("North Cyprus-Turkish Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T4.stm")',
		'Action.AddImage("NCTF2-4.png")',
		'Action.Text("Heavy Turkish column 2 is still moving on the road between Kingsfield Airbase and Larnaca City")',
		},
	},
	["North Cyprus-Turkish Force 2 move 5"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(805) and (Return.Mission() >= Return.CampFlag(805) + 9) and (Return.TargetAlive("North Cyprus-Turkish Force 2") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 2 T5.stm")',
		'Action.Text("Heavy Turkish column 2 stopped moving in Larnaca city")',
		'Action.AddImage("NCTF2-5.png")',
		'Action.SetCampFlag(832, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 2 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus-Turkish Force 2") < 40',
		action = {
		'Action.Text("Heavy Turkish column 2 took heavy losses and is stopped")',
		},
	},
	["Turkish Naval Convoi 2 activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 3)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 2", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy just lived Turkish coasts to rejoin south east port in Cyprus")',
		},
	},
	["Turkish Naval Convoi 2 mouvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Turkish Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T2.stm")',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is near Kyrenia port in North Cyprus")',
		},
	},
	["Turkish Naval Convoi 2 in port"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Turkish Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T3.stm")',
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 3", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Kyrenia port in North Cyprus")',
		'Action.AddImage("NCTF3-1.png")',
		'Action.SetCampFlag(806, Return.Mission())',
		},
	},
	["Turkish Naval Convoi 2 activation after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 2", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy just lived Turkish coasts to rejoin south east port in Cyprus")',
		},
	},
	["Turkish Naval Convoi 2 mouvement after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Turkish Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T2.stm")',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is near Kyrenia port in North Cyprus")',
		},
	},
	["Turkish Naval Convoi 2 in port after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 7) and (Return.TargetAlive("Turkish Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Turkish Naval Convoy 2 T3.stm")',
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 3", true)',
		'Action.Text("Turkish naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Kyrenia port in North Cyprus")',
		'Action.AddImage("NCTF3-1.png")',
		'Action.SetCampFlag(806, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 3 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(806) and (Return.Mission() >= Return.CampFlag(806) + 3) and (Return.TargetAlive("North Cyprus-Turkish Force 3") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T2.stm")',
		'Action.AddImage("NCTF3-2.png")',
		'Action.TemplateActive("Turkish Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Turkish Naval Convoy 2", false)',
		'Action.Text("Heavy Turkish column 3 is still moving on the main road south of Pinarbashi Airbase")',
		},
	},
	["North Cyprus-Turkish Force 3 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(806) and (Return.Mission() >= Return.CampFlag(806) + 5) and (Return.TargetAlive("North Cyprus-Turkish Force 3") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T3.stm")',
		'Action.AddImage("NCTF3-3.png")',
		'Action.Text("Heavy Turkish column 3 is still moving on the main road 15 nm west of Nicosia")',
		},
	},
	["North Cyprus-Turkish Force 3 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(806) and (Return.Mission() >= Return.CampFlag(806) + 7) and (Return.TargetAlive("North Cyprus-Turkish Force 3") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T4.stm")',
		'Action.Text("Heavy Turkish column 3 stopped moving in Morphon City 20nm west of Nicosia")',
		'Action.AddImage("NCTF3-4.png")',
		'Action.SetCampFlag(833, Return.Mission())',
		},
	},
	["North Cyprus-Turkish Force 3 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("North Cyprus-Turkish Force 3") < 40',
		action = {
		'Action.Text("Heavy Turkish column 3 took heavy losses and is stopped")',
		},
	},
	-- ["Turkish CAP activation"] = {
		-- active = true,
		-- once = true,
		-- -- condition = 'Return.CampFlag(801) and (Return.Mission() == Return.CampFlag(801))',
		-- condition = 'Return.CampFlag(801)',
		-- action = {
		-- 'Action.TargetActive("CAP-1-Turkish", true)',
		-- 'Action.Text("It seems that enemy aircraft CAP are active over North part of Cyprus")',
		-- },
	-- },
	["Turkish CAP activation after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2)',
		action = {
		'Action.TargetActive("CAP-1-Turkish", true)',
		'Action.Text("It seems that enemy aircraft CAP are active over North part of Cyprus")',
		},
	},
	["Greek Air Force interception activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 1)',
		action = {
		'Action.AirUnitActive("EC 331", true)',
		'Action.TargetActive("Paphos Airbase Alert", true)',
		'Action.TargetActive("Paphos Airbase Alert 2", true)',
		'Action.TargetActive("Paphos Airbase Alert 3", true)',
		'Action.TargetActive("Airlift Paphos Airbase 2", true)',
		'Action.TargetActive("Airlift Paphos Airbase 3", true)',
		'Action.TargetActive("CAP-1-Greek", true)',
		'Action.Text("Greek Air Force sent EC 331 with its Mirage 2000C to protect Cyprus and intensify airlift missions")',
		},
	},
	["Nord Cyprus Stinger Reinforcement activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 1)',
		action = {
		'Action.TemplateActive("Nord Cyprus Stinger Reinforcement.stm")',
		'Action.Text("Intels advice all our forces that large number of Stinger manpads were spread all over the Pro-Turkish territory so fly very carefully to avoid cities where they should try to ambush you")',
		},
	},
	["Nord Cyprus Stinger Reinforcement activation after Greece involvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2)',
		action = {
		'Action.TemplateActive("Nord Cyprus Stinger Reinforcement.stm")',
		'Action.Text("Intels advice all our forces that large number of Stinger manpads were spread all over the Pro-Turkish territory so fly very carefully to avoid cities where they should try to ambush you")',
		},
	},
	["North Cyprus-Turkish Force 4 airborn Stats"] = {
        active = true,
        once = false,
        condition = 'Return.PlaceLogistic("Ercan Airbase") < 60000 ',
        action = {
        'Action.LogisticObjectif("Ercan Airbase", 60000)',
        },
    },
	["North Cyprus-Turkish Force 4 airborn activation"] = {
        active = true,
        once = true,
        condition = 'Return.PlaceLogistic("Ercan Airbase") > 60000 and (Return.CampFlag(801) or Return.CampFlag(802))',
        action = {
        'Action.TemplateActive("North Cyprus-Turkish Force 4 T1.stm")',
		'Action.TargetActive("North Cyprus-Turkish Force 4", true)',
		'Action.Text("Heavy Turkish Force 4 is readying in Ercan airbase")',
		'Action.AddImage("NCTF4-1.png")',
		'Action.SetCampFlag(807, Return.Mission())',
        },
    },
	["North Cyprus-Turkish Force 4 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(807) and (Return.Mission() >= Return.CampFlag(807) + 3) and (Return.TargetAlive("North Cyprus-Turkish Force 4") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T2.stm")',
		'Action.AddImage("NCTF4-2.png")',
		'Action.Text("Heavy Turkish column 4 is still moving few nm south west of Ercan Airbase")',
		},
	},
	["North Cyprus-Turkish Force 4 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(807) and (Return.Mission() >= Return.CampFlag(807) + 5) and (Return.TargetAlive("North Cyprus-Turkish Force 4") > 40)',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T3.stm")',
		'Action.Text("Heavy Turkish column 4 stopped moving along a river 6 nm south east of Lakatamia airbase")',
		'Action.AddImage("NCTF4-3.png")',
		'Action.SetCampFlag(834, Return.Mission())',
		},
	},
	["Greek Naval Convoy activation-134.Filo on Cyprus"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 3)',
		action = {
		'Action.AirUnitBase("134.Filo", "Gecitkale Airbase")',
		'Action.TemplateActive("Greek Naval Convoy T1.stm")',
		'Action.TargetActive("Greek Naval Convoy", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Gecitkale Airbase Alert activation"] = {
		active = true,
		once = true,
		condition = '(Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 8)) and (Return.TargetAlive("EWR-Jaguar") > 20)',
		action = {
		'Action.TargetActive("Gecitkale Airbase Alert", true)',
		},
	},
	["Gecitkale Airbase Alert activation after Greek involvment"] = {
		active = true,
		once = true,
		condition = '(Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 8)) and (Return.TargetAlive("EWR-Jaguar") > 20)',
		action = {
		'Action.TargetActive("Gecitkale Airbase Alert", true)',
		},
	},
	["Greek Naval Convoy mouvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 5) and (Return.TargetAlive("Greek Naval Convoy") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy T2.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy in port"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 7) and (Return.TargetAlive("Greek Naval Convoy") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy T3.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 1 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 1", true)',
		'Action.TemplateActive("Greek Hawk Battery 1 T1.stm")',
		'Action.TargetActive("Greek Hawk Battery 1", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops and a Hawk battery in Paphos harbor")',
		'Action.AddImage("GEF1-1.png")',
		'Action.SetCampFlag(808, Return.Mission())',
		},
	},
	["Greek Naval Convoy activation after NCF victory"] = {
		active = true,
		once = true,
		-- condition = 'Return.CampFlag(802) and (Return.Mission() == Return.CampFlag(802))',
		condition = 'Return.CampFlag(802)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy T1.stm")',
		'Action.TargetActive("Greek Naval Convoy", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy mouvement after NCF victory"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 2) and (Return.TargetAlive("Greek Naval Convoy") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy T2.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy in port after NCF victory"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 4) and (Return.TargetAlive("Greek Naval Convoy") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy T3.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 1 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 1", true)',
		'Action.TemplateActive("Greek Hawk Battery 1 T1.stm")',
		'Action.TargetActive("Greek Hawk Battery 1", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops and a Hawk battery in Paphos harbor")',
		'Action.AddImage("GEF1-1.png")',
		'Action.SetCampFlag(808, Return.Mission())',
		},
	},	
	["Greek Expeditionary Force 1 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(808) and (Return.Mission() >= Return.CampFlag(808) + 3) and (Return.TargetAlive("Greek Expeditionary Force 1") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 1 T2.stm")',
		'Action.AddImage("GEF1-2.png")',
		'Action.Text("Greek Expeditionary column 1 is still moving ")',
		},
	},
	["Greek Expeditionary Force 1 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(808) and (Return.Mission() >= Return.CampFlag(808) + 5) and (Return.TargetAlive("Greek Expeditionary Force 1") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 1 T3.stm")',
		'Action.AddImage("GEF1-3.png")',
		'Action.Text("Greek Expeditionary column 1 is still moving ")',
		},
	},
	["Greek Expeditionary Force 1 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(808) and (Return.Mission() >= Return.CampFlag(808) + 7) and (Return.TargetAlive("Greek Expeditionary Force 1") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 1 T4.stm")',
		'Action.Text("Greek Expeditionary column 1 stopped 20 nm West of Nicosia ")',
		'Action.AddImage("GEF1-4.png")',
		'Action.SetCampFlag(841, Return.Mission())',
		},
	},
	["Greek Expeditionary Force 1 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Greek Expeditionary Force 1") < 40',
		action = {
		'Action.Text("Greek Expeditionary column 1 took heavy losses and is stopped")',
		},
	},
	["Greek Naval Convoy 2 activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 4)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Greek Naval Convoy 2", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy 2 mouvement"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 6) and (Return.TargetAlive("Greek Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T2.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy 2 in port"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(801) and (Return.Mission() >= Return.CampFlag(801) + 8) and (Return.TargetAlive("Greek Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T3.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 2 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 2", true)',
		'Action.TemplateActive("Greek Expeditionary Force 3 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 3", true)',
		'Action.TemplateActive("Greek Limassol defenses T1.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Limassol harbor")',
		'Action.AddImage("GEF2-3-1.png")',
		'Action.SetCampFlag(809, Return.Mission())',
		},
	},
	["Greek Naval Convoy 2 activation after NCF victory"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 1)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Greek Naval Convoy 2", true)',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy 2 mouvement after NCF victory"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 3) and (Return.TargetAlive("Greek Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T2.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus.")',
		},
	},
	["Greek Naval Convoy 2 in port after NCF victory"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(802) and (Return.Mission() >= Return.CampFlag(802) + 5) and (Return.TargetAlive("Greek Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Naval Convoy 2 T3.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 2 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 2", true)',
		'Action.TemplateActive("Greek Limassol defenses T1.stm")',
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Limassol harbor")',
		'Action.AddImage("GEF2-1.png")',
		'Action.SetCampFlag(809, Return.Mission())',
		},
	},
	["Greek EWR activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(809) and (Return.Mission() >= Return.CampFlag(809) + 1)',
		action = {
		'Action.TemplateActive("EWR-Moonbeam.stm")',
		'Action.TargetActive("EWR-Moonbeam", true)',
		'Action.AddImage("EWR-Moonbeam.png")',
		'Action.Text("A new Greek EWR is active east of Limassol")',
		},
	},
	["Greek Expeditionary Force 2 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(809) and (Return.Mission() >= Return.CampFlag(809) + 3) and (Return.TargetAlive("Greek Expeditionary Force 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 2 T2.stm")',
		'Action.AddImage("GEF2-2.png")',
		'Action.TemplateActive("Greek Naval Convoy 2 T1.stm")',
		'Action.TargetActive("Greek Naval Convoy 2", false)',
		'Action.Text("Greek Expeditionary column 2 is still moving ")',
		},
	},
	["Greek Expeditionary Force 2 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(809) and (Return.Mission() >= Return.CampFlag(809) + 5) and (Return.TargetAlive("Greek Expeditionary Force 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 2 T3.stm")',
		'Action.AddImage("GEF2-3.png")',
		'Action.Text("Greek Expeditionary column 2 is still moving ")',
		},
	},
	["Greek Expeditionary Force 2 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(809) and (Return.Mission() >= Return.CampFlag(809) + 7) and (Return.TargetAlive("Greek Expeditionary Force 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 2 T4.stm")',
		'Action.Text("Greek Expeditionary column 2 stopped 5nm west of Larnaca City ")',
		'Action.AddImage("GEF2-4.png")',
		'Action.SetCampFlag(842, Return.Mission())',
		},
	},
	["Greek Expeditionary Force 2 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Greek Expeditionary Force 2") < 40',
		action = {
		'Action.Text("Greek Expeditionary column 2 took heavy losses and is stopped")',
		},
	},
	["Greek Expeditionary Force 3 Activation"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(809) and (Return.Mission() >= Return.CampFlag(809) + 1) and (Return.TargetAlive("Greek Naval Convoy 2") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 3 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 3", true)',		
		'Action.Text("Greek naval forces are shipping reinforcement to Cyprus. One convoy is unloading troops in Limassol harbor")',
		'Action.AddImage("GEF2-3-1.png")',
		'Action.SetCampFlag(810, Return.Mission())',
		},
	},
	["Greek Expeditionary Force 3 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(810) and (Return.Mission() >= Return.CampFlag(810) + 2) and (Return.TargetAlive("Greek Expeditionary Force 3") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 3 T2.stm")',
		'Action.AddImage("GEF3-2.png")',
		'Action.Text("Greek Expeditionary column 3 is still moving ")',
		},
	},
	["Greek Expeditionary Force 3 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(810) and (Return.Mission() >= Return.CampFlag(810) + 4) and (Return.TargetAlive("Greek Expeditionary Force 3") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 3 T3.stm")',
		'Action.AddImage("GEF3-3.png")',
		'Action.Text("Greek Expeditionary column 3 is still moving ")',
		},
	},
	["Greek Expeditionary Force 3 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(810) and (Return.Mission() >= Return.CampFlag(810) + 6) and (Return.TargetAlive("Greek Expeditionary Force 3") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 3 T4.stm")',
		'Action.Text("Greek Expeditionary column 3 stopped 5nm south west of Larnaca Airbase")',
		'Action.AddImage("GEF3-4.png")',
		'Action.SetCampFlag(843, Return.Mission())',
		},
	},
	["Greek Expeditionary Force 3 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Greek Expeditionary Force 3") < 40',
		action = {
		'Action.Text("Greek Expeditionary column 3 took heavy losses and is stopped")',
		},
	},
	["Greek Expeditionary Force 4 airborn Stats"] = {
        active = true,
        once = false,
        condition = 'Return.PlaceLogistic("Paphos Airbase") < 60000 ',
        action = {
        'Action.LogisticObjectif("Paphos Airbase", 60000)',
        },
    },
	["Greek Expeditionary Force 4 airborn activation"] = {
        active = true,
        once = true,
        condition = 'Return.PlaceLogistic("Paphos Airbase") > 60000 and (Return.CampFlag(801) or Return.CampFlag(802))',
        action = {
        'Action.TemplateActive("Greek Expeditionary Force 4 T1.stm")',
		'Action.TargetActive("Greek Expeditionary Force 4", true)',
		'Action.Text("Greek Expeditionary Force 4 is readying in Paphos airbase")',
		'Action.AddImage("GEF4-1.png")',
		'Action.SetCampFlag(811, Return.Mission())',
        },
    },
	["Greek Expeditionary Force 4 move 2"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(811) and (Return.Mission() >= Return.CampFlag(811) + 2) and (Return.TargetAlive("Greek Expeditionary Force 4") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 4 T2.stm")',
		'Action.AddImage("GEF4-2.png")',
		'Action.Text("Greek Expeditionary column 4 is still moving ")',
		},
	},
	["Greek Expeditionary Force 4 move 3"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(811) and (Return.Mission() >= Return.CampFlag(811) + 4) and (Return.TargetAlive("Greek Expeditionary Force 4") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 4 T3.stm")',
		'Action.AddImage("GEF4-3.png")',
		'Action.Text("Greek Expeditionary column 4 is still moving ")',
		},
	},
	["Greek Expeditionary Force 4 move 4"] = {
		active = true,
		once = true,
		condition = 'Return.CampFlag(811) and (Return.Mission() >= Return.CampFlag(811) + 6) and (Return.TargetAlive("Greek Expeditionary Force 4") > 40)',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 4 T4.stm")',
		'Action.Text("Greek Expeditionary column 4 is Stopped 5 nm south west of Lakatamia airbase")',
		'Action.AddImage("GEF4-4.png")',
		'Action.SetCampFlag(844, Return.Mission())',
		},
	},
	["Greek Expeditionary Force 4 stop"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("Greek Expeditionary Force 4") < 40',
		action = {
		'Action.Text("Greek Expeditionary column 4 took heavy losses and is stopped")',
		},
	},
-------------------------------------------FRONTLINE -----------------------------------------------------------

	["North Cyprus-Turkish Force 3 retreat"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(833) and (Return.CampFlag(825) or Return.CampFlag(841)) and (Return.TargetAlive("Greek Expeditionary Force 1") > Return.TargetAlive("North Cyprus-Turkish Force 3") or Return.TargetAlive("Cyprus Defense Force 5") > Return.TargetAlive("North Cyprus-Turkish Force 3"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T2.stm")',
		'Action.SetCampFlag(853, 0)',
		},
	},
	["North Cyprus-Turkish Force 3 retreat 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(833) == nil) and (Return.CampFlag(825) or Return.CampFlag(841))',
		action = {
		'Action.SetCampFlag(853, 0)',
		},
	},
	["North Cyprus-Turkish Force 3 retreat 3"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(833) == nil) and ((Return.CampFlag(825) == nil) or (Return.CampFlag(841) == nil))',
		action = {
		'Action.SetCampFlag(853, 0)',
		},
	},
	["North Cyprus-Turkish Force 3 retreat 4"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(833) and (Return.CampFlag(825) or Return.CampFlag(841)) and (Return.TargetAlive("Greek Expeditionary Force 1") == Return.TargetAlive("North Cyprus-Turkish Force 3") or Return.TargetAlive("Cyprus Defense Force 5") == Return.TargetAlive("North Cyprus-Turkish Force 3"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 3 T2.stm")',
		'Action.SetCampFlag(853, 0)',
		},
	},
	["North Cyprus-Turkish Force 3 Victory"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(833) and (Return.CampFlag(825) or Return.CampFlag(841)) and (Return.TargetAlive("Greek Expeditionary Force 1") < Return.TargetAlive("North Cyprus-Turkish Force 3") or Return.TargetAlive("Cyprus Defense Force 5") < Return.TargetAlive("North Cyprus-Turkish Force 3"))',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 5 T2.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 1 T2.stm")',
		'Action.SetCampFlag(853, 1)',
		},
	},
	["North Cyprus-Turkish Force 3 Victory 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(833) and ((Return.CampFlag(825) == nil) or (Return.CampFlag(841) == nil))',
		action = {
		'Action.SetCampFlag(853, 1)',
		},
	},
	["North Cyprus-Turkish Force 1 retreat"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(831) and (Return.CampFlag(824) or Return.CampFlag(823)) and (Return.TargetAlive("Cyprus Defense Force 4") > Return.TargetAlive("North Cyprus-Turkish Force 1") or Return.TargetAlive("Cyprus Defense Force 3") > Return.TargetAlive("North Cyprus-Turkish Force 1"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T2.stm")',
		'Action.SetCampFlag(851, 0)',
		},
	},
	["North Cyprus-Turkish Force 1 retreat 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(831) == nil) and (Return.CampFlag(824) or Return.CampFlag(823))',
		action = {
		'Action.SetCampFlag(851, 0)',
		},
	},
	["North Cyprus-Turkish Force 1 retreat 3"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(831) == nil) and ((Return.CampFlag(824) == nil) or (Return.CampFlag(823) == nil))',
		action = {
		'Action.SetCampFlag(851, 0)',
		},
	},
	["North Cyprus-Turkish Force 1 retreat 4"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(831) and (Return.CampFlag(824) or Return.CampFlag(823)) and (Return.TargetAlive("Cyprus Defense Force 4") == Return.TargetAlive("North Cyprus-Turkish Force 1") or Return.TargetAlive("Cyprus Defense Force 3") == Return.TargetAlive("North Cyprus-Turkish Force 1"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 1 T2.stm")',
		'Action.SetCampFlag(851, 0)',
		},
	},
	["North Cyprus-Turkish Force 1 Victory"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(831) and (Return.CampFlag(824) or Return.CampFlag(823)) and (Return.TargetAlive("Cyprus Defense Force 4") < Return.TargetAlive("North Cyprus-Turkish Force 1") or Return.TargetAlive("Cyprus Defense Force 3") < Return.TargetAlive("North Cyprus-Turkish Force 1"))',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 4 T2.stm")',
		'Action.TemplateActive("Cyprus Defense Force 3 T2.stm")',
		'Action.SetCampFlag(851, 1)',
		},
	},
	["North Cyprus-Turkish Force 1 Victory 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(831) and ((Return.CampFlag(824) == nil) or (Return.CampFlag(823) == nil))',
		action = {
		'Action.SetCampFlag(851, 1)',
		},
	},
	["North Cyprus-Turkish Force 4 retreat"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(834) and (Return.CampFlag(822) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") > Return.TargetAlive("North Cyprus-Turkish Force 4") or Return.TargetAlive("Cyprus Defense Force 2") > Return.TargetAlive("North Cyprus-Turkish Force 4"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T2.stm")',
		'Action.SetCampFlag(854, 0)',
		},
	},
	["North Cyprus-Turkish Force 4 retreat 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(834) == nil) and (Return.CampFlag(822) or Return.CampFlag(842))',
		action = {
		'Action.SetCampFlag(854, 0)',
		},
	},
	["North Cyprus-Turkish Force 4 retreat 3"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(834) == nil) and ((Return.CampFlag(822) == nil) or (Return.CampFlag(842) == nil))',
		action = {
		'Action.SetCampFlag(854, 0)',
		},
	},
	["North Cyprus-Turkish Force 4 retreat 4"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(834) and (Return.CampFlag(822) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") == Return.TargetAlive("North Cyprus-Turkish Force 4") or Return.TargetAlive("Cyprus Defense Force 2") == Return.TargetAlive("North Cyprus-Turkish Force 4"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T2.stm")',
		'Action.SetCampFlag(854, 0)',
		},
	},
	["North Cyprus-Turkish Force 4 Victory"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(834) and (Return.CampFlag(822) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") < Return.TargetAlive("North Cyprus-Turkish Force 4") or Return.TargetAlive("Cyprus Defense Force 2") < Return.TargetAlive("North Cyprus-Turkish Force 4"))',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 2 T2.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 2 T2.stm")',
		'Action.SetCampFlag(854, 1)',
		},
	},
	["North Cyprus-Turkish Force 4 Victory 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(834) and ((Return.CampFlag(822) == nil) or (Return.CampFlag(842) == nil))',
		action = {
		'Action.SetCampFlag(854, 1)',
		},
	},
	["North Cyprus-Turkish Force 2 retreat"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(832) and (Return.CampFlag(821) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") > Return.TargetAlive("North Cyprus-Turkish Force 2") or Return.TargetAlive("Cyprus Defense Force 1") > Return.TargetAlive("North Cyprus-Turkish Force 2"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T2.stm")',
		'Action.SetCampFlag(852, 0)',
		},
	},
	["North Cyprus-Turkish Force 2 retreat 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(832) == nil) and (Return.CampFlag(821) or Return.CampFlag(842))',
		action = {
		'Action.SetCampFlag(852, 0)',
		},
	},
	["North Cyprus-Turkish Force 2 retreat 3"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(832) == nil) and ((Return.CampFlag(821) == nil) or (Return.CampFlag(842) == nil))',
		action = {
		'Action.SetCampFlag(852, 0)',
		},
	},
	["North Cyprus-Turkish Force 2 retreat 4"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(832) and (Return.CampFlag(821) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") == Return.TargetAlive("North Cyprus-Turkish Force 2") or Return.TargetAlive("Cyprus Defense Force 1") == Return.TargetAlive("North Cyprus-Turkish Force 2"))',
		action = {
		'Action.TemplateActive("North Cyprus-Turkish Force 4 T2.stm")',
		'Action.SetCampFlag(852, 0)',
		},
	},
	["North Cyprus-Turkish Force 2 Victory"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(832) and (Return.CampFlag(821) or Return.CampFlag(842)) and (Return.TargetAlive("Greek Expeditionary Force 2") < Return.TargetAlive("North Cyprus-Turkish Force 2") or Return.TargetAlive("Cyprus Defense Force 1") < Return.TargetAlive("North Cyprus-Turkish Force 2"))',
		action = {
		'Action.TemplateActive("Cyprus Defense Force 1 T2.stm")',
		'Action.TemplateActive("Greek Expeditionary Force 2 T2.stm")',
		'Action.SetCampFlag(852, 1)',
		},
	},
	["North Cyprus-Turkish Force 2 Victory 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(832) and ((Return.CampFlag(821) == nil) or (Return.CampFlag(842) == nil))',
		action = {
		'Action.SetCampFlag(852, 1)',
		},
	},
	["Larnaca Turkish Assault Force retreat"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(804) and Return.CampFlag(843) and (Return.TargetAlive("Greek Expeditionary Force 3") > Return.TargetAlive("Larnaca Turkish Assault Force 1"))',
		action = {
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T1.stm")',
		'Action.SideBase("blue", "Larnaca Airbase")',
		'Action.TemplateActive("Larnaca Cyprus defenses T1.stm")',
		'Action.TemplateActive("Larnaca Turkish AA T2.stm")',
		'Action.SetCampFlag(855, 0)',
		},
	},
	["Larnaca Turkish Assault Force retreat 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(804) == nil) and Return.CampFlag(843)',
		action = {
		'Action.SetCampFlag(855, 0)',
		},
	},
	["Larnaca Turkish Assault Force retreat 3"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.CampFlag(804) == nil) and (Return.CampFlag(843) == nil)',
		action = {
		'Action.SetCampFlag(855, 0)',
		},
	},
	["Larnaca Turkish Assault Force retreat 4"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(804) and Return.CampFlag(843) and (Return.TargetAlive("Greek Expeditionary Force 3") == Return.TargetAlive("Larnaca Turkish Assault Force 1"))',
		action = {
		'Action.TemplateActive("Larnaca Turkish Assault Force 1 T1.stm")',
		'Action.SideBase("blue", "Larnaca Airbase")',
		'Action.TemplateActive("Larnaca Cyprus defenses T1.stm")',
		'Action.TemplateActive("Larnaca Turkish AA T2.stm")',
		'Action.SetCampFlag(855, 0)',
		},
	},
	["Larnaca Turkish Assault Force Victory"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(804) and Return.CampFlag(843) and (Return.TargetAlive("Greek Expeditionary Force 3") < Return.TargetAlive("Larnaca Turkish Assault Force 1"))',
		action = {
		'Action.TemplateActive("Greek Expeditionary Force 3 T2.stm")',
		'Action.SetCampFlag(855, 1)',
		},
	},
	["Larnaca Turkish Assault Force Victory 2"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and Return.CampFlag(804) and (Return.CampFlag(843) == nil)',
		action = {
		'Action.SetCampFlag(855, 1)',
		},
	},
	["Turkish Artillery ops"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.TargetAlive("Turkish Artillery Force 1") >= 20)',
		action = {
		'Action.SetCampFlag(856, 1)',
		},
	},
	["Turkish Artillery out"] = {
		active = true,
		once = true,
		condition = '(Return.Mission() > 23) and (Return.TargetAlive("Turkish Artillery Force 1") < 20)',
		action = {
		'Action.SetCampFlag(856, 0)',
		},
	},










------------------------------------Mission 20 and more -------------------------------------------------------------------



	----- AIRBASE STRIKES -----
	-- ["Lar Airbase Disabled"] = {
		-- active = true,
		-- condition = 'Return.TargetAlive("Lar Airbase") < 4 and Return.TargetAlive("Lar Airbase Strategics") < 4',
		-- action = {
			-- 'db_airbases["Lar Airbase"].inactive = true',
			-- 'Action.Text("After the facilities at Lar Airbase have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer able to produce any aviation sorties.")',			
		-- }
	-- },
	-- ["Abu Musa Island Airport Disabled"] = {
		-- active = true,
		-- condition = 'Return.TargetAlive("Abu Musa Island Airport") < 2 and Return.TargetAlive("Abu Musa Island Airport Strategics") < 4',
		-- action = {
			-- 'db_airbases["Abu Musa Island Airport"].inactive = true',
			-- 'Action.Text("After the facilities at Abu Musa Island Airport have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer able to produce any aviation sorties.")',			
		-- }
	-- },	
	-- ["Sirri Island Disabled"] = {
		-- active = true,
		-- condition = 'Return.TargetAlive("Sirri Island") < 3 and Return.TargetAlive("Sirri Island Airport Strategics") < 3',
		-- action = {
			-- 'db_airbases["Sirri Island"].inactive = true',
			-- 'Action.Text("After the facilities at Sirri Island Airport have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer able to produce any aviation sorties.")',			
		-- }
	-- },
	-- ["Havadarya Airport Disabled"] = {
		-- active = true,
		-- condition = 'Return.TargetAlive("Havadarya") < 4 and Return.TargetAlive("Havadarya Airport Strategics") < 7',
		-- action = {
			-- 'db_airbases["Havadarya"].inactive = true',
			-- 'Action.Text("After the facilities at Havadarya Airport have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer able to produce any aviation sorties.")',			
		-- }
	-- },
	-- ["Bandar Abbas Intl Disabled"] = {
		-- active = true,
		-- once = false,
		-- condition = 'Return.TargetAlive("Bandar Abbas Intl") < 6 and Return.TargetAlive("Bandar Abbas Intl Strategics") < 14',
		-- action = {
			-- 'db_airbases["Bandar Abbas Intl"].inactive = true',
			-- 'Action.Text("After the facilities at Bandar Abbas Intl have been hit by air strikes, air operations at this base came to a complete stop. Intelligence believes that due to the heavy damage inflicted, the base is no longer able to produce any aviation sorties.")',
			-- 'Action.AddImage("Bandar Abbas.jpg", "blue")',
		-- }
	-- },
	
	----- RED CAP -----
	-- ["CAP After EWR Destroyed"] = {
		-- active = true,
		-- once = true,
		-- condition = 'Return.TargetAlive("EWR 1 131") == 0 and Return.TargetAlive("EWR 2 132") == 0 and Return.TargetAlive("EWR 3 133") == 0',
		-- action = {
			-- 'Action.TargetActive("CAP Qeshm", true)',
			-- 'Action.TargetActive("CAP Islands", true)',
			-- 'Action.TargetActive("Lar Airbase Alert", false)',
			-- 'Action.TargetActive("Shiraz Intl Alert", false)',
			-- 'Action.TargetActive("Sirri Island Alert", false)',
			-- 'Action.TargetActive("Qeshm Island Alert", false)',
			-- 'Action.TargetActive("Bandar Abbas Intl Alert", false)',
			-- 'Action.TargetActive("Bandar Abbas Intl 100 Km Alert", false)',
			-- 'Action.TargetActive("CAP Bandar Abbas", true)',
			-- 'Action.Text("With the recent destruction of all Early Warning Radar sites in the operations area, the ability of the enemy to launch interceptors against our strike packages was severely degraded. Intelligence expects that the enemy will increasingly depend on Combat Air Patrols to compensate, though without the support of ground controllers these are estimated to be of limited effectiveness.")',
		-- },
	-- },
----- BLUE CAP -----
	["CAP 2 only after EWR Destroyed"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("EWR-Eyeball") == 0',
		action = {
			'Action.TargetActive("CAP-2-Greek", true)',
			'Action.TargetActive("Paphos Airbase Alert", false)',
			'Action.TargetActive("Paphos Airbase Alert 2", false)',
			'Action.TargetActive("Paphos Airbase Alert 3", false)',
			'Action.Text("With the recent destruction of our Early Warning Radar site we are not able to maintain Interceptions alerts on Paphos Airbase anymore . We will depend on Combat Air Patrols to compensate, though without the support of ground controllers these will be of limited effectiveness.")',
		},
	},	

----- RED ALERT DESACTIVATION -----
	["After EWR-Jaguar Destroyed"] = {
		active = true,
		once = true,
		condition = 'Return.TargetAlive("EWR-Jaguar") == 0',
		action = {
			'Action.TargetActive("Gecitkale Airbase Alert", false)',
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
	["Reinforce 450 M-E/P-1"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("450 M-E/P-1")',
	},	
	["Reinforce EC 331"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("EC 331")',
	},
	["Reinforce 450 M-E/P-2"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("450 M-E/P-2")',
	},	
	["Reinforce 356th Tactical Transport Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("356th Tactical Transport Squadron")',
	},	
	["Reinforce 347th Squadron"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("347th Squadron")',
	},
	["Reinforce 3rd KHA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("3rd KHA")',
	},
	["Reinforce 152 Filo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("152 Filo")',
	},
	["Reinforce 222.Filo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("222.Filo")',
	},
	["Reinforce 2nd KHA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("2nd KHA")',
	},
	["Reinforce 2nd-2 KHA"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("2nd-2 KHA")',
	},
	["Reinforce 111.Filo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("111.Filo")',
	},
	["Reinforce 134.Filo"] = {
		active = true,
		condition = 'true',
		action = 'Action.AirUnitReinforce("134.Filo")',
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
		
}