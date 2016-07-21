_unit =((_this select 0) select 0);

//dummy
_var0 = ((_this select 0) select 1);
_var1 = ((_this select 1) select 1);
_var2 = ((_this select 2) select 1);
_var3 = ((_this select 3) select 1);
_var4 = ((_this select 4) select 1);
diag_log format ["EH: Var0: %5, Var1: %1, Var2: %2, Var3: %3, Var4: %4", _var1, _var2, _var3, _var4, _var0];


// Extract the ID from the task
_strTask = str ((_this select 0) select 1);
_strArray = _strTask splitString "(";
_strArray1 = (_strArray select 1) splitString ")";
_task = _strArray1 select 0;
diag_log format ["EH: %1 = strTask, %2 = strArray, %3 = strArray1, %4 = task", _strTask, _strArray, _strArray1, _task];

if  (_unit != leader player) exitWith {diag_log format ["Player %1 not the Unit Leader!", _unit];};
diag_log format ["EH: %1 = Unit, %2 = Task, %3 = Leader", _unit, _task, leader player];

// get _maxTasks from the Params in the discription.ext and _taskId using the BIS_fnc_taskCurrent 
_maxTasks = "Simultaneous_tasks" call BIS_fnc_getParamValue;;
_taskId = [_unit] call BIS_fnc_taskCurrent;
diag_log format ["EH: %1 = ID, %2 = maxTasks", _taskId, _maxTasks];

// count the entrys in the Array
_count = count runningTasksArray;
diag_log format ["EH: %1 = Count", _count];

// Check if the Task has allready been triggert
_index = runningTasksArray pushBackUnique _task;
diag_log format ["EH: %1 = Index", _index];
 if (_index != -1) then {
	diag_log format ["EH: %1 = count, %2 = maxTasks, %3 = Index", _count, _maxTasks, _index];
	// Check if the max amount of tasks have been triggert
	if (_count > _maxTasks) then {runningTasksArray deleteAt 0;};
	[_task] execVM "server\Missons.sqf";
 };
