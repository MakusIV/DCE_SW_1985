name = "Syria CAMO 1980"

--[[
countries = 
{
	"USA", "RUS", "FRA", "UKR", "SPN", "NETH", "TUR", "BEL", 
	"GER", "NOR", "CAN", "DEN", "UK", "GRG", "ISR", "ABH", "RSO"
}
]]--

custom_args = 
{
	[1000] = 0, -- Change to 0.1 when using Set 2 Nose Numbers
}

livery = 
{

-- Separate Textures
	{"MIG21BIS_FUSE_F", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_FUSE_F", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_FUSE_F", 13, "MiG21Bis_Fuse_F_RoughMet", true};

	{"MIG21BIS_FUSE_M", 0, "MiG21Bis_Fuse_M", false};
	{"MIG21BIS_FUSE_M", 1, "MiG21Bis_Fuse_M_NMp", true};
	{"MIG21BIS_FUSE_M", 13, "MiG21Bis_Fuse_M_RoughMet", true};

	{"MIG21BIS_FUSE_R", 0, "MiG21Bis_Fuse_R", false};
	{"MIG21BIS_FUSE_R", 1, "MiG21Bis_Fuse_R_NMp", true};
	{"MIG21BIS_FUSE_R", 13, "MiG21Bis_Fuse_R_RoughMet", true};

	{"MIG21BIS_FUSE_T", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_FUSE_T", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_FUSE_T", 13, "MiG21Bis_Fuse_T_RoughMet", true};

	{"MIG21BIS_WING_L", 0, "MiG21Bis_Wing_L", false};
	{"MIG21BIS_WING_L", 1, "MiG21Bis_Wing_L_NMp", true};
	{"MIG21BIS_WING_L", 13, "MiG21Bis_Wing_L_RoughMet", true};

	{"MIG21BIS_WING_R", 0, "MiG21Bis_Wing_R", false};
	{"MIG21BIS_WING_R", 1, "MiG21Bis_Wing_R_NMp", true};
	{"MIG21BIS_WING_R", 13, "MiG21Bis_Wing_R_RoughMet", true};

	{"MIG21BIS_GEAR_01", 0, "MiG21Bis_Gear_01", false};
	{"MIG21BIS_GEAR_01", 1, "MiG21Bis_Gear_01_NMp", true};
	{"MIG21BIS_GEAR_01", 13, "MiG21Bis_Gear_01_RoughMet", true};

	{"MIG21BIS_MISC", 0, "MiG21Bis_Misc", false};
	{"MIG21BIS_MISC", 1, "MiG21Bis_Misc_NMp", true};
	{"MIG21BIS_MISC", 13, "MiG21Bis_Misc_RoughMet", true}; 


-- Tac Number Nose Set 1
	{"MIG21BIS_SER_NOSE_0001", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE_0001", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE_0001", 13, "MiG21Bis_Fuse_F_RoughMet", true};
  --{"MIG21BIS_SER_NOSE_0001", 3, "empty_ser", true};
    {"MIG21BIS_SER_NOSE_0001", 3, "MiG21Bis_Ser_Arabic-Green", true};

	{"MIG21BIS_SER_NOSE_0010", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE_0010", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE_0010", 13, "MiG21Bis_Fuse_F_RoughMet", true};
  --{"MIG21BIS_SER_NOSE_0010", 3, "empty_ser", true};
	{"MIG21BIS_SER_NOSE_0010", 3, "MiG21Bis_Ser_Arabic-Green", true};

	{"MIG21BIS_SER_NOSE_0100", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE_0100", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE_0100", 13, "MiG21Bis_Fuse_F_RoughMet", true};
  --{"MIG21BIS_SER_NOSE_0100", 3, "empty_ser", true};
	{"MIG21BIS_SER_NOSE_0100", 3, "MiG21Bis_Ser_Arabic-Green", true};

	{"MIG21BIS_SER_NOSE_1000", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE_1000", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE_1000", 13, "MiG21Bis_Fuse_F_RoughMet", true};
  --{"MIG21BIS_SER_NOSE_1000", 3, "empty_ser", true};
    {"MIG21BIS_SER_NOSE_1000", 3, "MiG21Bis_Ser_Arabic-Green", true};


-- Tac Number Nose Set 2
	{"MIG21BIS_SER_NOSE2_0001", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE2_0001", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE2_0001", 13, "MiG21Bis_Fuse_F_RoughMet", true};
    {"MIG21BIS_SER_NOSE2_0001", 3, "empty_ser", true};
  --{"MIG21BIS_SER_NOSE2_0001", 3, "MiG21Bis_Ser_Nose", true};

	{"MIG21BIS_SER_NOSE2_0010", 0, "MiG21Bis_Fuse_F", false};
	{"MIG21BIS_SER_NOSE2_0010", 1, "MiG21Bis_Fuse_F_NMp", true};
	{"MIG21BIS_SER_NOSE2_0010", 13, "MiG21Bis_Fuse_F_RoughMet", true};
    {"MIG21BIS_SER_NOSE2_0010", 3, "empty_ser", true};
  --{"MIG21BIS_SER_NOSE2_0010", 3, "MiG21Bis_Ser_Nose", true};


-- Tac Number Fuselage
	{"MIG21BIS_SER_FUSE_001", 0, "MiG21Bis_Fuse_M", false};
	{"MIG21BIS_SER_FUSE_001", 1, "MiG21Bis_Fuse_M_NMp", true};
	{"MIG21BIS_SER_FUSE_001", 13, "MiG21Bis_Fuse_M_RoughMet", true};
	{"MIG21BIS_SER_FUSE_001", 3, "empty_ser", true};
  --{"MIG21BIS_SER_FUSE_001", 3, "MiG21Bis_Ser_Fuse", true};

	{"MIG21BIS_SER_FUSE_010", 0, "MiG21Bis_Fuse_M", false};
	{"MIG21BIS_SER_FUSE_010", 1, "MiG21Bis_Fuse_M_NMp", true};
	{"MIG21BIS_SER_FUSE_010", 13, "MiG21Bis_Fuse_M_RoughMet", true};
	{"MIG21BIS_SER_FUSE_010", 3, "empty_ser", true};
  --{"MIG21BIS_SER_FUSE_010", 3, "MiG21Bis_Ser_Fuse", true};

	{"MIG21BIS_SER_FUSE_100", 0, "MiG21Bis_Fuse_M", false};
	{"MIG21BIS_SER_FUSE_100", 1, "MiG21Bis_Fuse_M_NMp", true};
	{"MIG21BIS_SER_FUSE_100", 13, "MiG21Bis_Fuse_M_RoughMet", true};
	{"MIG21BIS_SER_FUSE_100", 3, "empty_ser", true};
  --{"MIG21BIS_SER_FUSE_100", 3, "MiG21Bis_Ser_Fuse", true};


-- Tac Number Tail
	{"MIG21BIS_SER_TAIL_000001", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_SER_TAIL_000001", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_SER_TAIL_000001", 13, "MiG21Bis_Fuse_T_RoughMet", true};
	{"MIG21BIS_SER_TAIL_000001", 3, "empty_ser", true};
  --{"MIG21BIS_SER_TAIL_000001", 3, "MiG21Bis_Ser_Tail", true};

	{"MIG21BIS_SER_TAIL_000010", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_SER_TAIL_000010", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_SER_TAIL_000010", 13, "MiG21Bis_Fuse_T_RoughMet", true};
	{"MIG21BIS_SER_TAIL_000010", 3, "empty_ser", true};
  --{"MIG21BIS_SER_TAIL_000010", 3, "MiG21Bis_Ser_Tail", true};

	{"MIG21BIS_SER_TAIL_000100", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_SER_TAIL_000100", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_SER_TAIL_000100", 13, "MiG21Bis_Fuse_T_RoughMet", true};
	{"MIG21BIS_SER_TAIL_000100", 3, "empty_ser", true};
  --{"MIG21BIS_SER_TAIL_000100", 3, "MiG21Bis_Ser_Tail", true};

	{"MIG21BIS_SER_TAIL_001000", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_SER_TAIL_001000", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_SER_TAIL_001000", 13, "MiG21Bis_Fuse_T_RoughMet", true};
	{"MIG21BIS_SER_TAIL_001000", 3, "empty_ser", true};
  --{"MIG21BIS_SER_TAIL_001000", 3, "MiG21Bis_Ser_Tail", true};

	{"MIG21BIS_SER_TAIL_010000", 0, "MiG21Bis_Fuse_T", false};
	{"MIG21BIS_SER_TAIL_010000", 1, "MiG21Bis_Fuse_T_NMp", true};
	{"MIG21BIS_SER_TAIL_010000", 13, "MiG21Bis_Fuse_T_RoughMet", true};
	{"MIG21BIS_SER_TAIL_010000", 3, "empty_ser", true};
  --{"MIG21BIS_SER_TAIL_010000", 3, "MiG21Bis_Ser_Tail", true};
  
}