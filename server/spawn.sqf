taskID1 = {
	diag_log format ["Succesfully triggert Task1"];
	_myRespawn = [west,[7223.4692,2.6600001,7024.332],"Created on Task1"] call BIS_fnc_addRespawnPosition;
};

taskID2 = {
	diag_log format ["Succesfully triggert Task2"];
};

taskID3 = {
	diag_log format ["Succesfully triggert Task3"];
};

taskID4 = {
	diag_log format ["Succesfully triggert Task4"];
};

taskID5 = {
	diag_log format ["Succesfully triggert Task5"];
};

taskSelector = {
	diag_log format ["this: %1", _this];
	switch _this do {
	case "1": {[] call taskID1};
	case "2": {[] call taskID2};
	case "3": {[] call taskID3};
	case "4": {[] call taskID4};
	case "5": {[] call taskID5};
	default {diag_log format ["Has no Class selected"]};
	};
};

SPAWNSETUPDONE = true;
publicVariable "SPAWNSETUPDONE";
