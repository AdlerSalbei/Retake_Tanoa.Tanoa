_classPlayer = [
	"Rifleman",
	"TL",
	"Rifleman",
	"Medic",
	"Rifleman",
	"Sniper",
	"Rifleman",
	"MG",
	"Rifleman",
	"Engineer"
];

_weaponStandart = [
	//Vanilla
	"arifle_Mk20_plain_F",
	"arifle_Mk20C_plain_F",
	"arifle_TRG20_F",
	"hgun_PDW2000_F",
	"SMG_01_F",
	"SMG_02_F",
	"arifle_AK12_F",
	"arifle_AKM_F",
	"arifle_AKS_F",
	"arifle_CTAR_blk_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_khk_F",
	"SMG_05_F",

	//RHS
	"rhs_weap_hk416d145",
	"rhs_weap_m14ebrri",
	"rhs_weap_m27iar",
	"rhs_weap_sr25"
];

_weaponSniper = [
	//Vanilla
	"srifle_DMR_04_F",
	"srifle_DMR_04_Tan_F",
	"srifle_DMR_01_F",
	"srifle_EBR_F",
	"srifle_DMR_02_F",
	"srifle_DMR_03_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_06_olive_F",
	"srifle_DMR_07_blk_F",
	"srifle_DMR_07_ghex_F",
	"arifle_SPAR_03_blk_F",
	"arifle_SPAR_03_khk_F",

	//RHS
	"rhs_weap_svdp",
	"rhs_weap_svdp_npz",
	"rhs_weap_svds",
	"rhs_weap_svds_npz",
	"rhs_weapon_XM2010",
	"rhs_weap_XM2010",
	"rhs_weap_XM2010_wd"
];

_weaponMG = [
	//Vanilla
	"LMG_Zafir_F",
	"LMG_Mk200_F",
	"MMG_01_tan_F",
	"MMG_02_black_F",
	"arifle_CTARS_ghex_F",
	"LMG_03_F",
	"arifle_SPAR_02_blk_F",
	"arifle_SPAR_02_khk_F",

	//RHS
	"rhs_weap_m240B",
	"rhs_weap_m240G",
	"rhs_weap_m249_pip_L",
	"rhs_weap_pkp"
];

_weaponGrenadier = [
	//Vanilla
	"arifle_SPAR_01_GL_blk_F",
	"arifle_AK12_GL_F",
	"arifle_CTAR_GL_blk_F",
	"arifle_Mk20_GL_F",
	"arifle_TRG21_GL_F"
];

_standartScopes = [
	//Vanilla
	"optic_Arco",
	"optic_SOS",
	"optic_MRCO",
	"optic_Hamr",
	"optic_Holosight",
	"optic_ACO_grn",
	"optic_Aco",
	"optic_Holosight_smg",
	"optic_Aco_smg",
	"optic_ACO_grn_smg",

	//RHS
	"rhsusf_acc_ACOG_USMC",
	"rhsusf_acc_ACOG",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_SpecterDR",
	"rhsusf_acc_SpecterDR_OD",
	"rhsusf_acc_ACOG_d",
	"rhsusf_acc_ACOG_wd",
	"rhs_acc_1p29",
	"rhs_acc_1p63",
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"rhs_acc_pkas",
	"rhs_acc_ekp1",
	"rhs_acc_1p78",
	"rhs_acc_rakursPM",
	"rhsusf_acc_EOTECH",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_xps3",

	//FHQ
	"FHQ_optic_AC11704",
	"FHQ_optic_AC11704_tan",
	"FHQ_optic_ACOG",
	"FHQ_optic_ACOG_tan",
	"FHQ_optic_AimM_BLK",
	"FHQ_optic_AimM_TAN",
	"FHQ_optic_AIM",
	"FHQ_optic_AIM_tan",
	"FHQ_optic_HWS_G33",
	"FHQ_optic_HWS_G33_tan",
	"FHQ_optic_MCCO_M_BLK",
	"FHQ_optic_MCCO_M_TAN",
	"FHQ_optic_MicroCCO",
	"FHQ_optic_MicroCCO_tan",
	"FHQ_optic_AC12136_tan",
	"FHQ_optic_HWS",
	"FHQ_optic_HWS_tan",
	"FHQ_optic_MARS",
	"FHQ_optic_MARS_tan",
	"FHQ_optic_MicroCCO_low",
	"FHQ_optic_MicroCCO_low_tan",
	"FHQ_optic_VCOG",
	"FHQ_optic_VCOG_tan"
];

_opticSniper = [
	//Vanilla
	"optic_AMS",
	"optic_DMS",
	"optic_KHS_blk",
	"optic_KHS_old",
	"optic_SOS",
	"optic_LRPS",
	//RHS
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"rhs_acc_rakursPM",
	"rhsusf_acc_premier",
	"rhsusf_acc_LEUPOLDMK4",
	"rhsusf_acc_LEUPOLDMK4_2",
	"rhsusf_acc_LEUPOLDMK4_2_d",
	//FHQ
	"FHQ_optic_LeupoldERT",
	"FHQ_optic_LeupoldERT_tan"
  ];

