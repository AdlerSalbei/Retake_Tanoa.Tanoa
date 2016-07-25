_unit =((_this select 0) select 0);

if  (_unit != leader player) exitWith {diag_log format ["Player %1 not the Unit Leader!", _unit];};

call compile preprocessFile "server\spawn.sqf";
waitUntil {!isNil "SPAWNSETUPDONE"};

_maxTasks = "Simultaneous_taskIDs" call BIS_fnc_getParamValue;
_taskID = [_unit] call BIS_fnc_taskIDCurrent;
_count = count runningTasksArray;	// count the entrys in the Array
_index = runningTasksArray pushBackUnique _taskID;	// Check if the Task has allready been triggert

 if (_index != -1) then {
	if (_count > _maxTasks) then {runningTasksArray deleteAt 0;};	// Check if the max amount of tasks have been triggert
	[_taskID] call taskSelector;
 } else {diag_log format ["EH: Task(ID: %1) allready running", _taskIDID];};
