
//when headless param is set, then
if (("HC_enabled" call BIS_fnc_getParamValue) == 1) then {
	// Werthles Headless Script Parameters v2.3
	// 1. Repeating - true/Once - false,
	// 2. Time between repeats (seconds),
	// 3. Debug available for all - true/Just available for admin/host - false,
	// 4. Advanced balancing - true/Simple balancing - false,
	// 5. Delay before executing (seconds),
	// 6. Additional syncing time between groups transferred to try to reduce bad unit transfer caused by desyncs (seconds)
	// 7. Display an initial setup report after the first cycle, showing the number of units moved to HCs,
	// 8. Addition phrases to look for when checking whether to ignore.
	// Unit names, group names, unit's current transport vehicle, modules synced to units and unit class names will all be checked for these phrases
	// Format:
	// ["UnitName","GroupCallsignName","SupportProviderModule1","TypeOfUnit"]
	// E.g. ["BLUE1","AlphaSquad","B_Heli_Transport_01_camo_F"] (including ""s)
	// Specifying "B_Heli" would stop all units with that class type from transferring to HCs
	// However, if you specify "BLUE1", "NAVYBLUE10" will also be ignored
	[true,30,false,true,30,3,true,[]] execVM "headless\WerthlesHeadless.sqf";
};

	["Initialize"] call BIS_fnc_dynamicGroups;

	// set to full moon date
	setDate [2015, 2, 2, TIME_OF_DAY, 1];
	// set time acceleration
	setTimeMultiplier TIME_ACCELERATION;

	if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] execVM "helpers\tfarsettings.sqf";};
 	[] execVM "helpers\medical_settings.sqf";
diag_log format ["setup: server done"];