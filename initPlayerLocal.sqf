runningTasksArray = [];
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
player addEventHandler ["TaskSetAsCurrent",{[_this] execVM "helpers\EH_TaskSetAsCurrent.sqf"}];
[player] execVM "DB\getPlayerFromDB.sqf";  
diag_log format ["setup: loadout %1 initiated",player];	
