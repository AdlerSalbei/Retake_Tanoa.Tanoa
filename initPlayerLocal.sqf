["Retake Tanoa", "by Slant and Salbei ", "v1.0 ", "Loading Player ..."] execVM "helpers\missionIntro.sqf";

if  (str player == "rebellion_lead") then {
  [] execVM "helpers\setUpLeader.sqf"; 
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

[player] execVM "DB\Load\getPlayerFromDB.sqf"; 
[] execVM "helpers\getBoxRespawnPos.sqf"; 


diag_log format ["setup: loadout %1 initiated", str name vehicle player];	
