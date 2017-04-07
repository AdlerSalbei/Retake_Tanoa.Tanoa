private ["_date", "_weather"];

slb_runningTasksArray = []; 
slb_SpawnedUnitsArray = [];
waituntil {!isNil "slb_allSpawnedVehicles_save"};
slb_allSpawnedVehicles = slb_allSpawnedVehicles_save;

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

if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] call rt_fnc_tfarsettings;};
[] call rt_fnc_medical_settings;
[] call rt_fnc_getVehiclesFromDB;
[] call rt_fnc_getTaskState;
[] call rt_fnc_saveVehiclesArray;

diag_log format ["Setup: Server done"];
