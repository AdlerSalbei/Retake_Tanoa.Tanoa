private ["_date", "_weather"];

call compile preprocessFile "server\selectSpawn.sqf";
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

if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] execVM "helpers\settings\tfarsettings.sqf";};
[] execVM "helpers\settings\medical_settings.sqf";
[] execVM "DB\Load\getVehiclesFromDB.sqf";
[] execVM "DB\Load\getTaskState.sqf";
[] execVM "DB\Save\saveVehiclesArray.sqf";

//To exclude an object use:
//obj setVariable ["f_cacheExcl",true,true];

//Settings:
f_param_debugMode = 0;       //caching debug mode - 0: off, 1: on
f_param_caching = 800;       //range in m at which vehicles are cached
f_var_cacheSleep = 10;      //sleep time between two tracking cycles
_startDelay = 30;           //time in s after mission start at which caching is initialized

//Spawn actual init
[_startDelay] spawn f_fnc_cInit;

diag_log format ["Setup: Server done"];
