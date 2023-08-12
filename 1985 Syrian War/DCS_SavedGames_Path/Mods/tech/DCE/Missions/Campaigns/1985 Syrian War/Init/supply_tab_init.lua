supply_tab = {
	['red'] = {
		['Hin Shinshar Chemical Storage'] = {--        supply plant
			['integrity'] = 1, --             supply plant integrity    
			['supply_line_names'] = {--         table of supply lines supplyed by supply plant
				['Hin Shinshar-Bassel Al-Assad Supply Line'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Bassel Al-Assad'] = true,	
						['Reserves-R/67 Squadron'] = true,	
						['Reserves-R/3 Squadron'] = true,
						['Reserves-R/677 Squadron'] = true,
						['Reserves-R/522 Squadron'] = true,										
					},
				},			
			},
		},
		['Khirbet Tin Nur Chemical Storage'] = {
			['integrity'] = 1,    
			['supply_line_names'] = {
				['Hin Shinshar-Bassel Al-Assad Supply Line'] = { -- si è la stessa line utilizzata per Hin Shinshar
					['integrity'] = 1,
					['airbase_supply'] = {							
						['Hama'] = true,
						['Reserves-R/368 ShAP'] = true,		
						['Reserves-R/133.IAP'] = true,		
						['Reserves-R/3 BAP 149th BAA'] = true,										
					},
				},	
				['Beirut-Rafic Hariri Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {							
						['Beirut-Rafic Hariri'] = true,
						['Reserves-R/948 Squadron'] = true,		
						['Reserves-R/3 Guards BAP 21 th BAA'] = true,										
					},
				},		
			},
		},
		['IR-Abukamal Storage'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Deir ez-Zor Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {	
						['Deir ez-Zor'] = true,	
						['Reserves-R/132nd Heavy Bomber Aviation Regiment'] = true,		
						['Reserves-R/797.IAP'] = true,		
						['Reserves-R/4 Guards BAP 132nd BAA'] = true,
						['Reserves-R/23.OSAP'] = true,									
					},
				},
			},
		},
		['IR-Al Kiswah Military Base'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Mezzeh Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {					
						['Mezzeh'] = true,			
						['Reserves-R/37 Squadron'] = true,	
						['Reserves-R/11 Squadron'] = true,												
					},
				},		
				['Damascus Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {					
						['Damascus'] = true,			
						['Reserves-R/117.IAP'] = true,				
						['Reserves-R/113.IAP'] = true,				
						['Reserves-R/945 Squadron'] = true,				
					},
				},					
			},
		},
		['An Nasiriyah Military Base'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['An Nasiriyah Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {					
						['An Nasiriyah'] = true,			
						['Reserves-R/373 ShAP'] = true,
						['Reserves-R/764.IAP'] = true,												
					},
				},
				['Khalkhalah Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {					
						['Khalkhalah'] = true,			
						['Reserves-R/7 Squadron'] = true,
						['Reserves-R/637 Squadron'] = true,	
						['Reserves-R/9th GHR'] = true,
						['Reserves-R/17th GHR'] = true,												
					},
				},		
			},
		},
		["Palmyra Syrian Chemical Storage"] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Palmyra Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {						
						['Palmyra'] = true,
						['Reserves-R/402nd Heavy Bomber Aviation Regiment'] = true,		
						['Reserves-R/159.IAP'] = true,					
					},
				},	
				['Sayqal Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {						
						['Sayqal'] = true,
						['Reserves-R/267 ShAP'] = true,		
						['Reserves-R/137.IAP'] = true,
						['Reserves-R/27.OSAP'] = true,		
						['Reserves-R/81st TFS'] = true,
						['Reserves-R/1st GHR'] = true,		
						['Reserves-R/3rd GHR'] = true,
						['Reserves-R/15th Squadron'] = true,													
					},
				},				
			},
		},		
		['Iranian Storage Facility'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Abu al-Duhur Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {													
						['Abu al-Duhur'] = true,							
						['Reserves-R/946 Squadron'] = true,	
						['Reserves-R/2 Guards BAP 21 th BAA'] = true,													
					},
				},	
				['Taftanaz Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {						
						['Taftanaz'] = true,	
						['Reserves-R/13th GHR'] = true,								
						['Reserves-R/2nd GHR'] = true,
						['Reserves-R/16th Squadron'] = true,								
						['Reserves-R/14th Squadron'] = true,
					},
				},	
				['Tabqua Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {													
						['Tabqua'] = true,							
						['Reserves-R/127.IAP'] = true,	
						['Reserves-R/123.IAP'] = true,	
						['Reserves-R/2 Squadron'] = true,												
					},
				},		
			},
		},
	},

	['blue'] = {
		['Hamdilli Ammunition Depot'] = {     
			['integrity'] = 1,
			['supply_line_names'] = {
				['Gaziantep Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {	
						['Gaziantep'] = true,
						['Reserves-R/56th Operations Group'] = true,
						['Reserves-R/173rd Fighter Group'] = true,																									
					},
				},
				['Hamdilli-Hatay Supply Line'] = {
					['integrity'] = 1,
					['airbase_supply'] = {	
						['Hatay'] = true,
						['FARP-Hatay FARP 1'] = true,
						['FARP-Hatay FARP 2'] = true,
						['Reserves-R/F6 Karlsborg'] = true,
						['Reserves-R/23rd FG'] = true,	
						['Reserves-R/14th Army Aviation Regiment'] = true,
						['Reserves-R/HMLA-177'] = true,		
						['Reserves-R/11th Army Aviation Regiment'] = true,
						['Reserves-R/18th Cavalry Regiment'] = true,																									
					},
				},
			},
		},
		['Silifke Storage Site'] = {     
			['integrity'] = 1,
			['supply_line_names'] = {
				['Silifke-Gazipasa Supply Line'] = {
					['integrity'] = 1,
					['airbase_supply'] = {	
						['Gazipasa'] = true,
						['Reserves-R/801 ARS'] = true,											
					},
				},
				['Silifke-Incirlik Supply Line'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Incirlik'] = true,
						['Reserves-R/111th Squadron Panther'] = true,
						['Reserves-R/151th Squadron Bronze'] = true,		
						['Reserves-R/315th Air Division'] = true,
						['Reserves-R/69 BS'] = true,
						['Reserves-R/171 ARW'] = true,
						['Reserves-R/4450th Tactical Group'] = true,													
					},
				},						
				['Silifke Storage Site'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Reserves-R/4th Army Aviation Regiment'] = true,
						['Reserves-R/HS-6 Indians'] = true,													
					},
				},	
			},
		},
		['USA Fleet 1'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Ramat David Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Ramat David'] = true,
						['Reserves-R/F17 Kallinge'] = true,
						['Reserves-R/27rd FG'] = true,
						['Reserves-R/12 Gruppo, 36 Stormo'] = true,
					},
					
				},
				['Naquora Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {						
						['Naquora'] = true,
						['Reserves-R/1th Army Aviation Regiment'] = true,
						['Reserves-R/HMLA-167'] = true,
						['Reserves-R/17th Cavalry Regiment'] = true,
					},
				},
				['Larnaca Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Larnaca'] = true,
						['Reserves-R/122nd Squadron'] = true,
						['Reserves-R/Jagdbombergeschwader 33'] = true,
						['Reserves-R/154 Gruppo, 6 Stormo'] = true,
					},
					
				},
				['Paphos Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Paphos'] = true,
						['Reserves-R/152th Squadron Iron'] = true,
						['Reserves-R/326th Air Division'] = true,
						['Reserves-R/4453th Tactical Group'] = true,
					},
					
				},
			},
		},
		['USA Fleet 2'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['Adana Sakirpasa Airbase'] = {
					['integrity'] = 1,
					['airbase_supply'] = {
						['Adana Sakirpasa'] = true,
						['Reserves-R/Escadron de Chasse 2/5 Ile-de-France'] = true,
						['Reserves-R/Escadron de Chasse 1/2 Cigognes'] = true,		
						['Reserves-R/Escadron de Chasse 1/5 Vendéee'] = true,													
					},
				},
			},
		},
		['CVN-71 Theodore Roosevelt'] = {
			['integrity'] = 1,
			['supply_line_names'] = {
				['CVN-71 Theodore Roosevelt'] = {
					['integrity'] = 1,
					['airbase_supply'] = {																			
						['Reserves-R/VF-101'] = true,			
						['Reserves-R/VAW-125'] = true,			
						['Reserves-R/VS-27'] = true,								
						['Reserves-R/VS-29'] = true,															
					},
				},
			},
		},
		['CVN-72 Abraham Lincoln'] = {
			['supply_line_names'] = {
				['CVN-72 Abraham Lincoln'] = {
					['integrity'] = 1,
					['airbase_supply'] = {								
						['Reserves-R/VF-118/GA'] = true,																					
						['Reserves-R/VS-22'] = true,																						
						['Reserves-VAW-123'] = true,											
					},
				},
			},
		},
	},
}

-- SUPPLY PLANT:
-- RED: SUPPLY PLANT BAKSAN LP83, "CHERKESSK SUPPLY PLANT KP69, Prohladniy Depot MP 24
-- BLUE:  SUPPLY PLANT DAPNARI KM76, 
---