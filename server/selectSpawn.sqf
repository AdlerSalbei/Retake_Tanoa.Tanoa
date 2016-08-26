taskID1 = {
	diag_log format ["Succesfully triggert Task1"];
	_pos = [3620.2302,100.65702,12337.04];
	_name = "Test Respawn Pos";
	[_pos, _name] execVM "helpers\addRespawnPosition.sqf";
	_unitsArray = [];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID2 = {
	diag_log format ["Succesfully triggert Task2"];
	_unitsArray = [];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID3 = {
	diag_log format ["Succesfully triggert Task3"];
	_unitsArray = [];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID4 = {
	diag_log format ["Succesfully triggert Task4"];
	_unitsArray = [];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID5 = {
	diag_log format ["Succesfully triggert Task5"];
	_unitsArray = [];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskSelector = {
	_this params ["_taskID"];

	switch _taskID do {
	case "1": {[] call taskID1};
	case "2": {[] call taskID2};
	case "3": {[] call taskID3};
	case "4": {[] call taskID4};
	case "5": {[] call taskID5};
	default {diag_log format ["Has no task ID"]};
	};
};

SPAWNSETUPDONE = true;
publicVariable "SPAWNSETUPDONE";
