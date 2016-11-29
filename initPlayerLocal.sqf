["Retake Tanoa", "by Slant and Salbei ", "v1.0 ", "Loading Player ..."] execVM "helpers\missionIntro.sqf";
[] execVM "helpers\getBoxRespawnPos.sqf"; 
[player] execVM "DB\Load\getPlayerFromDB.sqf";

if  (str player == "rebellion_lead") then {
	player addEventHandler ["TaskSetAsCurrent",{[[[_this], "server\EH_TaskSetAsCurrent.sqf"],"BIS_fnc_execVM",false,true ] call BIS_fnc_MP;}]; 
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

	
