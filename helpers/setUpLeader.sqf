diag_log format ["Setting up Leader."];
call compile preprocessFile "server\spawnHandler.sqf";
call compile preprocessFile "server\selectSpawn.sqf";
slb_runningTasksArray = []; 
slb_SpawnedUnitsArray = [];
player addEventHandler ["TaskSetAsCurrent",{[_this] execVM "helpers\EH_TaskSetAsCurrent.sqf"}];
waituntil {!isNil "slb_allSpawnedVehicles_save"};
slb_allSpawnedVehicles = slb_allSpawnedVehicles_save;