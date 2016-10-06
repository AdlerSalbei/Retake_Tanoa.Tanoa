if  (str player == "rebellion_lead") then {
  call compile preprocessFile "server\spawnHandler.sqf";
  call compile preprocessFile "server\selectSpawn.sqf";
  slb_runningTasksArray = []; 
  slb_SpawnedUnitsArray = []; 
  player addEventHandler ["TaskSetAsCurrent",{[_this] execVM "helpers\EH_TaskSetAsCurrent.sqf"}];
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

[player] execVM "DB\Load\getPlayerFromDB.sqf"; 
[] execVM "helpers\getBoxRespawnPos.sqf"; 


diag_log format ["setup: loadout %1 initiated", str player];	
