private ["_date", "_weather"];

["Initialize"] call BIS_fnc_dynamicGroups;
RT_ID_MISSION = 0;
call compile preprocessfile "node_modules\shk_pos\functions\shk_pos_init.sqf";

_value = profileNamespace getVariable ["SLB_Retake_Tanoa_Time_Weather", [[2015, 2, 2, 12, 1],0]];
_value params ["_date", "_weather"];

setDate _date;
setCustomWeather = {
	skipTime -24;
	0 setOvercast _weather;
	setViewDistance 5000;
	skipTime 24;
};

if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] call rt_fnc_tfarsettings;};
[] call rt_fnc_medical_settings;
[] call rt_fnc_getVehiclesFromDB;

diag_log format ["Setup: Server done"];
