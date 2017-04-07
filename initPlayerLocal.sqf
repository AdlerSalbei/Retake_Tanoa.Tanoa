["Retake Tanoa", "by Slant and Salbei ", "v1.0 ", "Loading Player ..."] call rt_fnc_missionIntro; 
[player] call rt_fnc_getPlayerFromDB;

if  (str player == "rebellion_lead") then {
	player addEventHandler ["TaskSetAsCurrent",{[[[_this], "function\server\fn_TaskSetAsCurrent.sqf"],"BIS_fnc_execVM",false,true ] call BIS_fnc_MP;}]; 
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

	