_role = "";

//if (str player == "rebellion_lead") then {
//	_role = "TL";
//} else {
	_role = selectRandom _classPlayer;
//};
_weapon = "";
_magazine = "";
_scope = "";
_muzzleItem = "";
CHOSENWEAPONS = [];
MUZZLEITEMS = [];
SCOPES = [];
CHOSENMAGAZINES = [];

//Waffen aussuchen, Chancen setzen ===============================================================
switch _role do {
	case "Rifleman": {_weapon = selectRandom _weaponStandart; SCOPESPROB = 70; MUZZLEATTACHMENTPROB = 90;};
	case "TL": {_weapon = selectRandom _weaponGrenadier; SCOPESPROB = 70; MUZZLEATTACHMENTPROB = 10;};
	case "Engineer": {_weapon = selectRandom _weaponStandart; SCOPESPROB = 30; MUZZLEATTACHMENTPROB = 30;};
	case "Medic": {_weapon = selectRandom _weaponStandart; SCOPESPROB = 30; MUZZLEATTACHMENTPROB = 30;};
	case "Sniper": {_weapon = selectRandom _weaponSniper; SCOPESPROB = 100; MUZZLEATTACHMENTPROB = 50;};
	case "MG": {_weapon = selectRandom _weaponMG; SCOPESPROB = 10; MUZZLEATTACHMENTPROB = 70;};
	default {diag_log format ["Has no Class selected"]};
};

CHOSENWEAPONS  pushBack _weapon;

//magazines =====================================================================
_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
_magazine = selectRandom _magazines;
CHOSENMAGAZINES pushBack _magazine;


//muzzle attachments ===================================================================
  if (random 100 <= MUZZLEATTACHMENTPROB) then {
    _cfg = (configFile >> "CfgWeapons" >> _weapon >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems");
    _allMuzzleItems = getArray _cfg;

    //RHS is stupid
    if (count _allMuzzleItems == 0) then {
      _attributes = configProperties [_cfg, "true", true];
      {
        _str = str (_x);
        _strArray = _str splitString "/";
        _attachmentName = _strArray select ((count _strArray) - 1);
        if ((getNumber (configFile >> "CfgWeapons" >> _weapon >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems" >> _attachmentName)) == 1) then {
          _allMuzzleItems pushBack _attachmentName;
        };
      } forEach _attributes;
    };

    if (count _allMuzzleItems == 0) then {
      MUZZLEITEMS pushBack "EMPTY";
    } else {
      _muzzleItem = selectRandom _allMuzzleItems;
      MUZZLEITEMS pushBack _muzzleItem;
    };
  } else {
    MUZZLEITEMS pushBack "EMPTY";
  };

//scopes ===================================================================
  if (random 100 <= SCOPESPROB) then {
    _cfg = (configFile >> "CfgWeapons" >> _weapon >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
    _attributes = configProperties [_cfg, "true", true];
    _compatibleScopes = [];
    {
      _str = str (_x);
      _strArray = _str splitString "/";
      _scopeName = _strArray select ((count _strArray) -1);
      _compatibleScopes pushBack _scopeName;
    } forEach _attributes;

    if (count _compatibleScopes == 0) then {
      _compatibleScopes = getArray (configFile >> "CfgWeapons" >> _weapon >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
      if (count _compatibleScopes == 0) then {
        SCOPES pushBack "EMPTY";
      };

    } else {
      _scopeFound = false;
      for [{_i=0}, {_i<50}, {_i=_i+1}] do {
        _randomID = round (random ((count _compatibleScopes) - 1));
        _scope = _compatibleScopes select _randomID;
        _scopeFound = _scope in _standartScopes;

        if (_scopeFound) exitWith {};

        _compatibleScopes deleteAt _randomID;
        if (count _compatibleScopes == 0) exitWith {};
      };

      if (_scopeFound) then {
        SCOPES pushBack _scope;
      } else {
        SCOPES pushBack "EMPTY";
      };
    };
  } else {
    SCOPES pushBack "EMPTY";
  };

 diag_log format ["Class selected: %1, Weapon: %2 , Scope: %3 , Muzzle: %4", _role, _weapon, _scope, _muzzleItem];
//spielern ihr zeug zuordnen ===================================================
_i = 0;
{
  _x setVariable ["myWeapon", CHOSENWEAPONS select _i, true];
  _x setVariable ["myMuzzleItem", MUZZLEITEMS select _i, true];
  _x setVariable ["myScope", SCOPES select _i, true];
  _x setVariable ["myMagazine", CHOSENMAGAZINES select _i, true];
  _x setVariable ["myRole", _role];
} forEach allPlayers;

WEAPONSETUPDONE = true;
publicVariable "WEAPONSETUPDONE";
