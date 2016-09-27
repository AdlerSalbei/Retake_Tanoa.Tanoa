_unit = _this select 0;

waitUntil {!isNil "SPAWNSETUPDONE"};

_maxTasks = "Simultaneous_task" call BIS_fnc_getParamValue;
if (_maxTasks == 0) then {_maxTasks = 1};

_taskID = [_unit] call BIS_fnc_taskCurrent;

_count = count slb_runningTasksArray;
diag_log format ["EH: Count %1, MaxTasks %2", _count, _maxTasks];
if (_count >= _maxTasks) then {

	_groupArray = slb_SpawnedUnitsArray select 0;
	if (!isNil _groupArray) then {
		diag_log format ["EH: GroupArray %1", _groupArray];
		{
			deleteVehicle _x;
		} forEach units group _groupArray;

		slb_SpawnedUnitsArray deleteAt 0;
		slb_runningTasksArray deleteAt 0;
	};
};

_index = slb_runningTasksArray pushBackUnique _taskID;
diag_log format ["EH: Tasks %1", slb_runningTasksArray];
if (_index != -1) then {
	[] call compile format ["taskID%1", _taskID];
} else {
	diag_log format ["EH: Task(ID: %1) allready running", _taskID];
};
