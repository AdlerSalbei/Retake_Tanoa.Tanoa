_unit =((_this select 0) select 0);

if  (str _unit != "Commander") exitWith {diag_log format ["Player %1 not the Unit Leader!", _unit];};

call compile preprocessFile "server\spawnHandler.sqf";
call compile preprocessFile "server\selectSpawn.sqf.sqf";
waitUntil {!isNil "SPAWNSETUPDONE"};

_maxTasks = "Simultaneous_task" call BIS_fnc_getParamValue;
_taskID = [_unit] call BIS_fnc_taskCurrent;

_count = count slb_runningTasksArray;	
if (_count >= _maxTasks) then { 
	
	_groupArray = slb_SpawnedUnitsArray select 0;
	{
		deleteVehicle _x;
	} forEach units group _groupArray;
	
	slb_SpawnedUnitsArray deleteAt 0;
	slb_runningTasksArray deleteAt 0;
};

_index = slb_runningTasksArray pushBackUnique _taskID;
if (_index != -1) then {
	[_taskID] call taskSelector;
} else {
	diag_log format ["EH: Task(ID: %1) allready running", _taskID];
};
