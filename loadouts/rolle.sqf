gearSniper = { 
	this = _this select 0;
	hint format ["All hail me, I rule here as Sniper"];
	[this, "ACE_RangeCard", 1] call addItemsToBackpack;
	[this, "ACE_SpottingScope", 1] call addItemsToBackpack;
	[this, "ACE_Tripod", 1] call addItemsToBackpack;
	[this, "ACE_MapTools", 1] call addItemsToBackpack;
	[this, "ACE_Kestrel4500", 1] call addItemsToBackpack;
	[this, "ACE_ATragMX", 1] call addItemsToBackpack;
	this addWeapon "ACE_Yardage450";
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
	this setVariable ["Ace_medical_medicClass", 1];
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
	this addItemToUniform "ACE_EntrenchingTool";
};
