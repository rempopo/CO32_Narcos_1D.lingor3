// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


kit_sec_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","tf_rt1523g_big","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[["HANDGUN MAG",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1]]],
	["<BACKPACK ITEMS >> ",[UNIFORM_ITEMS_L]]
];

kit_sec_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","rhs_sidor","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_minimi","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1],UNIFORM_ITEMS]]
];

kit_sec_ftl = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","B_FieldPack_oli","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M433_HEDP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1]]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",9],UNIFORM_ITEMS_L]]
];

kit_sec_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","B_FieldPack_oli","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M433_HEDP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1]]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",9],UNIFORM_ITEMS]]
];

kit_sec_r = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","B_FieldPack_oli","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",2],UNIFORM_ITEMS]]
];

kit_sec_pilot = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","","CUP_H_USMC_Helmet_Pilot","G_Aviator"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_TaurusTracker455","CUP_6Rnd_45ACP_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1],["HANDGUN MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_sec_gunner = [
	["<EQUIPEMENT >>  ","usm_bdu_odg","usm_vest_LBE_rmp_m","B_FieldPack_oli","CUP_H_USMC_Helmet_Pilot","G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60E4","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_mag_nspn_green",1],["rhs_mag_nspn_red",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

// **************** vasyanbl

#define G_UNI ["U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_OrestesBody","U_C_Poor_1","U_I_G_Story_Protagonist_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_C_Man_casual_2_F","U_C_Man_casual_3_F","U_C_Man_casual_1_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_C_Man_casual_6_F","U_C_Man_casual_4_F","U_C_Man_casual_5_F","TRYK_U_B_C02_Tsirt","TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK_U_B_wh_blk_Rollup_CombatUniform","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_U_B_BLK_T_BG_BK","TRYK_U_B_RED_T_BG_BR","TRYK_U_B_BLK_T_BG_WH","TRYK_U_B_BLK_T_BK","TRYK_U_B_RED_T_BR","TRYK_U_B_BLK_T_WH","TRYK_U_B_Denim_T_BG_BK","TRYK_U_B_Denim_T_BG_WH","TRYK_U_B_Denim_T_BK","TRYK_U_B_Denim_T_WH"]
#define G_VEST ["V_HarnessO_brn","V_BandollierB_rgr","V_BandollierB_oli","V_TacChestrig_oli_F","TRYK_V_harnes_od_L","CUP_V_B_GER_Carrier_Rig_2_Brown","CUP_V_I_RACS_Carrier_Rig_wdl_2","CUP_V_RUS_Smersh_1","CUP_V_RUS_Smersh_2","CUP_V_I_Carrier_Belt","CUP_V_O_Ins_Carrier_Rig"]
#define G_HAT ["H_Cap_surfer","H_Cap_tan","H_Hat_blue","H_Hat_brown","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","TRYK_H_Bandana_wig","CUP_H_PMC_Cap_Tan","CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_Tan","CUP_H_NAPA_Fedora"]
#define G_GOG ["G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]

// ****************


kit_int_r = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["HandGrenade",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_int_ar = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"B_FieldPack_oli",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_int_r1 = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","hlc_rifle_c1A1","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_int_r2 = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_int_mm = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","CUP_srifle_CZ550","CUP_5x_22_LR_17_HMR_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",4],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_int_random = [
"kit_int_r",
"kit_int_ar",
"kit_int_r1",
"kit_int_r2",
"kit_int_mm"
];

// ****************

kit_uh = [
	[],
	[["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",30]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",20],["ACE_CableTie",10]],
	[]
];