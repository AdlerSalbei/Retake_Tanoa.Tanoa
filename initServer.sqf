private ["_date", "_weather"];

["Initialize"] call BIS_fnc_dynamicGroups;

_value = profileNamespace getVariable ["SLB_Retake_Tanoa_Time_Weather", [[2015, 2, 2, 12, 1],0]];
_value params ["_date", "_weather"];

setDate _date;
setCustomWeather = {
	skipTime -24;
	0 setOvercast _weather;
	setViewDistance 5000;
	skipTime 24;
};

slb_allSpawnedVehicles_save = profileNamespace getVariable ["SLB_Retake_Tanoa_spawnedVehicles", []];



if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] execVM "helpers\tfarsettings.sqf";};
[] execVM "helpers\medical_settings.sqf";
[] execVM "DB\Load\getVehiclesFromDB.sqf";
[] execVM "DB\Load\getTaskState.sqf";
[] execVM "DB\Save\saveVehiclesArray.sqf";
[] execVM "initEVehCaching.sqf";

diag_log format ["Setup: Server done"];
