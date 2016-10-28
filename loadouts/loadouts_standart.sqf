_gearRifleman = {
	_unit = _this select 0;
	_number = 0;
	
	switch _number do {
		case 0: {_unit setUnitLoadout [["rhs_weap_hk416d10","","rhsusf_acc_anpeq15_bk","rhsusf_acc_eotech_552",["rhs_mag_30Rnd_556x45_Mk262_Stanag",30],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_g3_rgr",[["ACE_microDAGR",1],["ACE_NVG_Gen2",1],["rhsusf_mag_15Rnd_9x19_JHP",2,15]]],["V_TacChestrig_oli_F", [["30Rnd_556x45_Stanag_Tracer_Red",10,30],["rhs_mag_30Rnd_556x45_Mk262_Stanag",6,30]]],["B_ViperLightHarness_oli_F",[["ACE_fieldDressing",10],["ACE_CableTie",3],["ACE_epinephrine",3],["ACE_morphine",4],["ACE_DefusalKit",1],["ACE_Flashlight_MX991",1],["rhs_mag_m67",3,1],["rhs_mag_an_m8hc",3,1],["rhs_mag_m18_purple",2,1]]],"rhsusf_opscore_fg","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","tf_anprc148jem","ItemCompass","ItemWatch",""]];};
		case 1: {_unit setUnitLoadout [];};
		case 2: {_unit setUnitLoadout [];};
		case 3: {_unit setUnitLoadout [];};
		case 4: {_unit setUnitLoadout [];};
		case 5: {_unit setUnitLoadout [];};
		default {diag_log format ["%1 has no number of gear selected for role: Rifleman", str name vehicle player];};
	};
};

_gearEngineer = {
	_unit = _this select 0;
	_number = selectRandom [0,1,2,3,4,5];
	
	switch _number do {
		case 0: {_unit setUnitLoadout [];};
		case 1: {_unit setUnitLoadout [];};
		case 2: {_unit setUnitLoadout [];};
		case 3: {_unit setUnitLoadout [];};
		case 4: {_unit setUnitLoadout [];};
		case 5: {_unit setUnitLoadout [];};
		default {diag_log format ["%1 has no number of gear selected for role: Engineer", str name vehicle player];};
	};
};



_gearSniper = {
	_unit = _this select 0;
	_number = selectRandom [0,1,2,3,4,5];
	
	switch _number do {
		case 0: {_unit setUnitLoadout [];};
		case 1: {_unit setUnitLoadout [];};
		case 2: {_unit setUnitLoadout [];};
		case 3: {_unit setUnitLoadout [];};
		case 4: {_unit setUnitLoadout [];};
		case 5: {_unit setUnitLoadout [];};
		default {diag_log format ["%1 has no number of gear selected for role: Sniper", str name vehicle player];};
	};
};

_gearMG = {
	_unit = _this select 0;
	//_number = selectRandom [0,1,2,3,4,5];
	_number = 0;
	switch _number do {
		case 0: {_unit setUnitLoadout [["rhs_weap_m249_pip_L_para","","","rhsusf_acc_eotech_552",["rhs_200rnd_556x45_T_SAW",200],[],""],[],["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],["rhs_uniform_g3_rgr",[["ACE_microDAGR",1],["ACE_NVG_Gen2",1],["ACE_DefusalKit",1],["rhsusf_mag_15Rnd_9x19_JHP",2,15]]],["V_TacChestrig_grn_F",[["rhs_200rnd_556x45_T_SAW",1,200],["rhs_200rnd_556x45_T_SAW",1,200]]],["B_ViperLightHarness_oli_F",[["ACE_fieldDressing",8],["ACE_CableTie",3],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_Flashlight_MX991",1],["rhs_mag_m67",1,1],["rhs_200rnd_556x45_T_SAW",3,200],["rhs_mag_an_m8hc",3,1],["rhs_mag_m18_purple",2,1]]],"rhsusf_opscore_fg_pelt_cam","",""],["Binocular","","","",[],[],""],["ItemMap","ItemGPS","tf_anprc148jem","ItemCompass","ItemWatch",""]];};
		case 1: {_unit setUnitLoadout [];};
		case 2: {_unit setUnitLoadout [];};
		case 3: {_unit setUnitLoadout [];};
		case 4: {_unit setUnitLoadout [];};
		case 5: {_unit setUnitLoadout [];};
		default {diag_log format ["%1 has no number of gear selected for role: MG", str name vehicle player];};
	};
};

gear_basic = {
	_unit = _this select 0;
	_role = = selectRandom ["Rifleman","Rifleman","Rifleman","Rifleman","Rifleman","TL","Medic","MG"]; //"Engineer","Sniper",

	switch _role do {
		case "Rifleman": {hint "Rifleman"; [_unit] call _gearRifleman;};
		case "Engineer": {hint "Engineer"; [_unit] call _gearEngineer;};
		case "TL": {hint "TL"; [_unit] call _gearTL;};
		case "Medic": {hint "Medic"; [_unit] call _gearMedic;};
		case "Sniper": {hint "Sniper"; [_unit] call _gearSniper;};
		case "MG": {hint "MG"; [_unit] call _gearMG;};
		default {diag_log format ["%1 has no Class selected", str name vehicle player];};
	};
};


	
	
