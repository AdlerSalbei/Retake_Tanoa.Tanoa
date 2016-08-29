if  (str player == "rebellion_lead") then {
  slb_runningTasksArray = []; 
  slb_SpawnedUnitsArray = []; 
  player addEventHandler ["TaskSetAsCurrent",{[_this] execVM "helpers\EH_TaskSetAsCurrent.sqf"}];
};
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[player] execVM "DB\getPlayerFromDB.sqf";  
diag_log format ["setup: loadout %1 initiated", str player];	
