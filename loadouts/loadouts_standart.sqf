randomUniforms = [
    //VANILLA
    "U_B_CombatUniform_mcam",
    "U_I_CombatUniform",
    "U_B_CTRG_1",
    "U_O_CombatUniform_ocamo",
    "U_B_CombatUniform_mcam_vest",

    //ARC
    "ARC_Common_MC_Uniform",
    "ARC_GER_Flecktarn_Uniform",

    //RHS
    "rhs_uniform_cu_ocp",
    "rhs_uniform_emr_patchless",
    "rhs_uniform_flora_patchless_alt",
    "rhs_uniform_FROG01_wd",
    "rhs_uniform_g3_blk",
    "rhs_uniform_g3_m81",
    "rhs_uniform_g3_mc",
    "rhs_uniform_g3_rgr",
    "rhs_uniform_mvd_izlom",
    "rhsgref_uniform_para_ttsko_mountain",
    "rhsgref_uniform_para_ttsko_urban",
    "rhsgref_uniform_vsr",
    "rhsgref_uniform_ttsko_forest",
    "rhsgref_uniform_ttsko_mountain",
    "rhsgref_uniform_alpenflage",
    "rhsgref_uniform_tigerstripe",
    "rhsgref_uniform_woodland",
    "rhsgref_uniform_specter"
  ];

randomVest = [
    //VANILLA
    "V_PlateCarrier1_rgr",
    "V_Chestrig_oli",
    "V_PlateCarrier1_rgr",
    "V_TacVest_khk",
    "V_PlateCarrier1_rgr",

    //ARC
    "ARC_Common_TAN_PlateCarrier_1",
    "ARC_GER_Flecktarn_Plate_Carrier",

    //RHS
    "rhsusf_iotv_ocp_SAW",
    "rhs_6b23_digi_rifleman",
    "rhs_6b23_ML",
    "rhsusf_spc",
    "V_TacVest_oli",
    "V_TacVest_oli",
    "rhsusf_spc",
    "V_TacVest_khk",
    "V_I_G_resistanceLeader_F",
    "rhsgref_6b23_ttsko_mountain",
    "rhsgref_6b23_ttsko_mountain",
    "rhsgref_6b23_khaki_rifleman",
    "rhsgref_6b23_khaki_rifleman",
    "rhsgref_6b23_ttsko_mountain",
    "rhs_6b23",
    "rhs_6b13_Flora",
    "rhs_6b13_Flora",
    "rhsgref_6b23_khaki_rifleman"
  ];


randomBackpack = [
	"rhsusf_assault_eagleaiii_coy",
	"B_AssaultPack_mcamo"
];

randomHeadgear = [
	"rhsusf_lwh_helmet_marpatwd"
];

gear_basic = {
	this = _this select 0;

	_gimmeWeapon = player getVariable ["myWeapon", ""];
	_gimmeMuzzleItem = player getVariable ["myMuzzleItem", ""];
	_gimmeScope = player getVariable ["myScope", ""];
	_gimmeMagazin = player getVariable ["myMagazine", ""];
	_gimmeRole = player getVariable ["myRole",""];

	this forceAddUniform(randomUniforms call BIS_fnc_selectRandom);
	this addVest(randomVest call BIS_fnc_selectRandom);
	if (_gimmeRole == "TL") then {
		this addBackpack "tf_rt1523g_big_bwmod_tropen";
	} else {
		this addBackpack(randomBackpack call BIS_fnc_selectRandom);
	};

	this addHeadgear(randomHeadgear call BIS_fnc_selectRandom);

	_mySprayPaint = selectRandom ["ACE_SpraypaintBlack", "ACE_SpraypaintBlue", "ACE_SpraypaintGreen", "ACE_SpraypaintRed"];

	[this, "ACE_fieldDressing", 10] call addItemsToUniform;
	[this, "ACE_elasticBandage", 10] call addMagazinesToVest;
	[this, "ACE_quikclot", 10] call addMagazinesToVest;
	[this, "ACE_packingBandage", 10] call addItemsToUniform;
	[this, "ACE_Morphine", 5] call addItemsToUniform;
	[this, "ACE_epinephrine", 1] call addItemsToUniform;
	[this, "ACE_salineIV_250", 1] call addMagazinesToBackpack;
	[this, _mySprayPaint, 1] call addMagazinesToVest;
	[this, "rhs_mag_m67", 3] call addMagazinesToBackpack;

	if (_gimmeRole == "MG") then {
		[this, _gimmeMagazin, 5] call addMagazinesToBackpack;
	} else {
		[this, _gimmeMagazin, 5] call addMagazinesToVest;
	};

	this addWeapon _gimmeWeapon;
	if (_gimmeMuzzleItem != "EMPTY") then {this addPrimaryWeaponItem _gimmeMuzzleItem;};
	if (_gimmeScope != "EMPTY") then {this addPrimaryWeaponItem _gimmeScope;};

	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "ItemGPS";
	this linkItem "tf_anprc152";

	switch _gimmeRole do {
		case "Rifleman": {};
		case "Engineer": {[this] call gearEngineer};
		case "TL": {[this] call gearTL};
		case "Medic": {[this] call gearMedic};
		case "Sniper": {[this] call gearSniper};
		case "MG": {};
		case "Grenadier": {};
		default {diag_log format ["Has no Class selected"]};
	};
};
