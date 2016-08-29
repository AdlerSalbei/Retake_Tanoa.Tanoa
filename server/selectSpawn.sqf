taskID1 = {
	diag_log format ["Succesfully triggert Task1"];
	 _pos = [2779.55,2530.59,0.00271606];
	_name = "Test Respawn Pos";
	[_pos, _name] execVM "helpers\addRespawnPosition.sqf";
	_unitsArray = [];
	_vehicleArray = [["B_Heli_Transport_03_F",[6889.71,7390.21,0.00143886], 42.877],["B_T_VTOL_01_armed_olive_F",[6962.8,7363.69,0.00143886],170.327]];
	[_unitsArray, _vehicleArray] call slb_Mission_spawn;
};

taskID2 = {
	diag_log format ["Succesfully triggert Task2"];
	//_unitsArray = [];
	//_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID3 = {
	diag_log format ["Succesfully triggert Task3"];
	//_unitsArray = [];
	//_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID4 = {
	diag_log format ["Succesfully triggert Task4"];
	//_unitsArray = [];
	//_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID5 = {
	diag_log format ["Succesfully triggert Task5"];
	//_unitsArray = [];
	//_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
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
