waitUntil {!isNil "SPAWNSETUPDONE"};
diag_log format ["EH: Made it to EH_TaskSetAsCurrent.sqf"];

//get the max number of tasks that are allowed to run simultaneously
_maxTasks = "Simultaneous_task" call BIS_fnc_getParamValue;
diag_log format ["EH: MaxTasks: %1", _maxTasks];

//for Editor
if (_maxTasks == 0) then {_maxTasks = 1};

//get the current taskid of the assigned task
_taskID = [player] call BIS_fnc_taskCurrent;
diag_log format ["EH: MaxTasks: %1", _maxTasks];

//count the number of running tasks 
_count = count slb_runningTasksArray;
diag_log format ["EH: Count %1", _count];

//check if there are the same amount or more tasks running
if (_count >= _maxTasks) then {

	//if yes, delete the first started + all of it's units
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

//Check if the task is allready running
_index = slb_runningTasksArray pushBackUnique _taskID;
diag_log format ["EH: Index %1", _index];

//if it is not running, spawn it. Else do nothing.
if (_index != -1) then {
	diag_log format ["EH: Made it to spawn task, spawning number %1 now.", _taskID];
	[] call (missionNamespace getVariable [format ["taskID%1", _taskID],"taskID0"]);
} else {
	diag_log format ["EH: Task(ID: %1) allready running!", _taskID];
};
