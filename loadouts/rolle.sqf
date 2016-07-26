gearAA = {
	this = _this select 0;
	hint format ["I rule the airspace! I'm the god of AA's!"];
	_myAALauncher = selectRandom ["rhs_weapon_igla", "rhs_weapon_fim92"];
	
	this addWeapon _myAALauncher;
	
	if (_myAALauncher == "rhs_weapon_igla") then {
	[this, "rhs_mag_9k38_rocket", 3] call addMagazinesToBackpack;
  } else {
	[this, "Rhs_mag_4Rnd_stinger", 3] call addMagazinesToBackpack;
  };	
};

gearAT = {
	this = _this select 0;
	hint format [];
	_myATLauncher = selectRandom [ "rhs_weapon_rpg7", "rhs_weap_smaw"];
	
	this addWeapon _myATLauncher;
	
	switch _myATLauncher do {
		case "rhs_weapon_rpg7": {[this, "rhs_rpg7_PG7VL_mag", 3] call addMagazinesToBackpack;};
		case "rhs_weap_smaw": {[this, "rhs_mag_smaw_HEAA", 3] call addMagazinesToBackpack; for "_i" from 1 to 5 do {this addItemToBackpack "rhs_mag_smaw_SR";};};
	};
};

gearSniper = { 
	this = _this select 0;
	hint format ["All hail me, I rule here as Sniper"];
	[this, "ACE_RangeCard", 1] call addItemsToBackpack;
	[this, "ACE_SpottingScope", 1] call addItemsToBackpack;
	[this, "ACE_Tripod", 1] call addItemsToBackpack;
	[this, "ACE_MapTools", 1] call addItemsToBackpack;
	[this, "ACE_Kestrel4500", 1] call addItemsToBackpack;
	[this, "ACE_ATragMX", 1] call addItemsToBackpack;
	this addWeapon "ACE_Yardage450"
};


gearMedic = {
	this = _this select 0;
	hint format ["I'm a fucking Medic, I'm the one who saves the mission!"];
	[this, "ACE_fieldDressing", 20] call addItemsToBackpack;
	[this, "ACE_elasticBandage", 20] call addItemsToBackpack;
	[this, "ACE_quikclot", 20] call addItemsToBackpack;
	[this, "ACE_packingBandage", 20] call addItemsToBackpack;	
	[this, "ACE_salineIV_250", 5] call addItemsToBackpack;
	[this, "ACE_Morphine", 10] call addItemsToBackpack;
	[this, "ACE_epinephrine", 10] call addItemsToBackpack;
	[this, "ACE_atropine", 10] call addItemsToBackpack;
	[this, "ACE_tourniquet", 5] call addItemsToBackpack;
	[this, "ACE_surgicalKit", 1] call addMagazinesToVest;
	[this, "ACE_personalAidKit", 1] call addMagazinesToVest;
	this setVariable [""ace_medical_medicClass"",1,true];
};

gearTL = {
	this = _this select 0;
	[this, "ACE_MapTools", 1] call addMagazinesToVest;
};
gearEngineer = {
	this = _this select 0;
	[this, "ACE_Clacker", 1] call addItemsToBackpack;
	[this, "ACE_DefusalKit", 1] call addItemsToBackpack;
	[this, "ACE_VMH3", 1] call addItemsToBackpack;
};
