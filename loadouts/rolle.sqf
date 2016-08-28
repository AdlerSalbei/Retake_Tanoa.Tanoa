gearSniper = {
	this = _this select 0;
	hint format ["All hail me, I rule here as Sniper"];
	this addItemToBackpack "ACE_RangeCard";
	this addItemToBackpack "ACE_SpottingScope";
	this addItemToBackpack "ACE_Tripod";
	this addItemToBackpack "ACE_MapTools";
	this addItemToBackpack "ACE_Kestrel4500";
	this addItemToBackpack "ACE_ATragMX";
	this addWeapon "ACE_Yardage450";
};


gearMedic = {
	this = _this select 0;
	hint format ["I'm a fucking Medic, I'm the one who saves the mission!"];
	[this, "ACE_fieldDressing", 20] call addMagazinesToBackpack;
	[this, "ACE_elasticBandage", 20] call addMagazinesToBackpack;
	[this, "ACE_quikclot", 20] call addMagazinesToBackpack;
	[this, "ACE_packingBandage", 20] call addMagazinesToBackpack;
	[this, "ACE_salineIV_250", 5] call addMagazinesToBackpack;
	[this, "ACE_Morphine", 10] call addMagazinesToBackpack;
	[this, "ACE_epinephrine", 10] call addMagazinesToBackpack;
	[this, "ACE_atropine", 10] call addMagazinesToBackpack;
	[this, "ACE_tourniquet", 5] call addMagazinesToBackpack;
	[this, "ACE_surgicalKit", 1] call addMagazinesToVest;
	[this, "ACE_personalAidKit", 1] call addMagazinesToVest;
	this setVariable ["Ace_medical_medicClass", 1];
};

gearTL = {
	this = _this select 0;
	[this, "ACE_MapTools", 1] call addMagazinesToVest;
};
gearEngineer = {
	this = _this select 0;
	[this, "ACE_Clacker", 1] call addMagazinesToBackpack;
	[this, "ACE_DefusalKit", 1] call addMagazinesToBackpack;
	[this, "ACE_VMH3", 1] call addMagazinesToBackpack;
	this addItemToUniform "ACE_EntrenchingTool";
};
